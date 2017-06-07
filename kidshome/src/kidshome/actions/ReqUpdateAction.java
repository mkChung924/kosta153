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
			method = request.getParameter("method");
			HashMap<String,String> map2 = new HashMap<>();
			map2.put("id", id);
			map2.put("serial",serial);
			map2.put("rentmethod", method);
			System.out.println(map2.get("id"));
			System.out.println(map2.get("serial"));
			System.out.println(map2.get("rentmethod"));
			
			if(dao.insertPost(map2)){
				System.out.println("대여테이블에 추가됨");
			}
				
				forward = mapping.findForward("success");
		
			break;	
			
		case "rent_req_del":
			
			HashMap<String,String> map3 = new HashMap<>();
			
			id = request.getParameter("id");
			serial = request.getParameter("serial");
			map3.put("id", id);
			map3.put("serial", serial);
			
			if(dao.delMyRentReq(map3)){
				if(dao.upInventory(serial)){
					forward = mapping.findForward("success");
				}
			}
				
			break;
			
		case "rent_return":
			
			HashMap<String,String> map4 = new HashMap<>();
			
			id = request.getParameter("id");
			serial = request.getParameter("serial");
			System.out.println(id);
			System.out.println(serial);
			
			
			map4.put("id", id);
			map4.put("serial", serial);
			
			if(dao.returnToy(map4)){
				if(dao.returnedInventory(serial)){
					forward = mapping.findForward("success");
				}
			}
			break;
			
		case "rent_return_damage":
			
			HashMap<String,String> map5 = new HashMap<>();
			
			id = request.getParameter("id");
			serial = request.getParameter("serial");
			
			map5.put("id", id);
			map5.put("serial", serial);
			
			if(dao.returnToy(map5)){
				if(dao.returnedInventoryDamaged(serial)){
					if(dao.insertToyDamaged(map5)){
						
						forward = mapping.findForward("success");
					}
				}
			}
			break;
			
		}
		String no = request.getParameter("no");
		System.out.println(no);
		
		
		
		
		
		return forward;
	}
}
