package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import model.feedback;

public class feedbackdao {

	public static void insertFeedback(feedback feedback)
	{
		try
		{
			Connection connection=abstractdb.getConnection();
			PreparedStatement preparedStatement=connection.prepareStatement("insert into feedback(uid,oid,feedback) values(?,?,?)");
			preparedStatement.setInt(1,feedback.getUid());
			preparedStatement.setInt(2,feedback.getOid());
			preparedStatement.setString(3,feedback.getFeedback());
			preparedStatement.executeUpdate();
		}catch(Exception e)
		{
			
		}
	}
}
