package com.tcs.casestudy.userDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import com.tcs.casestudy.util.ConnectionManager;
public class UserDAO {
	static Connection conn=ConnectionManager.getConnection();
	static PreparedStatement ps=null;


	public static boolean depositAmount(String customerId, String accountId, String accountType, String balance,
			String depositAmount) {
		System.out.println(customerId+accountId);
		// TODO Auto-generated method stub
		return true;
	}



	public static boolean bankEmployeeLogin(String username, String password, HttpServletResponse response) {
        Cookie coockie1=new Cookie("employeeId","");
        Cookie coockie=new Cookie("name","");
		try {	Statement stmt = conn.createStatement();
        ResultSet rs;
        rs = stmt.executeQuery("select * from bankemployee where username='"+username+"' and password='"+password+"';");
        if(rs.first())
        {
        	coockie1.setValue(rs.getString("employeeId"));
        	if(rs.getString("employeepost").equalsIgnoreCase("C"))
        	{
        		coockie.setValue(rs.getString("name")+"_Cashier");
        	}
        	if(rs.getString("employeepost").equalsIgnoreCase("E"))
        	{
        		coockie.setValue(rs.getString("name")+"_Customer:executive");
        	}
        	response.addCookie(coockie);
        	response.addCookie(coockie1);
        	return true;
        }else {
        	response.addCookie(coockie);
        	return false;
        }
		// TODO Auto-generated method stub
		}
		catch(Exception e)
		{   response.addCookie(coockie);
			System.out.println(e);
			return false;
		}
	}
}
