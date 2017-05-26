package kidshome.model;

import java.sql.Date;

public class ToyMembers {

	private String id;
	private String pass;
	private String name;
	private String birth;
	private String addr;
	private String email;
	private String tel;
	private Date gdate;
	
	public ToyMembers() {
		
	}

	public ToyMembers(String id, String pass, String name, String birth, String addr, String email, String tel,Date gdate) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.birth = birth;
		this.addr = addr;
		this.email = email;
		this.tel = tel;
		this.gdate = gdate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Date getGdate() {
		return gdate;
	}

	public void setGdate(Date gdate) {
		this.gdate = gdate;
	}
	 
}	// class
