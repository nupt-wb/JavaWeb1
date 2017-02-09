<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Date" %>
    <%@page import="com.nupt.entity.Person" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试import</title>
</head>
<body>
<%
	Person person2 = new Person();
%>
	<jsp:useBean id="person" scope="page" class="com.nupt.entity.Person" />
	  <jsp:setProperty property="name" name="person" value="" param="name"/>
	  <jsp:setProperty property="age" name="20" value="" param="age"/>
	 
	<jsp:useBean id="person1" scope="page" class="com.nupt.entity.Person" >
	  <jsp:setProperty property="name" name="person" value="" param="name"/>
	  <jsp:setProperty property="age" name="22" value="" param="age"/>
	  
	  </jsp:useBean>
	  
</body>
</html>