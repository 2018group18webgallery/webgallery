package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.LineItem;
import model.Product;

public class LineItemDao {
	public static ArrayList<LineItem> getListLineItem() {
		ConnectionPool3 pool = ConnectionPool3.getInstance();
		Connection con = pool.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String query = "select product.ProductCode,product.ProductName, product.ProductDescription,product.ProductImage,product.ProductPrice,product.CategoryId,line_item.Quantity"
				+ "from product join line_item on product.ProductID=line_item.ProductID;";
		try {
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			ArrayList<LineItem> lst = new ArrayList<>();
			while (rs.next()) {
				LineItem li = new LineItem();
				li.setProduct(new Product(rs.getString("ProductCode"), rs.getString("ProductName"), rs.getString("ProductDescription"),rs.getString("ProductImage"), rs.getDouble("ProductPrice"), rs.getString("CategoryId")));
				li.setQuantity(rs.getInt("Quantity"));
				lst.add(li);
			}
			return lst;
		} catch (SQLException e) {
			System.out.println(e);
			return null;

		} finally {
			DBUtil.closeResultSet(rs);
			DBUtil.closePrepareStatement(ps);
			pool.freeConnection(con);
		}
	}

	public static void insertItem(String code, int quantity) {
		ConnectionPool3 pool = ConnectionPool3.getInstance();
		Connection con = pool.getConnection();
		PreparedStatement ps = null;
		String query = "insert into line_item values('?','?','?','?')";
		try {
			ps = con.prepareStatement(query);
			ps.setString(2, code);
			ps.setInt(4, quantity);
			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e);
		} finally {
			DBUtil.closePrepareStatement(ps);
			pool.freeConnection(con);
		}
	}

	public static void updateQuantity(String code, int quantity) {
		ConnectionPool3 pool = ConnectionPool3.getInstance();
		Connection con = pool.getConnection();
		PreparedStatement ps = null;
		String query = "UPDATE line_item set quantity=? where productCode=?";
		try {
			ps = con.prepareStatement(query);
			ps.setString(2, code);
			ps.setInt(1, quantity);
			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e);

		} finally {
			DBUtil.closePrepareStatement(ps);
			pool.freeConnection(con);

		}
	}

	public static LineItem getLineItem(String productCode) {
		ConnectionPool3 pool = ConnectionPool3.getInstance();
		Connection con = pool.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String query = "Select * from line_item where productCode=?";
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, productCode);
			rs = ps.executeQuery();
			LineItem li = new LineItem();
			while (rs.next()) {
				li.setProduct(ServiceDao.getProduct(rs.getString("productCode")));
				li.setQuantity(rs.getInt("Quantity"));
			}
			return li;

		} catch (SQLException e) {
			System.out.println(e);
			return null;
		} finally {
			DBUtil.closePrepareStatement(ps);
			pool.freeConnection(con);

		}
	}

	public static void removeItem(String productCode) {
		ConnectionPool3 pool = ConnectionPool3.getInstance();
		Connection con = pool.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String query = "DELETE from line_item where productCode=?";
		int i;
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, productCode);
			i = ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e);
		} finally {
			DBUtil.closePrepareStatement(ps);
			pool.freeConnection(con);

		}

	}
	public static void main(String[] args) {
		System.out.println("aaaa");
	}
}
