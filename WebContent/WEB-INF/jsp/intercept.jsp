<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resource/js/jquery-3.1.0.min.js"></script>
<script type="text/javascript">
	function divHide(){
		$("#divName").hide();
		$("#divPwd").hide();
		$("#divAddress").hide();
	}
	function intercepting(){
		divHide();
		
		var name = $("#txtName").val();
		var pwd = $("#txtPwd").val();
		var address = $("#txtAddress").val();
		var flag = 0;
		
		if(name == "" || name.length >4){
			
			$("#divName").show();
			alert(document.getElementById("divName").innerText);
			flag = 1;
		}
		
		if(pwd=="" ){
			$("#divPwd").show();
			alert(document.getElementById("divName").innerText);
			flag = 1;
		}
		if(address==""){
			$("#divAddress").show();
			alert(document.getElementById("divName").innerText);
			flag = 1;
		}
		if(flag==1){
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<form action=""  >
	<div align="center">
		<h1 >用户注册</h1>
		姓名<input type="text" name="txtName" id="txtName" value=""/><div id="divName" style="display:none;color:red">输入的汉字请不大于4个</div><br/>
		密码<input type="text" name="txtPwd" id="txtPwd" value=""/><div id="divPwd" style="display:none;color:red">请输入密码</div><br/>
		家庭住址<input type="text" name="txtAddress" id="txtAddress" value=""/><div id="divAddress" style="display:none;color:red">请输入家庭住址</div><br/>
		<input type="submit" value="提交" onclick="return intercepting();"/>
	</div>
	</form>
</body>
</html>