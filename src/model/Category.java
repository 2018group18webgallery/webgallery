package model;

import java.util.List;

/**
 * 
 * @author tphuong
 * 
 *
 */
public class Category {
	private int categoryId;
	private String categoryName;
	private List<Picture> pictures;

	public Category(int categoryId, String categoryName, List<Picture> pictures) {
		super();
		this.categoryId = categoryId;
		this.categoryName = categoryName;
		this.pictures = pictures;
	}

	public Category() {

	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public List<Picture> getPictures() {
		return pictures;
	}

	public void setPictures(List<Picture> pictures) {
		this.pictures = pictures;
	}

}
