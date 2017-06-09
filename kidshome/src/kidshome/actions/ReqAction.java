package kidshome.actions;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kidshome.model.Give;
import kidshome.model.KidshomeDAO;
import kidshome.model.ReqToy;
import kidshome.model.Toys;

public class ReqAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8"); 
		String id = (String) request.getSession().getAttribute("id");
		

		String saveDir = "/Users/myungkyuchung/kidshome/kidshome/WebContent/upload";
		//System.out.println(request.getRealPath("/"));
		//System.out.println(saveDir);
		int maxSize = 5*1024*1024;//1kb - 1mb - 5mb
		MultipartRequest multipartRequest = new MultipartRequest(request,saveDir,maxSize,"utf-8", new DefaultFileRenamePolicy());
	
		KidshomeDAO dao = new KidshomeDAO();
				
		String action = multipartRequest.getParameter("action");
		//System.out.println(action);
		
		
		if(action.equals("give")){
		
			String toyname = multipartRequest.getParameter("toyname");
			String toydesc = multipartRequest.getParameter("toydesc");
			String image = multipartRequest.getFilesystemName("pic");
			String method = multipartRequest.getParameter("give");
			String postaddr = multipartRequest.getParameter("postaddr");
			//System.out.println(toyname);
			//System.out.println(method);
			
			Give give = new Give(id,toyname,toydesc,method,image,postaddr);
			
			if(dao.giveReq(give)){
				System.out.println("기부 신청 성공");
				request.setAttribute("option", "give");
			}
			
			
		} else if(action.equals("req")){
			
			String toyname = multipartRequest.getParameter("toyname");
			String toydesc = multipartRequest.getParameter("toydesc");
			String image = multipartRequest.getFilesystemName("pic");
			
			ReqToy reqToy = new ReqToy(id,toyname,toydesc,image);
			
			if(dao.reqToy(reqToy)){
				System.out.println("장난감 신청 성공");
				request.setAttribute("option", "req");
			}

		}

		return mapping.findForward("success");
	}
}
