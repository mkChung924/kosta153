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
	private String secure_code ;
	private String secure_ans;
	private int auth;
	private String regdate;
	
	public ToyMembers() {
		// TODO Auto-generated constructor stub
	}
	
	

	public ToyMembers(String id, String pass, String name, String birth, String addr, String email, String tel,
			String secure_code, String secure_ans) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.birth = birth;
		this.addr = addr;
		this.email = email;
		this.tel = tel;
		this.secure_code = secure_code;
		this.secure_ans = secure_ans;
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

	public String getSecure_code() {
		return secure_code;
	}

	public void setSecure_code(String secure_code) {
		this.secure_code = secure_code;
	}

	public String getSecure_ans() {
		return secure_ans;
	}

	public void setSecure_ans(String secure_ans) {
		this.secure_ans = secure_ans;
	}

	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
	 
}	// class
