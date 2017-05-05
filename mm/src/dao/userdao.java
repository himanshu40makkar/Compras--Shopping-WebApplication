package dao;


import java.sql.*;

import model.user;

public class userdao {
	static public boolean validateuser(user user) throws Exception
	{
		Connection connection=abstractdb.getConnection(); 
		PreparedStatement preparedStatement=connection.prepareStatement("select * from user where username=? and password=?");
		preparedStatement.setString(1,user.getUsername());
		preparedStatement.setString(2,user.getPassword());
		ResultSet resultSet=preparedStatement.executeQuery();
		if(resultSet.next())
		{
		
			user.setId(resultSet.getInt(1));
			user.setFirst(resultSet.getString(2));
			user.setLast(resultSet.getString(3));
			user.setContact(resultSet.getLong(4));
			user.setEmail(resultSet.getString(9));
			user.setbAddress(resultSet.getString(10));
			user.setOption("no");
			user.setsAddress(resultSet.getString(11));
			
			
			return true;
		}
		else
			return false;
	}

	static public boolean insert(user user) 
	{
		try
		{
		Connection connection=abstractdb.getConnection(); 
		PreparedStatement statement=connection.prepareStatement(""
			+ "insert into user(FirstName,LastName,Contact,Sex,DateOfBirth,UserName"
				+ ",Password,EmailId,billingAddress,shippingAddress) values(?,?,?,?,?,?,?,?,?,?)");
		statement.setString(1,user.getFirst());
		statement.setString(2,user.getLast());
		statement.setLong(3,user.getContact());
		statement.setString(4,user.getSex());
		statement.setString(5,user.getDate());
		statement.setString(6,user.getUsername());
		statement.setString(7,user.getPassword());
		statement.setString(8,user.getEmail());
		statement.setString(9,user.getbAddress());
		statement.setString(10,user.getsAddress());
		
		int r=statement.executeUpdate();
		if(r>0)
		{
			System.out.println(r);
			return true;
		}
		else
			return false;
	}catch(Exception ex)
	{
		System.out.println(ex);
		return false;
	}
		}
	
}
 
