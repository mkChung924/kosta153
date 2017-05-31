package kidshome.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;
import kidshome.model.Toys;

public class ToyDetailAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		System.out.println("ToyDetailAction");
		
		String serial = request.getParameter("serial");
		System.out.println(serial);
		
		KidshomeDAO dao = new KidshomeDAO();
		
		Toys toy = dao.selectDetailToy(serial);
		
//		System.out.println(toy.getToy_serial());
//		System.out.println(toy.getToyname());
//		System.out.println(toy.getToykind());
//		System.out.println(toy.getToyage());
//		System.out.println(toy.getToyimage());
//		System.out.println(toy.getAdd_date());
		
		request.setAttribute("detail", toy);
		
		return mapping.findForward("success");
	}
}
