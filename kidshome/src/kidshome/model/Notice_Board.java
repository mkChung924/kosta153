package kidshome.model;

public class Notice_Board {
	private int no;
	private String notice_title;
	private String notice_content;
	private String gdate;
	private String user_id;
	private String notice_count;
	private String reply_count;

	public Notice_Board() {
		// TODO Auto-generated constructor stub
	}
	
	public Notice_Board(int no, String notice_title, String notice_content, String gdate, String user_id,
			String notice_count) {
		super();
		this.no = no;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
		this.gdate = gdate;
		this.user_id = user_id;
		this.notice_count = notice_count;
	}



	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public String getGdate() {
		return gdate;
	}

	public void setGdate(String gdate) {
		this.gdate = gdate;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getNotice_count() {
		return notice_count;
	}

	public void setNotice_count(String notice_count) {
		this.notice_count = notice_count;
	}

	public String getReply_count() {
		return reply_count;
	}

	public void setReply_count(String reply_count) {
		this.reply_count = reply_count;
	}
	
}
