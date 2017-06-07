package kidshome.actions;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import kidshome.model.KidshomeDAO;
import kidshome.model.ReplyBeans;

public class ReplyAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");// �ൿ
		String board_no = request.getParameter("board_no");// �Խ�������
		String post_no = request.getParameter("post_no");// �۹�ȣ
		String user_id = request.getParameter("user_id");// ID
		String content = request.getParameter("content");// ����
		String reply_no = request.getParameter("reply_no");// ��۹�ȣ
		String sessionId = (String) request.getSession().getAttribute("id");
		KidshomeDAO dao = new KidshomeDAO();
		
		if (board_no == null || board_no.equals("") || Integer.parseInt(board_no) < 0 || Integer.parseInt(board_no) > 2
				|| action == null || action.equals("")) {
			out.print("�������� ����");
			return null;
		} else if (action.equals("selectReply")) {
			Map<String, String> map = new HashMap<>();
			map.put("board_no", board_no);
			map.put("post_no", post_no);
			
			List<ReplyBeans> list = dao.selectReply(map);
			out.print("[");
			for (int i = 0; i < list.size(); i++) {
				out.print("{\"reply_no\":\""+list.get(i).getReply_no()+"\",\"user_id\":\"" + list.get(i).getUser_id() + "\",\"content\":\"" + list.get(i).getContent()
						+ "\",\"gdate\":\"" + list.get(i).getGdate() + "\"}");
				if (i < list.size() - 1) {
					out.print(",");
				}
			}
			out.print("]");
		} else if (action.equals("insertReply")) {
			Map<String, String> map = new HashMap<>();
			map.put("board_no", board_no);
			map.put("post_no", post_no);
			map.put("user_id", user_id);
			map.put("content", content);
			dao.insertReply(map);
		} else if (action.equals("updateReply")) {
			Map<String, String> map = new HashMap<>();
			map.put("reply_no",reply_no);
			map.put("content", content);
			dao.updateReply(map);
		} else if (action.equals("deleteReply")) {
			dao.deleteReply(reply_no);
		}
		return null;
	}
}
