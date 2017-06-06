package kidshome.actions;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;

public class ReqUpdateAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String action = request.getParameter("action");
		System.out.println("ReqUpdateAction: "+action);
		KidshomeDAO dao = new KidshomeDAO();
		ActionForward forward = null;
		String id = "";
		String serial = "";
		String method = "";
		
		switch(action){
		
		case "toyreq":
			
			String no = request.getParameter("no");
			if(dao.updateToyReq(Integer.parseInt(no))){
				forward = mapping.findForward("success");
			}
			
			break;
			
		case "givereq":
			
			String no3 = request.getParameter("no");
			if(dao.updateGiveReq(Integer.parseInt(no3))){
				forward = mapping.findForward("success");
			}
			
			break;
			
		case "toyreq_no":
			String no2 = request.getParameter("no");
			if(dao.updateToyReqNo(Integer.parseInt(no2))){
				forward = mapping.findForward("success");
			}
			
			break;
			
		case "acceptRentVisit":
			System.out.println("대여 수락 시작");
			id = request.getParameter("id");
			serial = request.getParameter("serial");
			method = request.getParameter("method");
			
			HashMap<String,String> map = new HashMap<>();
			System.out.println(map.size());
			map.put("id", id);
			map.put("serial",serial);
			map.put("rentmethod", method);
			System.out.println(map.get("id"));
			System.out.println(map.get("serial"));
			System.out.println(map.get("rentmethod"));
			
			if(dao.insertVisit(map)){
				System.out.println("대여테이블에 추가됨");
			}
	
			forward = mapping.findForward("success");
			
			break;
			
			
		case "acceptRentPost":
			System.out.println("택배 대여, 배송완료");
			id = request.getParameter("id");
			serial = request.getParameter("serial");
			HashMap<String,String> map2 = new HashMap<>();
			map2.put("id", id);
			map2.put("serial",serial);
			if(dao.insertRentInfoPost(map2)){
				
				if(dao.updateStateOfInventory(serial)){
					System.out.println("재고정보수정완료");
				}
				
				if(dao.updateStateOfRentReq(map2)){
					System.out.println("대여신청정보수정완료");
				}
				
				forward = mapping.findForward("success");
			}
			break;	
		}
		String no = request.getParameter("no");
		System.out.println(no);
		
		
		
		
		
		return forward;
	}
}
