package kidshome.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.Give;
import kidshome.model.KidshomeDAO;
import kidshome.model.RentBeans;
import kidshome.model.RentreqBeans;
import kidshome.model.ReqToy;

public class MyRequestListAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
	
		String action = request.getParameter("action");
		String id = (String) request.getSession().getAttribute("id");
		
		KidshomeDAO dao = new KidshomeDAO();
		ActionForward forward = null;
		System.out.println("마이페이지 MyRequestListAction, current action : " + action);
		
		switch(action){

		case "give":
			
			List<Give> list = dao.giveList(id);
			if(list.size() > 0){
				request.setAttribute("givelist", list);
				for(int i = 0 ; i < list.size(); i++){
					if(list.get(i).getMethod().equals("visit")){
						list.get(i).setMethod("방문");
					} else {
						list.get(i).setMethod("택배");
					}
					
					if(list.get(i).getGive_state().equals("0")){
						list.get(i).setGive_state("수령 대기");
					} else if(list.get(i).getGive_state().equals("1")){
						list.get(i).setGive_state("기부 완료");
					}
				}
			}
						
			forward = mapping.findForward("success_give");
			break;
			
		case "toy":
			
			List<ReqToy> toyReqList = dao.myToyReqList(id);
			if(toyReqList.size() > 0){
				request.setAttribute("reqlist", toyReqList);
				
				for(int i = 0; i < toyReqList.size(); i++){
					if(toyReqList.get(i).getReq_state().equals("0")){
						toyReqList.get(i).setReq_state("신청 진행중");
					} else if(toyReqList.get(i).getReq_state().equals("1")){
						toyReqList.get(i).setReq_state("추가 완료");
					} else if(toyReqList.get(i).getReq_state().equals("2")){
						toyReqList.get(i).setReq_state("신청 반려");
					}
				}
			}
			
			forward = mapping.findForward("success_toy");
			break;
			
		case "rentreq":
			
			
			List<RentreqBeans> rentreqList = dao.selectMyRentReq(id);
			
			if(rentreqList.size() > 0){
				request.setAttribute("list", rentreqList);
				
				for(int i = 0; i < rentreqList.size(); i++){
					if(rentreqList.get(i).getRentstate().equals("0")){
						rentreqList.get(i).setRentstate("대여 신청");
					} else if(rentreqList.get(i).getRentstate().equals("1")){
						rentreqList.get(i).setRentstate("대여 완료");
					}
				}
			}
			
			forward = mapping.findForward("success_rentreq");
			break;
			
		case "rent":
			
			List<RentBeans> rentList = dao.selectMyRent(id);
			if(rentList.size() > 0){
				request.setAttribute("list", rentList);
				System.out.println(rentList.get(0).getD());
				
				for(int i = 0; i < rentList.size(); i++){
					if(rentList.get(i).getRetstate().equals("0")){
						rentList.get(i).setRetstate("대여중");
					} else if(rentList.get(i).getRetstate().equals("1")){
						rentList.get(i).setRetstate("반납완료");
					}
				}
			}
			
			
			forward = mapping.findForward("success_rent");
			break;
			
			default:break;
		}
		
		return forward;
	}

}
