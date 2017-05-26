package kidshome.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;

public class MainAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		KidshomeDAO dao = new KidshomeDAO();
		
		List newToy = dao.selectNewToy();
		List popToy = dao.selectPopToy();
		
		System.out.println(newToy.size());
		System.out.println(popToy.size());

		request.setAttribute("newToy", newToy);
		request.setAttribute("popToy", popToy);
		
		return mapping.findForward("success");
	}
}
