package com.tcs.casestudy.userDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.SQLException;
import com.tcs.casestudy.util.ConnectionManager;
public class UserDAO {
	Connection conn=ConnectionManager.getConnection();



	public static boolean depositAmount(String customerId, String accountId, String accountType, String balance,
			String depositAmount) {
		System.out.println(customerId+accountId);
		// TODO Auto-generated method stub
		return true;
	}
	
}
