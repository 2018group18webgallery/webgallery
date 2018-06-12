package dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.User;
import tool.MD5;

public class UsersDAO {
	public static boolean insertUser(User u) {
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection con = pool.getConnection();
		PreparedStatement ps = null;
		String query = "Insert into users values(?,?,?,?,?,?,?)";
		try {
			ps = con.prepareStatement(query);
			ps.setNString(1, u.getUsername());
			ps.setString(2, u.getEmail());
			ps.setString(3, MD5.encryption(u.getPassword()));
			ps.setString(4, u.getCreditCardType());
			ps.setString(5, u.getCreditCardNumber());
			ps.setString(6, u.getCreditCardExpirationDate());
			ps.setLong(7, u.getCapacityStore());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			System.out.println(e);
		} finally {
			DBUtil.closePrepareStatement(ps);
			pool.freeConnection(con);
		}
		return false;
	}

	public static User login(String email, String pass) {
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection con = pool.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String query = "Select * from users where Email=?,Password=?";
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			User u = new User();
			while (rs.next()) {
				u.setUsername(rs.getNString("Username"));
				u.setEmail(rs.getString("Email"));
				u.setPassword(rs.getString("Password"));
				u.setCreditCardType(rs.getString("CreditCardType"));
				u.setCreditCardNumber(rs.getString("CreditCardNumber"));
				u.setCreditCardExpirationDate(rs.getString("CreditCardExpirationDate"));
				u.setCapacityStore(rs.getLong("Capacity"));
			}
			return u;

		} catch (SQLException e) {
			System.out.println(e);
		} finally {
			DBUtil.closeResultSet(rs);
			DBUtil.closePrepareStatement(ps);
			pool.freeConnection(con);
		}
		return null;
	}

	public static List<User> getListUser() {
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection con = pool.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String query = "Select * from users ";
		try {
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			List<User> lstUser = new ArrayList<>();
			while (rs.next()) {
				User u = new User();
				u.setUsername(rs.getNString("Username"));
				u.setEmail(rs.getString("Email"));
				u.setPassword(rs.getString("Password"));
				u.setCreditCardType(rs.getString("CreditCardType"));
				u.setCreditCardNumber(rs.getString("CreditCardNumber"));
				u.setCreditCardExpirationDate(rs.getString("CreditCardExpirationDate"));
				u.setCapacityStore(rs.getLong("Capacity"));
				lstUser.add(u);
			}
			return lstUser;

		} catch (SQLException e) {
			System.out.println(e);
		} finally {
			DBUtil.closeResultSet(rs);
			DBUtil.closePrepareStatement(ps);
			pool.freeConnection(con);
		}
		return null;
	}

	public static boolean isExist(String email) {
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection con = pool.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String query = "Select * from users where Email=?";
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, email);
			rs = ps.executeQuery();
			if (rs.next()) {
				return true;
			}

		} catch (SQLException e) {
			System.out.println(e);
		} finally {
			DBUtil.closeResultSet(rs);
			DBUtil.closePrepareStatement(ps);
			pool.freeConnection(con);
		}
		return false;
	}

	public static void main(String[] args) {
		
	}
}
