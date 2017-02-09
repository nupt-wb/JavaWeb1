<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>练习2</title>
</head>
<body>
	<form action="a.jsp" method="post">
		<table border="1">
			<tr>
				<td>请选择喜欢的水果</td>
				<td colspan="2">
					<select name="fruit" size="5" multiple>
						<option value="apple">apple</option>
						<option value="orange">orange</option>
						<option value="banana" selected="selected">banana</option>
						<option value="cherry" selected="selected">cherry</option>
              			<option value="pear">pear</option>
              			<option value="watermelon">water melon</option>	
					</select>
				</td>
				
			</tr>
			
			<tr>
				<td>请填写建议与意见</td>
				<td colspan="2">
					<textarea name="suggestion" rows="4" cols="20" ></textarea>
				</td>
			</tr>
			<tr align="center">
				<td colspan="3" >
					<input type="submit" name="提交" value="提交"/>
					<input type="reset" name="重置" value="重置">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>