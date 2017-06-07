package kidshome.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;
import kidshome.model.Notice_Board;


public class NoticeUpDel extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		ActionForward forward = null;
		KidshomeDAO dao = new KidshomeDAO();
		Notice_Board dto;
		String action = request.getParameter("action");
		int no = 0;
		
		if (action.equals("call")) {
			no = Integer.parseInt(request.getParameter("no"));

			dto = dao.selectBoard(no);

			request.setAttribute("dto", dto);

			forward = mapping.findForward("success");
			
		}else if(action.equals("updateGet")){
			no = Integer.parseInt(request.getParameter("no"));
			dto = new Notice_Board();
			
			dto = dao.selectBoard(no);
			
			request.setAttribute("dto", dto);
			
			forward= mapping.findForward("update");
			
			
		}else if (action.equals("update")){
			no = Integer.parseInt(request.getParameter("no"));
			
			Notice_Board nb = new Notice_Board();
			nb.setNo(no);
			nb.setNotice_title(request.getParameter("notice_title"));
			nb.setNotice_content(request.getParameter("notice_content"));
			
			//dao.update(nb);

			//System.out.println("����? ����? : "+dao.update(nb));
			if(dao.updateBoard(nb)){
				forward= mapping.findForward("updateSuccess");
				//System.out.println("���� ����?");
			}else{
				forward = mapping.getInputForward();
			}
		}else if(action.equals("delete")){
			no = Integer.parseInt(request.getParameter("no"));
			
			
			if(dao.deleteBoard(no)){
				forward=mapping.findForward("deleteSuccess");
			}else{
				forward=mapping.getInputForward();
			}
			
		}
		return forward;
	}
} // class
