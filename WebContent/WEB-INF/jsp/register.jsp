<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resource/js/jquery-3.1.0.min.js"></script>

<script type="text/javascript">
<%-- 	<% String error = (String)request.getAttribute("error"); %>		 --%>

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
			alert(document.getElementById("divPwd").innerText);
			flag = 1;
		}
		if(address==""){
			$("#divAddress").show();
			alert(document.getElementById("divAddress").innerText);
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

<script>
	
			
		
</script>
	<form action="a" method="get"  >
	<div align="center">
		<h1 >用户注册</h1>
		姓名<input type="text" name="txtName" id="txtName" value=""/><div id="divName" style="display:none;color:red">输入的汉字请不大于4个</div><br/>
		密码<input type="password" name="txtPwd" id="txtPwd" value=""/><div id="divPwd" style="display:none;color:red">请输入密码</div><br/>
		家庭住址<input type="text" name="txtAddress" id="txtAddress" value=""/><div id="divAddress" style="display:none;color:red">请输入家庭住址</div><br/>
<table border="1">	<!-- 单选按钮 -->
		<tr>
			<td>性别</td>
			<td>
				<input type="radio" name="sex" value="man"/>男
				<input type="radio" name="sex" value="woman" checked/>女
			</td>
		</tr>
		
		
		<!-- 复选按钮 -->
		<tr>
			<td>喜欢的运动</td>
			<td>
				<input type="checkbox" name="sport" value="football"/>football
				<br/>
				<input type="checkbox" name="sport" value="basketball">basketball
				<br/>
				<input type="checkbox" name="sport" value=" table tennis" checked>table tennis
			</td>
		</tr>
				
			
		<!-- select标签 -->	
		<tr>
			<td>喜欢的水果</td>
			<td>
				<select name="fruit" size="3" multiple>
					<option value="apple" selected>苹果</option>
					<option value="orange" > 橘子</option>
					<option value="banana">香蕉</option>
					<option value="pear">梨</option>
				</select>
			</td>	
		</tr>
		
		<!-- textarea标签 -->
		<tr>
			<td>
				你的建议与意见
			</td>
			<td>
				<textarea name="suggestion" rows="3" cols="12"></textarea>
			</td>
		</tr>
				

	</table>
		<input type="submit" value="提交" onclick="return intercepting();"/>
	</div>
	</form>
</body>
</html>