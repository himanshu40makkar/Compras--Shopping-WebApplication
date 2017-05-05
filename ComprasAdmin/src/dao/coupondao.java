package dao;

import java.sql.*;
import java.util.ArrayList;

import model.coupon;
import model.product;

public class coupondao {

	public static void deleteCoupon(int cid)
	{
		try
		{
			Connection connection=abstractdb.getConnection();
			PreparedStatement preparedStatement=connection.prepareStatement("delete from coupon where id=?");
			preparedStatement.setInt(1,cid);
			preparedStatement.executeUpdate();
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	public static void createCoupon(coupon coupon)
	{
		try
		{
			Connection connection=abstractdb.getConnection();
			PreparedStatement preparedStatement=connection.prepareStatement("insert into coupon(code,disc) values(?,?)");
			preparedStatement.setString(1,coupon.getCode());
			preparedStatement.setInt(2,coupon.getDiscount());
			preparedStatement.executeUpdate();
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	public static ArrayList<coupon> searchCode()
	{
		
		try{
			Connection con=abstractdb.getConnection();
			PreparedStatement stmnt=con.prepareStatement("select * from coupon ");
			ArrayList<coupon> al=new ArrayList<>();
			ResultSet resultSet=stmnt.executeQuery();
			while(resultSet.next())
			{
				coupon coupon=new coupon();
				coupon.setId(resultSet.getInt(1));
				coupon.setCode(resultSet.getString(2));
				coupon.setDiscount(resultSet.getInt(3));
				al.add(coupon);
			}return al;
		}
		catch(Exception ex)
		{
			
		}
		return null;
	}
	public static coupon search(int id) throws Exception
	{
		Connection connection=abstractdb.getConnection(); 
		PreparedStatement preparedStatement=connection.prepareStatement("select * from coupon where id=?");
		preparedStatement.setInt(1,id);
		ResultSet resultSet=preparedStatement.executeQuery();
		if(resultSet.next())
		{
			coupon coupon=new coupon();

			coupon.setId(resultSet.getInt(1));
			coupon.setCode(resultSet.getString(2));
			coupon.setDiscount(resultSet.getInt(3));
			return coupon;
		}
		return null;
		
	}
	public static void updateCoupon(coupon coupon) 
	{
		try {
			Connection connection=abstractdb.getConnection();
			PreparedStatement preparedStatement=connection.prepareStatement("update coupon set code=?,disc=? where id=?");
			preparedStatement.setString(1,coupon.getCode());
			preparedStatement.setInt(2,coupon.getDiscount());
			preparedStatement.setInt(3,coupon.getId());
			int r=preparedStatement.executeUpdate();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
	}
}
