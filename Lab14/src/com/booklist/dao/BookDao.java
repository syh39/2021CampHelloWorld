package com.booklist.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.booklist.bean.Book;

public class BookDao {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12388334", "sql12388334",
					"cA8ahhRxyR");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	public static int save(Book u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into Books(title,author,comment) values(?,?,?)");
			ps.setString(1, u.getTitle());
			ps.setString(2, u.getAuthor());
			ps.setString(3, u.getComment());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int update(Book u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("update Books set title=?,author=?,comment=? where id=?");
			ps.setString(1, u.getTitle());
			ps.setString(2, u.getAuthor());
			ps.setString(3, u.getComment());
			ps.setInt(4, u.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(Book u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from Books where id=?");
			ps.setInt(1, u.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<Book> getAllRecords() {
		List<Book> list = new ArrayList<Book>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from Books");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Book u = new Book();
				u.setId(rs.getInt("id"));
				u.setTitle(rs.getString("title"));
				u.setAuthor(rs.getString("author"));
				u.setComment(rs.getString("comment"));
				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static Book getRecordById(int id) {
		Book u = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from Books where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new Book();
				u.setId(rs.getInt("id"));
				u.setTitle(rs.getString("title"));
				u.setAuthor(rs.getString("author"));
				u.setComment(rs.getString("comment"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}
}