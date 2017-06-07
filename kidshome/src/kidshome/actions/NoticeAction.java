package kidshome.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;
import kidshome.model.Notice_Board;

public class NoticeAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String action = request.getParameter("action");
		
		ActionForward forward = null;
		KidshomeDAO dao = new KidshomeDAO();

		if (action == null) {

			Notice_Board dto = new Notice_Board();
			
			dto.setNotice_title(request.getParameter("notice_title"));
			dto.setNotice_content(request.getParameter("notice_content"));
			dto.setUser_id((String)request.getSession().getAttribute("id")); 

			if (dao.insertBoard(dto)) {
				forward = mapping.findForward("success");
			} else {
				forward = mapping.getInputForward();
			}
		}
		return forward;
	}
}
