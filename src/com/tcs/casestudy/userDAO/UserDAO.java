package com.tcs.casestudy.userDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.apache.tomcat.util.buf.StringUtils;

import com.tcs.casestudy.util.ConnectionManager;
public class UserDAO {
	Connection conn=ConnectionManager.getConnection();
	
	public static boolean deleteCustomer(String customerId,String customerName,int age,String address) {
	 
	return true;
	
}
}