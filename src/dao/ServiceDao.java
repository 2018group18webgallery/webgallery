package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Service;

public class ServiceDao {
	public ServiceDao() {

	}

	public static ArrayList<Service> getListService() {
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection con = pool.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String query = "SELECT * FROM services";
		try {
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			ArrayList<Service> sers = new ArrayList<>();
			while (rs.next()) {
				Service se = new Service();
				se.setServiceId(rs.getInt("ServiceId"));
				se.setServiceName(rs.getString("ServiceName"));
				se.setPrice(rs.getDouble("ServicePrice"));
				sers.add(se);
			}
			return sers;
		} catch (SQLException e) {
			System.out.println(e);
			return null;
		}
	}

	public static boolean delete(int serviceId) {
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection con = pool.getConnection();
		PreparedStatement ps = null;
		String query = "DELETE FROM services where ServiceId=?";
		int i;
		try {
			ps = con.prepareStatement(query);
			ps.setInt(1, serviceId);
			i = ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e);
			return false;
		} finally {
			DBUtil.closePrepareStatement(ps);
			pool.freeConnection(con);
		}
		if (i > 0)
			return true;
		return false;
	}

	public static void insert(Service p) {

		ConnectionPool pool = ConnectionPool.getInstance();
		Connection con = pool.getConnection();
		PreparedStatement ps = null;
		String query = "Insert into service values(?,?)";
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, p.getServiceName());
			ps.setDouble(2, p.getPrice());
			ps.executeUpdate();

			return;
		} catch (SQLException e) {
			System.out.println(e);
		} finally {
			DBUtil.closePrepareStatement(ps);
			pool.freeConnection(con);
		}
	}

	public static void main(String[] args) {

	}

}
