package model;

public class order {
int id;
int status;
int price;
String first;
String last;
long contact;
String email;
public long getContact() {
	return contact;
}
public void setContact(long contact) {
	this.contact = contact;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
String shipping;
String billing;
int userid;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getStatus() {
	return status;
}
public void setStatus(int status) {
	this.status = status;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
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
public String getShipping() {
	return shipping;
}
public void setShipping(String shipping) {
	this.shipping = shipping;
}
public String getBilling() {
	return billing;
}
public void setBilling(String billing) {
	this.billing = billing;
}
public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}

}
