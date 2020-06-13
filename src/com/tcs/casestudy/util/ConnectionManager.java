package com.tcs.casestudy.util;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
public class ConnectionManager {
	
	public static Connection getConnection()
	{
		Connection conn=null;
		String dbPassword = null;
		PreparedStatement ps=null;
		try {
			final String url="jdbc:mysql://localhost:3306/";
			final String dbUserName="root";
			BufferedReader reader;   
				try {
					reader=new BufferedReader(new FileReader("D:\\Database.txt"));
					dbPassword=reader.readLine();
					reader.close();
					}
				catch(IOException e)
					{
					e.printStackTrace();
					}
				Class.forName("com.mysql.jdbc.Driver");
		//System.out.println("Connected");
		//System.out.println("The JDBC Url is"+url);
				conn=DriverManager.getConnection(url,dbUserName,dbPassword);
				try {
					ps=conn.prepareStatement("use CaseStudy12Jun;");
					ps.execute();
					System.out.println("database use");
				}
				catch(Exception e)
				{
					ps=conn.prepareStatement("CREATE DATABASE CASESTUDY12JUN;");
					ps.execute();
					System.out.println("Created");
				}
				}
		catch(ClassNotFoundException|SQLException e){
			e.printStackTrace();
		}
	return conn;
}
}
