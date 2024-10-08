package User1;

public class user2 {
	private boolean sex;
	private String fname;
	private String email;
	private String password;
	private String address;
	private String Tpho;
	private String[] GHTD;

	public boolean isSex() {
		return sex;
	}

	public void setSex(boolean sex) {
		this.sex = sex;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return Tpho;
	}
	
	public void setCity(String Tpho) {
		this.Tpho = Tpho;
	}
	
	public String[] getGHTD() {
		return GHTD;
	}

	public void setGHTD(String[] gHTD) {
		GHTD = gHTD;
	}
	
	public user2(boolean sex, String fname, String email, String password, String address, String Tpho, String[] gHTD) {
		super();
		this.sex = sex;
		this.fname = fname;
		this.email = email;
		this.password = password;
		this.address = address;
		this.Tpho = Tpho;
		GHTD = gHTD;
	}

	public user2() {
		super();
	}
}
