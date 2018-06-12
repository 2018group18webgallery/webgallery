package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Category;
import model.Picture;
/**
 * 
 * @author tphuong
 *
 */
public class CategoryDAO {
	public static List<Category> getCategorys() {
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection con = pool.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String query = "select * from category";

		try {
			List<Category> list = new ArrayList<>();
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				Category c = new Category();
				c.setCategoryId(rs.getInt("CategoryId"));
				c.setCategoryName(rs.getString("CategoryName"));
				list.add(c);
			}
			return list;
		} catch (SQLException e) {
			System.out.println(e);
			return null;
		} finally {
			DBUtil.closeResultSet(rs);
			DBUtil.closePrepareStatement(ps);
			pool.freeConnection(con);
		}
	}

	public static List<Picture> getProducts(String categoryId) {
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection con = pool.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String query = "select * from product where CategoryId=?";
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, categoryId);
			rs = ps.executeQuery();
			List<Picture> products = new ArrayList<>();
			while (rs.next()) {
				Picture pro = new Picture();
				pro.setCapacity(rs.getLong("Capacity"));
				pro.setPictureId(rs.getInt("PictureId"));
				pro.setPictureName(rs.getString("PictureName"));
				pro.setPictureType(rs.getString("PictureType"));
				products.add(pro);
			}
			return products;
		} catch (SQLException e) {
			System.out.println(e);
			return null;
		} finally {
			DBUtil.closeResultSet(rs);
			DBUtil.closePrepareStatement(ps);
			pool.freeConnection(con);
		}
	}

	public static void deleteCategory(String id) {
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection con = pool.getConnection();
		PreparedStatement ps = null;
		String query = "DELETE from category where CategoryId=?";
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, id);
			ps.executeUpdate();

			return;
		} catch (

		SQLException e) {
			System.out.println(e);
		} finally {
			DBUtil.closePrepareStatement(ps);
			pool.freeConnection(con);
		}
	}

	public static void updateCategory(String id, String name) {
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection con = pool.getConnection();
		PreparedStatement ps = null;
		String query = "Update from category set CategoryName=? where CategoryId=?";
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, id);
			ps.executeUpdate();

			return;
		} catch (

		SQLException e) {
			System.out.println(e);
		} finally {
			DBUtil.closePrepareStatement(ps);
			pool.freeConnection(con);
		}

	}

	public static void insertCategory(String name) {
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection con = pool.getConnection();
		PreparedStatement ps = null;
		String query = "Insert into category values(?)";
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, name);
			ps.executeUpdate();

			return;
		} catch (

		SQLException e) {
			System.out.println(e);
		} finally {
			DBUtil.closePrepareStatement(ps);
			pool.freeConnection(con);
		}

	}

}
