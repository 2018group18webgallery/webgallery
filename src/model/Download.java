package model;

import java.sql.Date;

public class Download {
	private User user;
	private Picture picture;
	private Date downloadDate;

	public Download(User user, Picture picture, Date downloadDate) {
		super();
		this.user = user;
		this.picture = picture;
		this.downloadDate = downloadDate;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Picture getPicture() {
		return picture;
	}

	public void setPicture(Picture picture) {
		this.picture = picture;
	}

	public Date getDownloadDate() {
		return downloadDate;
	}

	public void setDownloadDate(Date downloadDate) {
		this.downloadDate = downloadDate;
	}

}
