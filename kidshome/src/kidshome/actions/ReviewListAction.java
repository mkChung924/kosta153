package kidshome.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;
import kidshome.model.Review_Board;


public class ReviewListAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String action = request.getParameter("action");
		
		ActionForward forward = null;

		if (action == null || action.equals("board")) {
			 String pageStr = request.getParameter("page"); 
			   
			  int page;
			  if(pageStr==null || pageStr.equals("")){
				  page=1;
			  }else{
			      page= Integer.parseInt(pageStr);
			  }
			
			KidshomeDAO dao = new KidshomeDAO();
			 int recordCount=30;
			  int totalRecord= dao.selectReviewCount();
			  int totalPage=totalRecord/recordCount;
			  if(totalRecord%recordCount>0){
				  totalPage++;
			  }
			
			List<Review_Board> list = dao.selectAllReview(page, recordCount);

			request.setAttribute("list", list);	
			request.setAttribute("page", page);
			request.setAttribute("totalPage", totalPage);


			forward = mapping.findForward("success");
					
		}
			return forward;
	}

}
