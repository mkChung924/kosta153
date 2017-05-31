package kidshome.model;

public class Give {
	
	private String num;
	private String id;
	private String toyname;
	private String toydesc;
	private String method;
	private String image;
	private String addr;
	private String give_state;
	private String dates;
	
	public Give() {
		// TODO Auto-generated constructor stub
	}
	
	public Give(String id, String toyname, String toydesc, String method, String image, String addr) {
		this.id = id;
		this.toyname = toyname;
		this.toydesc = toydesc;
		this.method = method;
		this.image = image;
		this.addr = addr;
	}
	
	


	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getGive_state() {
		return give_state;
	}

	public void setGive_state(String give_state) {
		this.give_state = give_state;
	}

	public String getDates() {
		return dates;
	}

	public void setDates(String dates) {
		this.dates = dates;
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

	public String getToydesc() {
		return toydesc;
	}

	public void setToydesc(String toydesc) {
		this.toydesc = toydesc;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
	

}
