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

public class AdminPageAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String action = request.getParameter("action");
		System.out.println(action);
		KidshomeDAO dao = new KidshomeDAO();
		ActionForward forward = null;
		String name = "";
		String tel = "";
		
		if(action != null){
			
			switch(action){
			
			case "give":
				
				List<Give> list = dao.giveList();
				System.out.println("give: " + list.size());
				
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
				
				List<ReqToy> toyReqList = dao.ToyReqList();
				if(toyReqList.size() > 0){
					request.setAttribute("reqlist", toyReqList);
					
					for(int i = 0; i < toyReqList.size(); i++){
						if(toyReqList.get(i).getReq_state().equals("0")){
							toyReqList.get(i).setReq_state("신청 진행중");
						} else if(toyReqList.get(i).getReq_state().equals("1")){
							toyReqList.get(i).setReq_state("추가 완료");
						} else {
							toyReqList.get(i).setReq_state("신청 반려");
						}
					}
				}
				
				forward = mapping.findForward("success_toyreq");
				break;
				
			case "rentreq":
				
				List<RentreqBeans> allRentReqList = dao.selectAllRentReq();
				if(allRentReqList.size() > 0){
					request.setAttribute("list", allRentReqList);
					
					for(int i = 0; i < allRentReqList.size(); i++){
						
						if(allRentReqList.get(i).getRentstate().equals("0")){
							allRentReqList.get(i).setRentstate("대여 대기");
							
						} else if(allRentReqList.get(i).getRentstate().equals("1")){
							allRentReqList.get(i).setRentstate("대여 완료");
						}
					}
				}
				forward = mapping.findForward("success_rentreq");
				
				break;
				
			case "rentreq_name":
				
				name = request.getParameter("name");
				List<RentreqBeans> allRentReqByNameList = dao.selectAllRentReqByName(name);
				if(allRentReqByNameList.size() > 0){
					request.setAttribute("list", allRentReqByNameList);
					
					for(int i = 0; i < allRentReqByNameList.size(); i++){
						
						if(allRentReqByNameList.get(i).getRentstate().equals("0")){
							allRentReqByNameList.get(i).setRentstate("대여 대기");
							
						} else if(allRentReqByNameList.get(i).getRentstate().equals("1")){
							allRentReqByNameList.get(i).setRentstate("대여 완료");
						}
					}
				}
				forward = mapping.findForward("success_rentreq");
				
				break;
				
			case "rentreq_tel":
				
				tel = request.getParameter("tel");
				List<RentreqBeans> allRentReqByTelList = dao.selectAllRentReqByTel(tel);
				if(allRentReqByTelList.size() > 0){
					request.setAttribute("list", allRentReqByTelList);
					
					for(int i = 0; i < allRentReqByTelList.size(); i++){
						
						if(allRentReqByTelList.get(i).getRentstate().equals("0")){
							allRentReqByTelList.get(i).setRentstate("대여 대기");
							
						} else if(allRentReqByTelList.get(i).getRentstate().equals("1")){
							allRentReqByTelList.get(i).setRentstate("대여 완료");
						}
					}
				}
				forward = mapping.findForward("success_rentreq");
				
				break;
				
			case "rent":
				
				List<RentBeans> allRentList = dao.selectAllRent();
				if(allRentList.size() > 0){
					request.setAttribute("list", allRentList);
					
					for(int i = 0; i < allRentList.size(); i++){
						
						if(allRentList.get(i).getRetstate().equals("0")){
							allRentList.get(i).setRetstate("대여중");
							
						} else if(allRentList.get(i).getRetstate().equals("1")){
							allRentList.get(i).setRetstate("반납완료");
						}
					}
				}
				forward = mapping.findForward("success_rent");
				
				break;
				
			case "rent_name":
				
				name = request.getParameter("name");
				System.out.println("검색된 이름: " +name);
				List<RentBeans> allRentByNameList = dao.selectAllRentByName(name);
				if(allRentByNameList.size() > 0){
					request.setAttribute("list", allRentByNameList);
					
					for(int i = 0; i < allRentByNameList.size(); i++){
						
						if(allRentByNameList.get(i).getRetstate().equals("0")){
							allRentByNameList.get(i).setRetstate("대여중");
							
						} else if(allRentByNameList.get(i).getRetstate().equals("1")){
							allRentByNameList.get(i).setRetstate("반납완료");
						}
					}
				}
				forward = mapping.findForward("success_rent");
				
				break;
				
			case "rent_tel":
				
				tel = request.getParameter("tel");
				List<RentBeans> allRentByTelList = dao.selectAllRentByTel(tel);
				if(allRentByTelList.size() > 0){
					request.setAttribute("list", allRentByTelList);
					
					for(int i = 0; i < allRentByTelList.size(); i++){
						
						if(allRentByTelList.get(i).getRetstate().equals("0")){
							allRentByTelList.get(i).setRetstate("대여중");
							
						} else if(allRentByTelList.get(i).getRetstate().equals("1")){
							allRentByTelList.get(i).setRetstate("반납완료");
						}
					}
				}
				forward = mapping.findForward("success_rent");
				
				break;
			}
	
		}
		
		return forward;
	}
}
