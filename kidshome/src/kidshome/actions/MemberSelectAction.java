package kidshome.actions;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;
import kidshome.model.ToyMembers;


public class MemberSelectAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		KidshomeDAO dao = new KidshomeDAO();//3.
		
		ArrayList<ToyMembers> list = dao.selectAllMember();
		
		request.setAttribute("list",dao.selectAllMember());
		
		return mapping.findForward("success");//4

	}


}
