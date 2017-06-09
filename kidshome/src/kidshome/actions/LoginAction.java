package kidshome.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

import kidshome.forms.LoginActionForm;
import kidshome.model.KidshomeDAO;


public class LoginAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		// ActionForm
		LoginActionForm laf =  (LoginActionForm) form;
		String id = laf.getId();
		String pass = laf.getPass();

		KidshomeDAO dao = new KidshomeDAO();

		String mem =  dao.selectLogin(id, pass);

		ActionForward forward;
		ActionMessages msgs = new ActionMessages();
		if(mem.equals("idN")){	//
			msgs.add(ActionMessages.GLOBAL_MESSAGE,new ActionMessage("kids.id"));

			saveMessages(request,msgs);
			forward = mapping.getInputForward();
		}else if(mem.equals("passN")){
			msgs.add(ActionMessages.GLOBAL_MESSAGE,new ActionMessage("kids.pass"));

			saveMessages(request, msgs);
			forward = mapping.getInputForward();
			
		} else{
				int auth = dao.selectAuth(id);
				request.getSession().setAttribute("id", id);
				request.getSession().setAttribute("pass", pass);
				request.getSession().setAttribute("auth", auth);
				
				if(auth == 2){
					request.getSession().setAttribute("admin", auth);
				}
				
				if(auth == 0){
					request.getSession().setAttribute("user1", "준회원");
				} else if(auth == 1){
					request.getSession().setAttribute("user1", "정회원");
				}
				
				System.out.println(id);
				forward = mapping.findForward("success");
		}
		return forward;
	}
}
