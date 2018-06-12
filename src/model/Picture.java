package model;

/**
 * 
 * @author tphuong
 * 
 *
 */
public class Picture {
	private long pictureCode;
	private String pictureName;
	private String pictureType;
	private long capacity;

	public Picture(long pictureId, String pictureName, String pictureType, long capacity) {
		super();
		this.pictureCode = pictureId;
		this.pictureName = pictureName;
		this.pictureType = pictureType;
		this.capacity = capacity;
	}

	public Picture() {

	}

	public String getPictureType() {
		return pictureType;
	}

	public void setPictureType(String pictureType) {
		this.pictureType = pictureType;
	}

	public String getPictureName() {
		return pictureName;
	}

	public void setPictureName(String pictureName) {
		this.pictureName = pictureName;
	}

	public long getPictureCode() {
		return pictureCode;
	}

	public void setPictureCode(long pictureId) {
		this.pictureCode = pictureId;
	}

	public long getCapacity() {
		return capacity;
	}

	public void setCapacity(long capacity) {
		this.capacity = capacity;
	}

}
