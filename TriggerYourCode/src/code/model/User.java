package code.model;

public class User {

	String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	/*public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}*/
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	/*
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}*/
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	/*
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}*/

	String college;
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

	String mobile;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	String year;
	String branch;
	String gender;
	String username;
	String email;
	String password;
	int score;
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
}
