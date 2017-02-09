<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error2.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <center>  
            <br>  
            <h1>  
                <%  
                    int dividend = 0;  
                    int divisor = 0;  
                    int result = 0;  
    
                    result = dividend / divisor;  
                    out.println(dividend + " / " + divisor + " = " + result);  
                %>  
            </h1>  
            <br>  
            <br>  
            <br>  
            <a href="javascript: history.back();">返回</a>  
        </center>  
</body>
</html>