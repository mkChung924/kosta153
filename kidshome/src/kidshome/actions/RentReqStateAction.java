package kidshome.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;

public class RentReqStateAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String action = request.getParameter("action");
		System.out.println("RentReqStateAction current action: "+action);
		
		KidshomeDAO dao = new KidshomeDAO();//3.
		ActionForward forward = null;
		String serial = "";
		
		switch(action){
		
		case "rent":
			
			serial = request.getParameter("serial");
			request.setAttribute("list",dao.selectRentState(serial));
			forward = mapping.findForward("success_rent");
			break;
			
		case "rentreq":
			serial = request.getParameter("serial");
			request.setAttribute("list",dao.selectRentReqState(serial));
			forward = mapping.findForward("success_req");
			break;
			
			default:break;
		}
		
		
		
		return forward;
		
	}
}
