package mv.mtb.admin.model;

public class user extends person{

	private int id;
	private String email;
	private String password;
	
	public user() {
		
	}

	public user(String name, String dob, String gender,int id,String email,String password) {
		super(name, dob, gender);
		this.id=id;
		this.email=email;
		this.password=password;
	}

	public user(String name, String dob, String gender,String email,String password) {
		super(name, dob, gender);
		this.email=email;
		this.password=password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String toString() {
        return super.toString(); 
    }
	
}
