package kidshome.model;

public class Free_Board {
	private int no;
	private String free_title;
	private String free_content;
	private String gdate;
	private String user_id;
	private String free_count;
	private String reply_count;

	public Free_Board() {
		// TODO Auto-generated constructor stub
	}

	public Free_Board(int no, String free_title, String free_content, String gdate, String user_id, String free_count) {
		super();
		this.no = no;
		this.free_title = free_title;
		this.free_content = free_content;
		this.gdate = gdate;
		this.user_id = user_id;
		this.free_count = free_count;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getFree_title() {
		return free_title;
	}

	public void setFree_title(String free_title) {
		this.free_title = free_title;
	}

	public String getFree_content() {
		return free_content;
	}

	public void setFree_content(String free_content) {
		this.free_content = free_content;
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

	public String getFree_count() {
		return free_count;
	}

	public void setFree_count(String free_count) {
		this.free_count = free_count;
	}

	public String getReply_count() {
		return reply_count;
	}

	public void setReply_count(String reply_count) {
		this.reply_count = reply_count;
	}

}
