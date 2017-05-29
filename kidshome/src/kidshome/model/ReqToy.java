package kidshome.model;

public class ReqToy {

	private String id;
	private String toyname;
	private String reason;
	private String image;
	private String req_state;
	private String reqdate;
	
	public ReqToy() {
		// TODO Auto-generated constructor stub
	}

	public ReqToy(String id, String toyname, String reason, String image) {
		super();
		this.id = id;
		this.toyname = toyname;
		this.reason = reason;
		this.image = image;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getToyname() {
		return toyname;
	}

	public void setToyname(String toyname) {
		this.toyname = toyname;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getReq_state() {
		return req_state;
	}

	public void setReq_state(String req_state) {
		this.req_state = req_state;
	}

	public String getReqdate() {
		return reqdate;
	}

	public void setReqdate(String reqdate) {
		this.reqdate = reqdate;
	}
	
	
	
	
	
}
