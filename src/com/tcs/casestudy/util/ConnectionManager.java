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
				conn=DriverManager.getConnection(url+"CaseStudy12Jun",dbUserName,dbPassword);
				try {
					ps=conn.prepareStatement("CREATE TABLE BANKEMPLOYEE(Name varchar(20) not null,EMPLOYEEID INT(9) ZEROFILL not null AUTO_INCREMENT,USERNAME VARCHAR(20),PASSWORD VARCHAR(20),Createdon timestamp default current_timestamp,Updatedon timestamp default current_timestamp,employeepost varchar(1) not null,primary key (employeeid), check(employeepost in ('E','C')));");
					ps.execute();
					ps=conn.prepareStatement("insert into bankemployee(name,username,password,employeepost) values('Executive1','Customerexecutive','Customerexecutive@12','E'),('Cashier1','Cashier','Cashier@12','C')");
					ps.execute();
				}
				catch(Exception e)
				{System.out.println(e);}
				try {
					ps=conn.prepareStatement("CREATE TABLE CUSTOMER(SSNID INT(9) NOT NULL,CUSTOMERID INT(9) zerofill NOT NULL AUTO_INCREMENT,NAME VARCHAR(20) NOT NULL,ADDRESS VARCHAR(50) NOT NULL,AGE INT(3) not null,Createdon timestamp default current_timestamp,EMPLOYEEID INT(9) ZEROFILL NOT NULL ,Updatedon timestamp default current_timestamp on update current_timestamp , primary key(customerid),foreign key(EMPLOYEEID) references bankemployee(employeeid));");
					ps.execute();
				}
				catch(Exception e)
				{System.out.println(e);}
				try {
					ps=conn.prepareStatement("CREATE TABLE ACCOUNT(CUSTOMERID INT(9) ZEROFILL NOT NULL ,ACCOUNTID INT(9) ZEROFILL NOT NULL  AUTO_INCREMENT,ACCOUNTTYPE VARCHAR(1),BALANCE INT NOT NULL,Createdon timestamp default current_timestamp,Updatedon timestamp default current_timestamp on update current_timestamp,PRIMARY KEY(ACCOUNTID), foreign key(customerid) references customer(customerid),CHECK(ACCOUNTTYPE IN('S','C')));");
					ps.execute();
				}
				catch(Exception e)
				{
					System.out.println(e);
				}
				try {
					ps=conn.prepareStatement("CREATE TABLE TRANSACTIONS(TRANSACTIONID INT(9) ZEROFILL NOT NULL ,EMPLOYEEID INT(9) zerofill NOT NULL,CUSTOMERID INT(9) ZEROFILL NOT NULL,ACCOUNTTYPE VARCHAR(1) NOT NULL,AMOUNT INT NOT NULL,TRANSACTIONDATE TIMESTAMP default current_timestamp,SOURCEACCOUNTTYPE VARCHAR(1),TARGETACCOUNTTYPE VARCHAR(1),CHECK(ACCOUNTTYPE IN ('S','C')),PRIMARY KEY(TRANSACTIONID),foreign key(customerid) references customer(customerid),foreign key (employeeid) references bankemployee(employeeid));");
					ps.execute();
					ps=conn.prepareStatement("alter table transactions add foreign key (employeeid) references bankemployee(employeeid);");
					ps.execute();
				}
				catch(Exception e)
				{System.out.println(e);}
				}
		catch(ClassNotFoundException|SQLException e){
			System.out.println(e);
		}
	return conn;
}
}
