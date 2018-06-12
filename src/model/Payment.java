package model;

import java.sql.Date;

public class Payment {
	private User user;
	private Service service;
	private double amount;
	private Date paymentDate;
	private String paymentType;
	public Payment(User user, Service service, double amount, Date paymentDate, String paymentType) {
		super();
		this.user = user;
		this.service = service;
		this.amount = amount;
		this.paymentDate = paymentDate;
		this.paymentType = paymentType;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Service getService() {
		return service;
	}
	public void setService(Service service) {
		this.service = service;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public Date getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}
	public String getPaymentType() {
		return paymentType;
	}
	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}
	

}
