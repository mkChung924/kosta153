package kidshome.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;
import kidshome.model.Toys;


public class TotalInventoryUpdateAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		KidshomeDAO dao = new KidshomeDAO();
		Toys toyinfo = new Toys();
		
		System.out.println("TotalInventoryUpdateAction 시작, 총 재고 숫자 변경");

		toyinfo.setToytotal(request.getParameter("toytotal"));
		toyinfo.setToy_serial(request.getParameter("toy_serial"));
		
		ActionForward forward;
		
		if(dao.updateTotal(toyinfo)){
			forward=mapping.findForward("success");
		}else{
			forward=mapping.getInputForward();
		}
		
		return forward;
	}

}
