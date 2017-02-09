<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>练习1</title>
</head>
<body>
	<form action="a.jsp" method="post">
		<table align="center" border="1" cellspacing="0">
			<tr>
				<td>姓名</td>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="password" name="pwd"/></td>
			</tr>
			<tr>
				<td>性别</td>
				<td><input type="radio" name="sex" checked/>男<input type="radio" name="sex" />女</td>
			</tr>
			<tr>
				<td>爱好</td>
				<td><input type="checkbox" name="chk" value="music"/>听音乐<br/>
	                <input type="checkbox" name="chk" value="movie"/>看电影<br/>
	                <input type="checkbox" name="chk" value="read"/>读书<br/>			
				</td>
				
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="submit" name="提交" value="提交"/><input type="reset" name="re" value="重置"/></td>
				
			</tr>
		</table>
	</form>
</body>
</html>