<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网站访问量</title>
</head>
<body>
<script>
	<%
	int counter = 1;
	if(application.getAttribute("number") == null){
		application.setAttribute("number",1);
	}else{
		counter = Integer.parseInt(application.getAttribute("number").toString())+1;
		application.setAttribute("number",counter);
	}
	%>
	var counter= "<%=counter %>";
	alert("访问量为"+counter);

</script>

</body>
</html>