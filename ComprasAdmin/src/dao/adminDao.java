package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.admin;

public class adminDao {
	static public boolean validateuser(admin admin) throws Exception
	{
		Connection connection=abstractdb.getConnection(); 
		PreparedStatement preparedStatement=connection.prepareStatement("select * from admin where username=? and password=?");
		preparedStatement.setString(1,admin.getUsername());
		preparedStatement.setString(2,admin.getPassword());
		ResultSet resultSet=preparedStatement.executeQuery();
		if(resultSet.next())
		{
			
			return true;
		}
		else
			return false;
	} 
}
