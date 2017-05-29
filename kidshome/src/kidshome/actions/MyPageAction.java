package kidshome.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class MyPageAction extends Action{
	
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		ActionForward forward;
		
		if(request.getSession().getAttribute("id") == null){
			System.out.println("out of session");
			forward = mapping.getInputForward();
		} else {
			System.out.println("in session");
			forward = mapping.findForward("success");
		}
		
		return forward;
	}

}
