package kosta.bean;

public class Member {
	private String id;
	private String pass;
	private String name;
	private String age;
	
	
	public Member() {
		super();
	}
	
	

	public Member(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}



	public Member(String id, String pass, String name, String age) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.age = age;
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

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	
	@Override
	public String toString() {
		return "Member [id=" + id + ", pass=" + pass + ", name=" + name + ", age=" + age + "]";
	}
	
}
