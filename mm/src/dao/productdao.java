package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import model.product;

public class productdao {
	public static boolean deleteStock(int id,int number)
	{
		int stock=0;
		try {
			Connection conn=abstractdb.getConnection();
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery("select stock from product1 where id="+id);
			if(rs.next())
			{
				stock=rs.getInt(1);
			}
			stock=stock-number;
			if(stock<0)
			{
				return false;
			}
			PreparedStatement ps=conn.prepareStatement("update product1 set stock=? where id=?");
			ps.setInt(1,stock);
			ps.setInt(2,id);
			if(ps.executeUpdate()>0)
			return true;
			else
				return false;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public static boolean increaseStock(int id,int number)
	{
		int stock=0;
		try {
			Connection conn=abstractdb.getConnection();
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery("select stock from product1 where id="+id);
			if(rs.next())
			{
				stock=rs.getInt(1);
			}
			stock=stock+number;
			if(stock<0)
			{
				return false;
			}
			PreparedStatement ps=conn.prepareStatement("update product1 set stock=? where id=?");
			ps.setInt(1,stock);
			ps.setInt(2,id);
			if(ps.executeUpdate()>0)
			return true;
			else
				return false;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public static ArrayList<product> searchoption(String keyword) throws Exception
	{
		Connection connection=abstractdb.getConnection(); 
		PreparedStatement preparedStatement=connection.prepareStatement("select * from product1 where name=? or brand=? or sex=?");
		preparedStatement.setString(1,keyword);
		preparedStatement.setString(2,keyword);
		preparedStatement.setString(3,keyword);
		ResultSet resultSet=preparedStatement.executeQuery();
		ArrayList<product> al=new ArrayList<>();
		while(resultSet.next())
		{
			product product=new product();
			product.setId(resultSet.getString(1));
			product.setName(resultSet.getString(2));
			product.setPrice(resultSet.getString(3));
			product.setSex(resultSet.getString(4));
			product.setDescription(resultSet.getString(5));
			product.setCategory(resultSet.getString(6));
			product.setType(resultSet.getString(7));
			product.setBrand(resultSet.getString(8));
			al.add(product);
					
		}
		return al;
		
	}
	public static product search(int id) throws Exception
	{
		Connection connection=abstractdb.getConnection(); 
		PreparedStatement preparedStatement=connection.prepareStatement("select * from product1 where id=?");
		preparedStatement.setInt(1,id);
		ResultSet resultSet=preparedStatement.executeQuery();
		if(resultSet.next())
		{
			product  product=new product();
			product.setName(resultSet.getString(2));
			product.setPrice(resultSet.getString(3));
			product.setSex(resultSet.getString(4));
			product.setBrand(resultSet.getString(6));
			product.setCategory(resultSet.getString(8));
			
			product.setDescription(resultSet.getString(5));
			return product;
		}
		return null;
		
	}
public static ArrayList<product> search(String brand[],String category[],String price[]) throws Exception
{
	Connection connection=abstractdb.getConnection(); 
	String query="select * from product1";
	if(brand==null && category==null && price==null)
	{
		query=query+" where (stock>=1)";
	}
	else
	{
		query=query+" where (stock>=1) and  ";
		if(brand!=null)
		{
			query=query+" ( ";
	for(int i=0;i<brand.length-1;i++)
	{
		query=query+" brand=\""+brand[i]+"\" or ";
	}
	query=query+" brand=\""+brand[brand.length-1]+"\" )   ";
		}
	if(category!=null)
	{	
		if(brand!=null)
		{
			query=query+" and ";
		}
		query=query+"  (";
		for(int i=0;i<category.length-1;i++)
	{
		query=query+" category=\""+category[i]+"\" or ";
	}
	query=query+" category=\""+category[category.length-1]+"\" )  ";
	}
	if(price!=null)
	{
		if(brand!=null || category!=null)
		{
			query=query+" and ";
		}
		query=query+" ( ";
	for(int i=0;i<price.length-1;i++)
	{
		query=query+" price "+price[i]+" or ";
	}
	query=query+" price "+price[price.length-1]+" )";
	}
	}
	System.out.println(query);
	Statement statement=connection.createStatement();
//	ResultSet resultSet=statement.executeQuery("select * from product");
	ResultSet resultSet=statement.executeQuery(query);
	ArrayList<product> arrayList=new ArrayList<>();
	while(resultSet.next())
	{
		product product=new product();
		product.setId(resultSet.getString(1));
		product.setName(resultSet.getString(2));
		product.setPrice(resultSet.getString(3));
		product.setSex(resultSet.getString(4));
		product.setDescription(resultSet.getString(5));
		product.setCategory(resultSet.getString(6));
		product.setType(resultSet.getString(7));
		product.setBrand(resultSet.getString(8));
		arrayList.add(product);
		
	}
	
	return arrayList;
	
}
}
