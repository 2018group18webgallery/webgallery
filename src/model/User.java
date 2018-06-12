package model;

import java.util.ArrayList;
import java.util.List;

public class User {
	private int userId;
	private String username;
	private String email;
	private String password;
	private String creditCardType;
	private String creditCardNumber;
	private String creditCardExpirationDate;
	private List<Picture> pictures;
	private long capacityStore;

	public User(int userId,String username, String email, String password, String creditCardType, String creditCardNumber,
			String creditCardExpirationDate) {
		super();
		this.userId=userId;
		this.capacityStore=300*1024;// free 300KB cho user 
		this.username = username;
		this.email = email;
		this.password = password;
		this.creditCardType = creditCardType;
		this.creditCardNumber = creditCardNumber;
		this.creditCardExpirationDate = creditCardExpirationDate;
		this.pictures = new ArrayList<>();
	}

	public User() {
		this.creditCardType = "";
		this.creditCardNumber = "";
		this.creditCardExpirationDate = "";

	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public List<Picture> getPictures() {
		return pictures;
	}

	public void setPictures(List<Picture> pictures) {
		this.pictures = pictures;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCreditCardType() {
		return creditCardType;
	}

	public void setCreditCardType(String creditCardType) {
		this.creditCardType = creditCardType;
	}

	public String getCreditCardNumber() {
		return creditCardNumber;
	}

	public void setCreditCardNumber(String creditCardNumber) {
		this.creditCardNumber = creditCardNumber;
	}

	public String getCreditCardExpirationDate() {
		return creditCardExpirationDate;
	}

	public void setCreditCardExpirationDate(String creditCardExpirationDate) {
		this.creditCardExpirationDate = creditCardExpirationDate;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", email=" + email + ", password=" + password + ", creditCardType="
				+ creditCardType + ", creditCardNumber=" + creditCardNumber + ", creditCardExpirationDate="
				+ creditCardExpirationDate + "]";
	}

	public static void main(String[] args) {
		User a = new User();
		System.out.println("a" + a);
	}
}
