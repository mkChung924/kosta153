package kidshome.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;
import kidshome.model.ToyMembers;

public class UpFormAction extends Action{

	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("upFormAction");
		
		String action = request.getParameter("action");
		System.out.println("Current Action: "+action);
		
		KidshomeDAO dao = new KidshomeDAO();
		ActionForward forward = null;
		
		if(action.equals("upform")){
			
			System.out.println("사용자 인증 확인 통과");
			
			String id = request.getParameter("id");
			String pass = request.getParameter("pass");
			
			List<ToyMembers> list = dao.selectUp(id);
			System.out.println(list.get(0).getId());
			System.out.println(list.get(0).getPass());
			System.out.println(list.get(0).getName());
			System.out.println(list.get(0).getBirth());
			System.out.println(list.get(0).getAddr());
			System.out.println(list.get(0).getEmail());
			System.out.println(list.get(0).getTel());
			System.out.println(list.get(0).getSecure_code());
			System.out.println(list.get(0).getSecure_ans());
			System.out.println(list.get(0).getAuth());
			System.out.println(list.get(0).getRegdate());
			
			
			if(id.equals(request.getSession().getAttribute("id")) && pass.equals(request.getSession().getAttribute("pass"))){
				request.setAttribute("user", list);
				
				forward = mapping.findForward("success");
			} else {
				forward = mapping.findForward("fail");
			}
			
		} else if(action.equals("update")){
			
			String tel1 =  request.getParameter("tel1");
			String tel2 =  request.getParameter("tel2");
			String tel3 = request.getParameter("tel3");
			
			String id = request.getParameter("id");
			String pass = request.getParameter("pass");
			String name = request.getParameter("name");
			String addr1= request.getParameter("addr1");
			String addr2= request.getParameter("addr2");
			String year = request.getParameter("year");
			String month = request.getParameter("month");
			String day = request.getParameter("day");
			
			String tel = tel1+"-"+tel2+"-"+tel3;
			String email = request.getParameter("email");
			String birth= year+"-"+month+"-"+day;
			String addr= addr1+"-"+addr2;
			String secure_code = request.getParameter("secure_code");
			String secure_ans= request.getParameter("secure_ans");
			
			System.out.println(id);
			System.out.println(pass);
			System.out.println(addr);
			System.out.println(email);
			System.out.println(secure_code);
			System.out.println(secure_ans);
						
			ToyMembers mem = new ToyMembers();
			
			mem.setId(id);
			mem.setPass(pass);
			mem.setAddr(addr);
			mem.setEmail(email);
			mem.setSecure_code(secure_code);
			mem.setSecure_ans(secure_ans);
			mem.setTel(tel);
			
			if(dao.update(mem)){
				forward = mapping.findForward("success_update");
				request.getSession().invalidate();
				System.out.println("사용자 정보수정 완료");

			}
		} else if(action.equals("delInfo")){
			
			System.out.println("사용자 탈퇴 인증 확인");
			
			String id = request.getParameter("id");
			String pass = request.getParameter("pass");
			
			if(id.equals(request.getSession().getAttribute("id")) && pass.equals(request.getSession().getAttribute("pass"))){
				
				if(dao.delete(id)){
					forward = mapping.findForward("success_del");
					request.getSession().invalidate();
				} else {
					forward = mapping.findForward("fail");
				}
			}
			
			
		} else if(action.equals("passUpdate")){
			
			System.out.println("사용자 비밀번호 변경");
		}
		
		
		return forward;
	}
}
