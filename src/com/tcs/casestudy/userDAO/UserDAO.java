package com.tcs.casestudy.userDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.SQLException;
import com.tcs.casestudy.util.ConnectionManager;
public class UserDAO {
	Connection conn=ConnectionManager.getConnection();
	
}
