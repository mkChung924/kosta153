package kidshome.actions;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;

public class UpdateAuthAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		KidshomeDAO dao = new KidshomeDAO();
		
		String id = request.getParameter("id");
		int auth = Integer.parseInt(request.getParameter("auth"));
		ActionForward forward = null;
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("auth", auth);
		
		if(dao.updateAuth(map)){
			forward = mapping.findForward("success");
		}
		
		
		return forward;
	}
}
