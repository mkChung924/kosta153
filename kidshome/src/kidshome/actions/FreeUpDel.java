package kidshome.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.Free_Board;
import kidshome.model.KidshomeDAO;


public class FreeUpDel extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		ActionForward forward = null;
		KidshomeDAO dao = new KidshomeDAO();
		Free_Board dto;
		String action = request.getParameter("action");
		int no = 0;
		
		if (action.equals("call")) {
			no = Integer.parseInt(request.getParameter("no"));

			dto = dao.selectFree(no);

			request.setAttribute("dto", dto);

			forward = mapping.findForward("success");
			
		}else if(action.equals("updateGet")){
			no = Integer.parseInt(request.getParameter("no"));
			dto = new Free_Board();
			
			dto = dao.selectFree(no);
			
			request.setAttribute("dto", dto);
			
			forward= mapping.findForward("update");
			
			
		}else if (action.equals("update")){
			no = Integer.parseInt(request.getParameter("no"));
			
			Free_Board nb = new Free_Board();
			nb.setNo(no);
			nb.setFree_title(request.getParameter("free_title"));
			nb.setFree_content(request.getParameter("free_content"));
			
			
			//dao.update(nb);

			//System.out.println("����? ����? : "+dao.update(nb));
			if(dao.updateFree(nb)){
				forward= mapping.findForward("updateSuccess");
				System.out.println("���� ����?");
			}else{
				forward = mapping.getInputForward();
			}
		}else if(action.equals("delete")){
			no = Integer.parseInt(request.getParameter("no"));
			
			
			if(dao.deleteFree(no)){
				forward=mapping.findForward("deleteSuccess");
			}else{
				forward=mapping.getInputForward();
			}
			
		}
		return forward;
	}
} // class
