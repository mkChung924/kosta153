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

import kidshome.forms.LoginActionForm;
import kidshome.model.KidshomeDAO;


public class LoginAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		// ActionForm���� �� ��������
		LoginActionForm laf =  (LoginActionForm) form;
		String id = laf.getId();
		String pass = laf.getPass();

		KidshomeDAO dao = new KidshomeDAO();

		// ȸ������ Ȯ��
		String mem =  dao.selectLogin(id, pass);

		ActionForward forward;
		ActionMessages msgs = new ActionMessages();
		if(mem.equals("idN")){	// ���̵� X
			msgs.add(ActionMessages.GLOBAL_MESSAGE,new ActionMessage("toy.id"));

			saveMessages(request,msgs);
			forward = mapping.getInputForward();	// ������ ������ ����
		}else if(mem.equals("passN")){
			msgs.add(ActionMessages.GLOBAL_MESSAGE,new ActionMessage("toy.pass"));

			saveMessages(request, msgs);
			forward = mapping.getInputForward();
		}else{
				request.getSession().setAttribute("id", id);
				forward = mapping.findForward("success");
		}
		return forward;
	}
}
