package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnectionPool {
	private static ConnectionPool pool = null;
	private static Connection con=null;
//	private static DataSource dataSource = null;
//	static String source = "java:comp/env/jdbc/webgallery";
//	static String source = "java:/comp/env/jdbc/webgallery";
	static String sql=null;

	private ConnectionPool() {
//		try {
//			InitialContext ic = new InitialContext();
//			dataSource = (DataSource) ic.lookup(this.source);
//		} catch (NamingException e) {
//			System.out.println(e);
//		}
//	}
	 this.sql="jdbc:sqlserver://phuongphuong.database.windows.net:1433;database=webgallery;user=phuongphuong@phuongphuong;password={ahihi1997^};"
	 +
	 "encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;";
	 }

	public static synchronized ConnectionPool getInstance() {
		if (pool == null) {
			pool = new ConnectionPool();
		}
		return pool;
	}

	public Connection getConnection() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con = DriverManager.getConnection(sql);
		} catch (SQLException e) {
			System.out.println(e);
			return null;
		} catch (ClassNotFoundException e) {
			System.out.println(e);
		}
		return con;
	}
//		try {
//			return dataSource.getConnection();
//		} catch (SQLException e) {
//			System.out.println(e);
//			return null;
//		}
//	}

	public void freeConnection(Connection c) {
		try {
			c.close();
		} catch (SQLException e) {
			System.out.println(e);
		}
	}

	public static void main(String[] args) {
		ConnectionPool p = ConnectionPool.getInstance();
		Connection con = p.getConnection();
		if (con == null) {
			System.out.println("khong connect");
		} else {
			System.out.println("connect");
		}
	}
}
