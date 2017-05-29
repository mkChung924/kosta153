package kidshome.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.w3c.dom.NamedNodeMap;

import kidshome.model.KidshomeDAO;
import kidshome.model.ToyMembers;


public class IdFoundAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		ActionForward forward=null;
		
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		
		
		ToyMembers user = new ToyMembers();	
		user.setName(name);
		user.setTel(tel);
		
		
		KidshomeDAO dao = new KidshomeDAO();
		String idFound = dao.foundId(user);
		
		 if(idFound == null){
			 System.out.println(idFound);
			 forward = mapping.findForward("fail");
		}else{
			request.setAttribute("idFound", idFound);
			forward = mapping.findForward("success");
		}
		return forward;
	}
}
