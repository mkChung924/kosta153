package kidshome.actions;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;

public class MyRentReqAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String action = request.getParameter("action");
		ActionForward forward = null;
		
		if(action.equals("rent_req")){
			
			String serial = request.getParameter("serial");
			String rentMethod = request.getParameter("rentmethod");
			int auth = (Integer) request.getSession().getAttribute("auth");
			System.out.println("대여 방법: " +rentMethod);
			System.out.println("시리얼번호: "+serial);
			String id = (String) request.getSession().getAttribute("id");
			System.out.println(id);
			System.out.println(serial);
			
			KidshomeDAO dao = new KidshomeDAO();
			HashMap<String, String> map = new HashMap<>();
			map.put("id", id);
			map.put("serial", serial);
			map.put("rentmethod", rentMethod);
			
			if(dao.countMaximum(id, auth)){
				if(dao.checkVacant(serial)){
					if(dao.updateInventory(serial) && dao.insertMyRentReq(map)){
						System.out.println("대여신청완료!");
						request.getSession().setAttribute("rentreq","success");
						forward = mapping.findForward("success");
						
					} else {
						request.getSession().setAttribute("rentreq","error");
						forward = mapping.findForward("success");
					}
				} else {
					request.getSession().setAttribute("rentreq","underCount");
					forward = mapping.findForward("success");
				}
			} else {
				request.getSession().setAttribute("rentreq","overCount");
				forward = mapping.findForward("success");
			}
			
		}
		
		return forward;
	}
}
