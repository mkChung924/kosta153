package kidshome.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;

public class ReqUpdateAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String action = request.getParameter("action");
		System.out.println(action);
		KidshomeDAO dao = new KidshomeDAO();
		ActionForward forward = null;
		
		switch(action){
		
		case "toyreq":
			
			String no = request.getParameter("no");
			if(dao.updateToyReq(Integer.parseInt(no))){
				forward = mapping.findForward("success");
			}
			
			break;
			
		case "givereq":
			
			String no3 = request.getParameter("no");
			if(dao.updateGiveReq(Integer.parseInt(no3))){
				forward = mapping.findForward("success");
			}
			
			break;
			
		case "toyreq_no":
			String no2 = request.getParameter("no");
			if(dao.updateToyReqNo(Integer.parseInt(no2))){
				forward = mapping.findForward("success");
			}
			
			break;
		}
		String no = request.getParameter("no");
		System.out.println(no);
		
		
		
		
		
		return forward;
	}
}
