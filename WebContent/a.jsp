<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>跳转到自己的网站</title>
</head>
<body>
	
	<%-- <%String name = request.getParameter("name");
	 String pwd = request.getParameter("pwd"); 
	 String sex = request.getParameter("sex");
	 String chk[] = request.getParameterValues("chk");
	 String city[] = request.getParameterValues("city");
	 out.println("name:"+name);
	 %><br/>
	 <% 
	 out.println("password:"+pwd);%><br/>
	  <% 
	 out.println("sex:"+sex);%><br/>
	 <%
	 out.println("hobby:");
	 %>
	 <% 
		 for(int i = 0;i < chk.length;i++){
			 if(chk[i]!=null)
				out.println(chk[i]);
			}

	%>
	<br/>
	 <%
	 out.println("city:");
	 %>
	 <% 
		 for(int i = 0;i < city.length;i++){
			 if(city[i]!=null)
				out.println(city[i]);
			}

	%>
	 --%>
	 
<%-- 	 <%String f[] = request.getParameterValues("fruit");
	 String s = request.getParameter("suggestion");
	 %>
	 <%out.println("You selected fruit:"); %>
	 <br/>
	 <% for(int i =0; i < f.length;i++){
			out.println(f[i]); 
		}
	 %>
	 <br/>
	 <%out.println("Your suggestion is : "); %>
	 <%out.println(s); %> --%>
	 
	 a.jsp
</body>
</html>