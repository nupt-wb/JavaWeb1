<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>form控件复习</title>
</head>
<body>
	<form action="a" method="get">
	
	<table border="1">
		
		<!-- 单行文本框 -->
		<tr>
			<td>姓名</td>
			<td><input type="text" name="name" value="" size="20" maxlength="10"/></td>
		</tr>
		 
		 
		 <!-- 密码框 -->
		<tr>
			<td>密码</td>
			<td><input type="password" name="pwd" value="" size="20" maxlength="10"/></td>
		</tr>
		
		
		<tr>
			<td colspan="2">
			<!-- 提交按钮 -->
				<input type="submit"  value="提交"/>
			<!-- 重置按钮 -->
				<input type="reset" value="重置"/>
			<!-- 普通按钮 -->
				<input type="button" name="button" value="按钮" onclick="submit();"/>
			</td>
		</tr>
		
		
		
		<!-- 单选按钮 -->
		<tr>
			<td colspan="2">
				<input type="radio" name="sex" value="man"/>男
				<input type="radio" name="sex" value="woman" checked/>女
			</td>
		</tr>
		
		
		<!-- 复选按钮 -->
		<tr>
			<td colspan="2">
				<input type="checkbox" name="sport" value="football"/>football
				<br/>
				<input type="checkbox" name="sport" value="basketball">basketball
				<br/>
				<input type="checkbox" name="sport" value=" table tennis" checked>table tennis
			</td>
		</tr>
				
		
		<!-- 文件上传域  -->
		<tr>
			<td colspan="2">
				<input type="file" name="filename" value="选择文件"/>
			</td>	
		</tr>
			
			
		<!-- select标签 -->	
		<tr>
			<td colspan="2">
				<select name="fruit" size="3" multiple>
					<option value="apple" selected><font color="red" >苹果</font></option>
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
		

	</form>
</body>
</html>