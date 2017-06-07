package kidshome.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;
import kidshome.model.Review_Board;


public class ReviewUpDel extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		ActionForward forward = null;
		KidshomeDAO dao = new KidshomeDAO();
		Review_Board dto;
		String action = request.getParameter("action");
		int no = 0;
		
		if (action.equals("call")) {
			no = Integer.parseInt(request.getParameter("no"));

			dto = dao.selectReview(no);

			request.setAttribute("dto", dto);

			forward = mapping.findForward("success");
			
		}else if(action.equals("updateGet")){
			no = Integer.parseInt(request.getParameter("no"));
			
			dto = new Review_Board();
			
			dto = dao.selectReview(no);
			
			request.setAttribute("dto", dto);
			
			forward= mapping.findForward("update");
			
			
		}else if (action.equals("update")){
			no = Integer.parseInt(request.getParameter("no"));
			
			Review_Board nb = new Review_Board();
			nb.setNo(no);
			nb.setReview_title(request.getParameter("review_title"));
			nb.setReview_content(request.getParameter("review_content"));
			
			//dao.update(nb);

			//System.out.println("����? ����? : "+dao.updateReview(nb));
			if(dao.updateReview(nb)){
				forward= mapping.findForward("updateSuccess");
				//System.out.println("���� ����?");
			}else{
				forward = mapping.getInputForward();
			}
		}else if(action.equals("delete")){
			no = Integer.parseInt(request.getParameter("no"));
			
			
			if(dao.deleteReview(no)){
				forward=mapping.findForward("deleteSuccess");
			}else{
				forward=mapping.getInputForward();
			}
			
		}
		return forward;
	}
} // class
