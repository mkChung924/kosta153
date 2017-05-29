package kidshome.forms;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class LoginActionForm extends ActionForm{
	
	private String id;
	private String pass;
	
	public String getId() {
		System.out.println("getId()");
		return id;
	}
	public void setId(String id) {
		System.out.println("setId()");
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	@Override
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
		ActionErrors error = new ActionErrors();
		
		if(id != null && pass != null){
			
			if(id.trim().isEmpty()){
				error.add("errorid",new ActionMessage("kids.idE"));
			}else if(pass.trim().isEmpty()){
				error.add("errorpass",new ActionMessage("kids.passE"));
			}
			return error;
		} else {
			return null;
		}

	}
}
