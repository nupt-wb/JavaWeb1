<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录界面</title>
<script type="text/javascript" src="resource/js/jquery-3.1.0.min.js"></script>
  <script type="text/javascript">
  	function divHide(){
  		$("#divName").hide();
  		$("#divPwd").hide();
  	}
  
  	function checkName(){
  		divHide();
  		var namePattern = /^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){5,20}$/;
  		var numberPattern  = /^[0-9a-zA-Z\-]{6}$/;
  		var digitalPattern = /[0-9]{1,}/;
  		var wordPattern = /[a-zA-Z]{1,}/;
  		var specialPattern = /[-]{1,}/;
  		
  		var name = $("#userName").val();
  		var pwd = $("#pwd").val();
  		var flag =0;
  		if(!namePattern.exec(name)){
  			$("#divName").show();
  			flag = 1;
  		}
  		if(numberPattern.exec(pwd)){
  	  		if(digitalPattern.exec(pwd) && wordPattern.exec(pwd) && specialPattern.exec(pwd) ){
  				flag = 0;
  	  		}else{
  	  			$("#divPwd").show();
  	  			flag = 1;
  	  		}
  		}else{
  			$("#divPwd").show();
  			flag = 1;
  		}

  		if(flag == 1){
  			return false;
  		}else{
  			return true;
  		}
  		
  	}
  </script>
</head>
<body>
	<form action="userlogin" method="get">
		姓名<input type="text" name="userName" id="userName" value=""/><div id="divName" style="display:none;color:red">用户名密码必须以字母开头且大于6个字符</div><br/>
		密码<input type="password" name="pwd" id="pwd" value=""/><div id="divPwd" style="display:none;color:red">密码必须是字母，下划线和数字的组合，且必须都包含这三种</div><br/>
		
		<input type="submit" value="提交" onclick="return checkName()"/>
	</form>
</body>
</html>