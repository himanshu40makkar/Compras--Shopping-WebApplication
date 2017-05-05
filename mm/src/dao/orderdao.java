package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;

import model.order;
import model.product;

public class orderdao {
synchronized public static boolean placeOrder(order ob,ArrayList al) throws Exception
{
	Connection connection=abstractdb.getConnection();
	PreparedStatement preparedStatement=connection.prepareStatement("insert into project.order(status,price,first,last,contact,email,shipping,billing,userid) values(?,?,?,?,?,?,?,?,?)");
	preparedStatement.setInt(1,ob.getStatus());
	preparedStatement.setInt(2,ob.getPrice());
	preparedStatement.setString(3,ob.getFirst());
	System.out.print(ob.getStatus()+" "+ob.getPrice()+" "+ob.getFirst()+" "+ob.getLast()+" "+ob.getContact()+" "+ob.getEmail()+" "+ob.getShipping()+" "+ob.getBilling() );
	preparedStatement.setString(4,ob.getLast());
	preparedStatement.setLong(5,ob.getContact());
	preparedStatement.setString(6,ob.getEmail());
	preparedStatement.setString(7,ob.getShipping());
	preparedStatement.setString(8,ob.getBilling());
	preparedStatement.setInt(9,ob.getUserid());
	int r=preparedStatement.executeUpdate();
	if(r>0)
	{
		Statement statement=connection.createStatement();
		ResultSet resultSet=statement.executeQuery("select max(id) from project.order");
		int orderid=0;
		if(resultSet.next())
		{
			orderid=resultSet.getInt(1);
		}
		ob.setId(orderid);
		PreparedStatement pstatement=connection.prepareStatement("insert into purchase(orderid,productid) values(?,?)");
		Iterator iterator=al.iterator();
		while(iterator.hasNext())
		{
			int id=(int)iterator.next();
			pstatement.setInt(1,orderid);
			pstatement.setInt(2,id);
			pstatement.addBatch();
		}
		pstatement.executeBatch();
		return true;
	}

	
		return false;	
}
public static order searchById(int id,String email) throws Exception
{
	Connection connection=abstractdb.getConnection();
	if(email.equals("admin"))
	{
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
	}
	else
	{
		PreparedStatement preparedStatement=connection.prepareStatement("select * from project.order where id=? and email=?");
	
	
	preparedStatement.setInt(1,id);
	preparedStatement.setString(2,email);
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
		
		
	}}
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
	
}public static ArrayList searchProducts(int uid) throws Exception
{
	Connection connection=abstractdb.getConnection();
	PreparedStatement preparedStatement=connection.prepareStatement("select * from project.order where userid=?");
	preparedStatement.setInt(1,uid);
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
}
