package kidshome.actions;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;
import kidshome.model.Review_Board;


public class ReviewAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String action = request.getParameter("action");
		
		ActionForward forward = null;

		if (action == null) {

			KidshomeDAO dao = new KidshomeDAO();
			Review_Board dto = new Review_Board();
			
			dto.setReview_title(request.getParameter("review_title"));
			dto.setReview_content(request.getParameter("review_content"));
			dto.setUser_id((String)request.getSession().getAttribute("id"));

			
			if (dao.insertReview(dto)) {
				forward = mapping.findForward("success");
			} else {
				forward = mapping.getInputForward();
			}
		}
		return forward;
	}
}
