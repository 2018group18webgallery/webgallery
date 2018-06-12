package model;

/**
 * 
 * @author tphuong
 * 
 *
 */
public class Picture {
	private int pictureId;
	private String pictureName;
	private String pictureType;
	private long capacity;

	public Picture(int pictureId, String pictureName, String pictureType, long capacity) {
		super();
		this.pictureId = pictureId;
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

	public int getPictureId() {
		return pictureId;
	}

	public void setPictureId(int pictureId) {
		this.pictureId = pictureId;
	}

	public long getCapacity() {
		return capacity;
	}

	public void setCapacity(long capacity) {
		this.capacity = capacity;
	}

}
