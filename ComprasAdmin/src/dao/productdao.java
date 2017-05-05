package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import model.product;

public class productdao {
	public static void updateProduct(product product) 
	{
		try {
			Connection connection=abstractdb.getConnection();
			PreparedStatement preparedStatement=connection.prepareStatement("update product1 set name=?,price=?,sex=?,description=?,brand=?,type=?,category=?,stock=? where id=?");
			preparedStatement.setString(1,product.getName());
			preparedStatement.setString(2,product.getPrice());
			preparedStatement.setString(3,product.getSex());
			preparedStatement.setString(4,product.getDescription());
			preparedStatement.setString(5,product.getBrand());
			preparedStatement.setString(6,product.getType());
			preparedStatement.setString(7,product.getCategory());
			preparedStatement.setInt(8,product.getStock());
			preparedStatement.setString(9,product.getId());
			int r=preparedStatement.executeUpdate();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
	}
	public static ArrayList search() throws Exception
	{
		Connection connection=abstractdb.getConnection(); 
		PreparedStatement preparedStatement=connection.prepareStatement("select * from product1");
		ArrayList<product> al=new ArrayList<>();
		ResultSet resultSet=preparedStatement.executeQuery();
		while(resultSet.next())
		{
			product  product=new product();
			product.setId(resultSet.getString(1));
			product.setName(resultSet.getString(2));
			product.setPrice(resultSet.getString(3));
			product.setSex(resultSet.getString(4));
			product.setBrand(resultSet.getString(6));
			product.setType(resultSet.getString(7));
			product.setCategory(resultSet.getString(8));
			product.setStock(resultSet.getInt(9));	
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
			product.setId(resultSet.getString(1));
			product.setName(resultSet.getString(2));
			product.setPrice(resultSet.getString(3));
			product.setSex(resultSet.getString(4));
			product.setBrand(resultSet.getString(6));
			product.setType(resultSet.getString(7));
			product.setDescription(resultSet.getString(5));
			product.setCategory(resultSet.getString(8));
			product.setStock(resultSet.getInt(9));	
			return product;
		}
		return null;
		
	}
public static ArrayList<product> search(String brand[],String category[],String price[]) throws Exception
{
	Connection connection=abstractdb.getConnection(); 
	String query="select * from product1 ";
	if(brand==null && category==null && price==null)
	{
		
	}
	else
	{
		query=query+" where  ";
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
