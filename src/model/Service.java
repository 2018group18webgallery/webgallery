package model;

public class Service {
	private int serviceId;
	private String serviceName;
	private double price;

	public Service(int serviceId, String serviceName, double price) {
		super();
		this.serviceId = serviceId;
		this.serviceName = serviceName;
		this.price = price;
	}

	public Service() {

	}

	public int getServiceId() {
		return serviceId;
	}

	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}

	public String getServiceName() {
		return serviceName;
	}

	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

}
