<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div align="center">  
            <br>  
            <br>  
            <h1>  
                错误信息  
            </h1>  
            <hr>  
            <p>  
            <h3><%=exception.toString()%></h3>  
            <br>  
            <br>  
            <br>  
            <a href="javascript: history.back();">返回</a>  
        </div>  
</body>
</html>