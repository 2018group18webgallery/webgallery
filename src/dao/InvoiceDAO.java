/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Bill;
import model.Invoice;

public class InvoiceDAO {

	public static void insertInvoice(Invoice bill) throws SQLException {
		ConnectionPool3 pool = ConnectionPool3.getInstance();
		Connection con = pool.getConnection();
		PreparedStatement ps = null;
		String sql = "INSERT INTO invoice VALUES(?,?,?,?,?)";
		ps = con.prepareStatement(sql);

		try {
			ps.setLong(1, bill.getInvoiceId());
			ps.setLong(2, bill.getUserId());
			ps.setFloat(3, bill.getTotalAmount());
			ps.setTimestamp(4, bill.getInvoiceDate());
			ps.setBoolean(5, bill.isProcessed());
			ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e);
		} finally {
			DBUtil.closePrepareStatement(ps);
			pool.freeConnection(con);
		}
	}

	public static ArrayList<Invoice> getInvoiceNotProcess() {
		ConnectionPool3 pool = ConnectionPool3.getInstance();
		Connection con = pool.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM invoice where IsProcessed=?";
			ps = con.prepareStatement(sql);
			ps.setBoolean(1, false);
			rs = ps.executeQuery();
			ArrayList<Invoice> list = new ArrayList<>();
			while (rs.next()) {
				Invoice bill = new Invoice();
				bill.setInvoiceId(rs.getLong("InvoiceId"));
				bill.setUserId(rs.getLong("UserId"));
				bill.setTotalAmount(rs.getFloat("TotalAmount"));
				bill.setInvoiceDate(rs.getTimestamp("InvoiceDate"));
				bill.setProcessed(rs.getBoolean("IsProcessed"));
				list.add(bill);
			}
			return list;
		} catch (SQLException ex) {
			Logger.getLogger(InvoiceDAO.class.getName()).log(Level.SEVERE, null, ex);
		} finally {
			DBUtil.closePrepareStatement(ps);
			DBUtil.closeResultSet(rs);
			pool.freeConnection(con);
		}
		return null;
	}
//	public void update(Invoice inv) {
//		ConnectionPool pool = ConnectionPool.getInstance();
//		Connection con = pool.getConnection();
//		PreparedStatement ps = null;
//		String sql = "Update invoice ";
//		ps = con.prepareStatement(sql);
//
//		try {
//			ps.setLong(1, bill.getInvoiceId());
//			ps.setLong(2, bill.getUserId());
//			ps.setFloat(3, bill.getTotalAmount());
//			ps.setTimestamp(4, bill.getInvoiceDate());
//			ps.setBoolean(5, bill.isProcessed());
//			ps.executeUpdate();
//		} catch (SQLException e) {
//			System.out.println(e);
//		} finally {
//			DBUtil.closePrepareStatement(ps);
//			pool.freeConnection(con);
//		}
//	}

	public static void main(String[] args) throws SQLException {

	}

}
