package model;

public class User {
	private String username;
	private String email;
	private String password;
	private String creditCardType;
	private String creditCardNumber;
	private String creditCardExpirationDate;

	public User(String username, String email, String password, String creditCardType, String creditCardNumber,
			String creditCardExpirationDate) {
		super();
		this.username = username;
		this.email = email;
		this.password = password;
		this.creditCardType = creditCardType;
		this.creditCardNumber = creditCardNumber;
		this.creditCardExpirationDate = creditCardExpirationDate;
	}

	public User() {
		this.creditCardType = "";
		this.creditCardNumber = "";
		this.creditCardExpirationDate = "";

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
	User a= new User();
	System.out.println("a"+a);
}
}
