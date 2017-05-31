package kidshome.actions;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;
import kidshome.model.Toys;

public class ToyAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		KidshomeDAO dao = new KidshomeDAO();
		
		String pageStr = request.getParameter("page");
		int page;
		
		if(pageStr==null){
			page = 1;
		} else {
			page = Integer.parseInt(pageStr);
		}
		
		/*
		 * 한 페이지(한 화면)에 보여질 레코드 수: recordCount
		 * 전체 레코드 수: totalRecord
		 * 전체 페이지 수: totalPage
		 */
		int recordCount = 12;
		int totalRecord = dao.count();
		int totalPage = totalRecord/recordCount;
		if(totalRecord%recordCount > 0){
			totalPage++;
		}
		
		ArrayList<Toys> list = dao.selectPage(page, recordCount);
		
		request.setAttribute("toys", list);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("page", page);
		
//		List<Toys> toys = dao.selectToys();
//		System.out.println("toy 개수: " +toys.size());
//		for(int i = 0; i < toys.size(); i++){
//			System.out.println(toys.get(i).getNum() + "/" + toys.get(i).getToy_name());
//		}
//		request.setAttribute("toys", list);
		
		return mapping.findForward("success");
	}

}
