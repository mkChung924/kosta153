package kidshome.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;

public class MyRentReqDeleteAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		KidshomeDAO dao = new KidshomeDAO();
		ActionForward forward = null;
		
		String no[] = request.getParameterValues("no");
		
		for(int i=0;i<no.length;i++){
			if(!dao.delRentReq(Integer.parseInt(no[i])))
				{
					break;
				}
		}
		forward = mapping.findForward("success");
		
		return forward;
		
	}

}
