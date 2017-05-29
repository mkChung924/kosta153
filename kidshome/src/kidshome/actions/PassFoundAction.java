package kidshome.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

import kidshome.model.KidshomeDAO;
import kidshome.model.ToyMembers;


public class PassFoundAction extends Action{
	String id;
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String action = request.getParameter("action");
		ActionForward forward = null;
		KidshomeDAO dao = new KidshomeDAO();
		List<ToyMembers> list;
		
		
		if(action == null || action.equals("found")){

			id = request.getParameter("id");
			
			list = dao.foundPass(id);
			
			
			if(list.size() == 0){
				forward = mapping.findForward("fail");
			}else if(list.size() != 0){
				
				request.getSession().setAttribute("list", list);
				
				forward= mapping.findForward("success");
			}
		}else if(action.equals("secure")){ 
			String anw = request.getParameter("anw");
			
			String anwC = dao.secureC(anw);
			
			ActionMessages msg = new ActionMessages();
			if(anwC == null || !(anw.equals(anwC))){
				msg.add(ActionMessages.GLOBAL_MESSAGE,new ActionMessage("kids.secure"));
				saveMessages(request, msg);
		
				forward = mapping.getInputForward();
				//forward = mapping.findForward("fail");
			}else if(anwC.equals(anw)){
				forward = mapping.findForward("update");
			}
		}else if(action.equals("passUpdate")){
			System.out.println("?");
			String pass = request.getParameter("pass1");
			
			ToyMembers mem = new ToyMembers();
			mem.setId(id);
			mem.setPass(pass);
	
			if(dao.passUpdate(mem)){
				request.getSession().invalidate();
				forward = mapping.findForward("success_passUpdate");
			}else{
				forward = mapping.findForward("update");
			}
		}	// passUpdate
		return forward;
	}
}	// class
