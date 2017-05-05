package dao;

import java.sql.*;
import java.util.ArrayList;

public class coupondao {

	public static int valiateCode(String code)
	{
		
		try{
			Connection con=abstractdb.getConnection();
			PreparedStatement stmnt=con.prepareStatement("select disc from coupon where code=?");
			stmnt.setString(1,code);
			ResultSet resultSet=stmnt.executeQuery();
			if(resultSet.next())
			{
				return resultSet.getInt(1);
			}
			else
				return 0;
		}
		catch(Exception ex)
		{
			
		}
		return 0;
	}
}
