<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String[] fx = request.getParameterValues("fx");
		int num = fx.length;
		out.println(num);
	%>


	<%
		for (int i = 0; i < fx.length; i++) {
			out.println(fx[i]);

		}
	%>

	
</body>
</html>