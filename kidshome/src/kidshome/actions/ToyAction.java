package kidshome.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;
import kidshome.model.Toys;

public class ToyAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		KidshomeDAO dao = new KidshomeDAO();
		
		List<Toys> toys = dao.selectToys();
//		System.out.println("toy 개수: " +toys.size());
//		for(int i = 0; i < toys.size(); i++){
//			System.out.println(toys.get(i).getNum() + "/" + toys.get(i).getToy_name());
//		}
		request.setAttribute("toys", toys);
		
		return mapping.findForward("success");
	}

}
