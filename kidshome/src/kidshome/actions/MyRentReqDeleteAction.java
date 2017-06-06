package kidshome.actions;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;

public class MyRentReqDeleteAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		KidshomeDAO dao = new KidshomeDAO();
		ActionForward forward = null;
		HashMap<String,String> map = new HashMap<>();
		
		String action = request.getParameter("action");
		String id = request.getParameter("id");
		String serial = request.getParameter("serial");
		map.put("id", id);
		map.put("serial", serial);
		
		if(action.equals("del")){
			
			if(dao.delMyRentReq(map)){
				if(dao.upInventory(serial)){
					forward = mapping.findForward("success");
				}
			}
		}
		
		return forward;
		
	}

}
