package kidshome.model;

public class Review_Board {
	private int no;
	private String review_title;
	private String review_content;
	private String gdate;
	private String user_id;
	private String review_count;
	private String reply_count;

	public Review_Board() {
		// TODO Auto-generated constructor stub
	}

	public Review_Board(int no, String review_title, String review_content, String gdate, String user_id,
			String review_count) {
		super();
		this.no = no;
		this.review_title = review_title;
		this.review_content = review_content;
		this.gdate = gdate;
		this.user_id = user_id;
		this.review_count = review_count;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getReview_title() {
		return review_title;
	}

	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
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

	public String getReview_count() {
		return review_count;
	}

	public void setReview_count(String review_count) {
		this.review_count = review_count;
	}

	public String getReply_count() {
		return reply_count;
	}

	public void setReply_count(String reply_count) {
		this.reply_count = reply_count;
	}
	
	
}
