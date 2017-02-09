<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="f1.jsp">
		<jsp:param value="7" name="userId"/>
	</jsp:forward>
<!-- 	执行之后跳不到f1.jsp，因为安全问题 -->
<!-- 	<form action="f1.jsp" method="get"> -->
<!-- 		<input type="text" name="userId" value="5"/> -->
<!-- 		<input type="submit" value="提交" /> -->
<!-- 	</form> -->
</body>
</html>