package kidshome.actions;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;
import kidshome.model.SetPage;
import kidshome.model.Toys;

public class ToySearchAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ActionForward forward;
		KidshomeDAO dao = new KidshomeDAO();
		String tn = request.getParameter("toy_n");
		int page;
		int mpage = 0;
		int maxCt = 12;
		if(tn!=null && tn.equals(""))
			tn=null;
		String age = request.getParameter("toy_a");
		if(age!=null && age.equals(""))
			age=null;
		String kind = request.getParameter("toy_k");
		if(kind!=null && kind.equals(""))
			kind=null;
		
		if(dao.searchToyCount(tn,age,kind)!=0)
		{
			mpage=dao.searchToyCount(tn,age,kind)/maxCt;
			if(dao.searchToyCount(tn,age,kind)%maxCt>0)
				mpage+=1;
		}
		if(request.getParameter("toy_pg")==null || Integer.parseInt(request.getParameter("toy_pg"))<1)
			page = 1;
		else if(Integer.parseInt(request.getParameter("toy_pg"))>=mpage)
			page = mpage;

		else
			page = Integer.parseInt(request.getParameter("toy_pg"));
		
		List<Toys> toylist = new ArrayList<>();
		if(mpage!=0)
			toylist = (List<Toys>)dao.searchToy(tn,age,kind,page,maxCt);
		if(toylist!=null){
			System.out.println("야호"+mpage);
			SetPage sp = new SetPage(page,mpage);
			request.setAttribute("toylist", toylist);
			request.setAttribute("pagect",toylist.size());
			request.setAttribute("page",page);
			request.setAttribute("startpage",sp.getStartPage());
			request.setAttribute("endpage",sp.getEndPage());
			forward=mapping.findForward("searchsuccess");
		}
		else
			forward=mapping.findForward("searchfail");
		return forward;
	}
}
