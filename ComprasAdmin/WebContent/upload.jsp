<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
 String UPLOAD_DIRECTORY = "C:/Users/Himanshu Makkar/workspace/ComprasAdmin/WebContent/images/images/";

MultipartRequest m = new MultipartRequest(request, "C:/Users/Himanshu Makkar/workspace/ComprasAdmin/WebContent/images/images/");

 String upload = (String)m.getFileNames().nextElement();
upload=m.getOriginalFileName(upload);
File file=new File("C:/Users/Himanshu Makkar/workspace/ComprasAdmin/WebContent/images/images/"+upload);
File f=new File(UPLOAD_DIRECTORY+"pic"+session.getAttribute("pid")+".jpg");
f.delete();

file.renameTo(new File(UPLOAD_DIRECTORY+"pic"+session.getAttribute("pid")+".jpg"));
System.out.println(UPLOAD_DIRECTORY+"pic"+session.getAttribute("pid")+".jpg");
        request.getRequestDispatcher("/result.jsp").forward(request, response);
%>
</body>
</html>