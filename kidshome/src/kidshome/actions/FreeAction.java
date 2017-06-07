package kidshome.actions;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.Free_Board;
import kidshome.model.KidshomeDAO;

public class FreeAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String action = request.getParameter("action");
		
		KidshomeDAO dao = new KidshomeDAO();
		ActionForward forward = null;

		if (action == null) {

			Free_Board dto = new Free_Board();
			
			dto.setFree_title(request.getParameter("free_title"));
			dto.setFree_content(request.getParameter("free_content"));
			dto.setUser_id((String)request.getSession().getAttribute("id"));

			if (dao.insertFree(dto)) {
				forward = mapping.findForward("success");
			} else {
				forward = mapping.getInputForward();
			}
		}
		return forward;
	}
}
