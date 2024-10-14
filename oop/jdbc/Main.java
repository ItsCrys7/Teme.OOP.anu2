package ro.emanuel.oop.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class Main {

	public static void main(String[] args) throws SQLException {
		
		// prepare the connection obj auth props
		Properties connectionProps = new Properties();
		connectionProps.put("user", "root");
		connectionProps.put("password", "");
		
		// open connection (create Connection obj)
		Connection conn = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/oop2024", 
				connectionProps);
		
		// open statement (create Statement obj to run sql commands)
		Statement stmt = conn.createStatement();
		
		//INSERT
		String bankName = "Salt";
		String bankAddress = "Bucuresti strada 1";
		String bankSwift  = "92r0n4rh";
		
		final String commandInsert = "INSERT INTO `bank`(`name`, `address`, `swift`) VALUES \n"
				+ "	('" + bankName + "','" + bankAddress + "','" + bankSwift + "');";
		int rowsAffected = stmt.executeUpdate(commandInsert);
		System.out.println(rowsAffected + " rows affected");
		
		//get results
		final ResultSet rs = stmt.executeQuery("SELECT * FROM bank");
		
		//map results
		while (rs.next()) {
			final int id=rs.getInt("id");
			final String name = rs.getString("name");
			final String address = rs.getString("address");
			final String swift = rs.getString("swift");
			System.out.println(id + " " + name + " (" + address + "): " + swift);
		}
		
		
		//close connection
		conn.close();

	}

}
