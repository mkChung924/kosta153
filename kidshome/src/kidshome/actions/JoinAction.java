package kidshome.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;
import kidshome.model.ToyMembers;

public class JoinAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		System.out.println("execute()");
		String tel1 =  request.getParameter("tel1");
		String tel2 =  request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		String addr1= request.getParameter("addr1");
		String addr2= request.getParameter("addr2");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		
		String tel = tel1+"-"+tel2+"-"+tel3;
		String email = request.getParameter("email");
		String birth= year+"-"+month+"-"+day;
		String addr= addr1+"-"+addr2;
		String secure_code = request.getParameter("secure_code ");
		String secure_ans= request.getParameter("secure_ans");
		
		KidshomeDAO dao = new KidshomeDAO();
		
		ActionForward forward;
		if (dao.insert(new ToyMembers(id,pass,name,birth,addr,email,tel,secure_code,secure_ans))) {
			request.setAttribute("name", name);
			forward = mapping.findForward("toy_success");
		} else {
			forward = mapping.findForward("toy_fail");
		}

		return forward;
	}
	
}
