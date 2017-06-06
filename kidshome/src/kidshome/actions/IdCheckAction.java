package kidshome.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

import kidshome.model.KidshomeDAO;

public class IdCheckAction extends Action{

		@Override
		public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
				HttpServletResponse response) throws Exception {
			
			ActionForward forward =null;
			String id = request.getParameter("idCheck");
			if(id==null)
				return mapping.getInputForward();
				
			KidshomeDAO dao = new KidshomeDAO();
			String checkId = dao.idCheck(id);
			
			ActionMessages msg = new ActionMessages();
			
			
			if(checkId != null && id.equals(checkId)){
				msg.add(ActionMessages.GLOBAL_MESSAGE,new ActionMessage("toy.IdCN"));
				saveMessages(request, msg);
				
				String idC = request.getParameter("idCheck");
				request.setAttribute("id", idC);
				request.setAttribute("available", "nok");
				
				forward = mapping.getInputForward();
				
			}else if(checkId == null && !(id.equals(checkId))){
				
			msg.add(ActionMessages.GLOBAL_MESSAGE,new ActionMessage("toy.IdCY"));	
			saveMessages(request, msg);
			request.setAttribute("available", "ok");
			
			forward = mapping.findForward("success");
			String idC = request.getParameter("idCheck");
			request.setAttribute("id", idC);
			}
			return forward;
		}
	
	
}	// class
