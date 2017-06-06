package kidshome.actions;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;
import kidshome.model.Toys;



public class TotalInventoryAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		KidshomeDAO dao = new KidshomeDAO();//3.

		List<Toys> list = dao.selectAllInventory();
		if(list.size() > 0){		
			request.setAttribute("list",list);		
		}
		
		return mapping.findForward("success");//4

	}

}
