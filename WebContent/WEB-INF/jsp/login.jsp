<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="resource/js/jquery-3.1.0.min.js"></script>
<script type="text/javascript" src="resource/js/jquery.cookie.js"></script>

<script type="text/javascript">












	function validate(){
		//验证用户名和密码的合法性
		
		<%


		Cookie [] cookies = request.getCookies();
		String name ="";
		String pwd ="";
		if(cookies != null){
		
			System.out.println("===========");
			for(int i=0;i<cookies.length;i++){
				if(cookies[i].getName().equals("name")){
					name = cookies[i].getValue();
					name = java.net.URLDecoder.decode(name,"UTF-8");
				}
				if("pwd".equals(cookies[i].getName())){
					pwd = cookies[i].getValue();
				    pwd = java.net.URLDecoder.decode(pwd,"UTF-8");
				}
			}
		}

	%>
		
		
		var name = "<%=name %>";
		
	    var txtName=$("#name").val();
	    
	  //  alert(name);
	  //  alert(txtName);
	    
	    
	    var pwd = "<%=pwd %>";
	    
	    var txtPwd=$("#pwd").val();
	    
	  //  alert(pwd);
	  //  alert(txtPwd);
	    if(name == txtName && pwd ==txtPwd){
	    	//alert("cookie1");
	    	window.location.href="http://localhost:8080/JavaWeb/loginjump";
	    	//document.getElementById("form1").action="loginjump";
	    }else{
	    	//alert("database");
	    	document.form1.submit();
	    } 
	    
		
	}
</script>
<title>Insert title here</title>
</head>
<body>
	<form action="cs" method="post" id="form1" name="form1"> 
		用户<input type="text" name="name" id="name"/>
		密码<input type="password" name="pwd" id="pwd"/>
		<input type="button" value="提交" onclick="validate()"/>
	</form>
</body>
</html>