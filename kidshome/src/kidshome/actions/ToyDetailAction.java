package kidshome.actions;

import java.util.HashMap;

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
		String id = (String) request.getSession().getAttribute("id");
		System.out.println(serial);
		System.out.println(id);
		HashMap<String,String> map = new HashMap<>();
		map.put("id",id);
		map.put("serial", serial);
		
		KidshomeDAO dao = new KidshomeDAO();
		
		Toys toy = dao.selectDetailToy(serial);
		boolean t = dao.checkIt(map);
		
		if(t){
			request.setAttribute("possible", "ok");
		} else {
			request.setAttribute("possible", "nok");
		}
		request.setAttribute("detail", toy);
		
		return mapping.findForward("success");
	}
}
