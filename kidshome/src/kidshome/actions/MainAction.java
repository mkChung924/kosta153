package kidshome.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.Free_Board;
import kidshome.model.KidshomeDAO;
import kidshome.model.Notice_Board;
import kidshome.model.Review_Board;

public class MainAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		KidshomeDAO dao = new KidshomeDAO();
		
		List newToy = dao.selectNewToy();
		List popToy = dao.selectPopToy();
		List<Notice_Board> mainNotice = dao.selectMainNotice();
		List<Free_Board> mainFree = dao.selectMainFree();
		List<Review_Board> mainReview = dao.selectMainReview();
		
		System.out.println("최신장난감: " + newToy.size() + "개");
		System.out.println("인기장난감: "+popToy.size() + "개");
		System.out.println("공지사항: " + mainNotice.size() + "개");
		System.out.println("자유게시글: " + mainFree.size() + "개");
		System.out.println("후기게시글: " + mainReview.size() + "개");
		
//		for(int i = 0; i < newToy.size(); i++){
//			System.out.println(newToy.get(i));
//		}
		
		request.setAttribute("newToy", newToy);
		request.setAttribute("popToy", popToy);
		request.setAttribute("mainNotice", mainNotice);
		request.setAttribute("mainFree", mainFree);
		request.setAttribute("mainReview", mainReview);
			
		return mapping.findForward("success");
	}
}
