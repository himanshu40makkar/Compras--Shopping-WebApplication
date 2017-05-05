package dao;


import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

public class abstractdb {
static	Properties properties;
//	static{
//		 properties=new Properties();
//		InputStream is=abstractdb.class.getResourceAsStream("/db.properites");
//		try {
//			properties.load(is);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			System.out.println(e);
//		}
//	}
	static public Connection getConnection() throws Exception
	{ 
//		Class.forName(properties.getProperty("class"));
//		System.out.print(properties.getProperty("class"));
//		Connection  connection=DriverManager.getConnection(properties.getProperty("url"),
//				properties.getProperty("user"),
//				properties.getProperty("password")
//				);
//		return connection;
		Class.forName("com.mysql.jdbc.Driver");
		Connection  connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/project",
				"himanshu",
				"123"
				);
		return connection;
	}
}
