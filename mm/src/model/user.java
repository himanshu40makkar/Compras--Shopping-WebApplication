package model;

public class user {
	int id; 
	String first;
	String last;
	long contact;
	String sex;
	String date;
	String option;
	String username;
	String password;
	String email;
	String bAddress;
	String sAddress;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirst() {
		return first;
	}
	public void setFirst(String first) {
		this.first = first; 
	}
	public String getLast() {
		return last;
	}
	public void setLast(String last) {
		this.last = last;
	}
	public long getContact() {
		return contact;
	}
	public void setContact(long contact) {
		this.contact = contact;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
			this.sex = sex;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		
			this.date = date;
	}
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getbAddress() {
		return bAddress;
	}
	public void setbAddress(String bAddress) {
		this.bAddress = bAddress;
	}
	public String getsAddress() {
		return sAddress;
	}
	public void setsAddress(String sAddress) {
	
	if(getOption().equalsIgnoreCase("Yes"))
	{
		this.sAddress=getbAddress();
	}
	else
		this.sAddress=sAddress;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}


}
