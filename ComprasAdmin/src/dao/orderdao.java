package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;

import model.order;


public class orderdao {
	public static boolean change2Shipped(int oid) throws Exception
	{
		Connection connection=abstractdb.getConnection();
		PreparedStatement preparedStatement=connection.prepareStatement("update project.order set status=1 where id=?");
		preparedStatement.setInt(1, oid);
		if(preparedStatement.executeUpdate()>0)
		{
			return true;
		}
		return false;
	}
	public static boolean change2Delivered(int oid) throws Exception
	{
		Connection connection=abstractdb.getConnection();
		PreparedStatement preparedStatement=connection.prepareStatement("update project.order set status=2 where id=?");
		preparedStatement.setInt(1, oid);
		if(preparedStatement.executeUpdate()>0)
		{
			return true;
		}
		return false;
	}
public static ArrayList searchProducts() throws Exception
{
	Connection connection=abstractdb.getConnection();
	PreparedStatement preparedStatement=connection.prepareStatement("select * from project.order");
	
	ResultSet resultSet=preparedStatement.executeQuery();
	ArrayList arrayList=new ArrayList<>();
	while(resultSet.next())
	{
		order order=new order();
		order.setStatus(resultSet.getInt(2));
		order.setPrice(resultSet.getInt(3));
		order.setId(resultSet.getInt(1));
		arrayList.add(order);
	}
	return arrayList;
	
}
public static order searchById(int id) throws Exception
{
	Connection connection=abstractdb.getConnection();
	PreparedStatement preparedStatement=connection.prepareStatement("select * from project.order where id=?");
	preparedStatement.setInt(1,id);
	ResultSet resultSet=preparedStatement.executeQuery();
	if(resultSet.next())
	{
		order order=new order();
		order.setId(resultSet.getInt(1));
		order.setStatus(resultSet.getInt(2));
		order.setPrice(resultSet.getInt(3));
		order.setFirst(resultSet.getString(4));
		order.setLast(resultSet.getString(5));
		order.setContact(resultSet.getLong(6));
		order.setEmail(resultSet.getString(7));
		order.setShipping(resultSet.getString(8));
		order.setBilling(resultSet.getString(9));
		return order;
		
		
	}
	return null;
	
}
public static ArrayList searchProduct(int id) throws Exception
{
	Connection connection=abstractdb.getConnection();
	PreparedStatement preparedStatement=connection.prepareStatement("select * from purchase where orderid=?");
	preparedStatement.setInt(1,id);
	ResultSet resultSet=preparedStatement.executeQuery();
	ArrayList arrayList=new ArrayList<>();
	while(resultSet.next())
	{
		int pid=resultSet.getInt(3);
		arrayList.add(pid);
	}
	return arrayList;
	
}
}
