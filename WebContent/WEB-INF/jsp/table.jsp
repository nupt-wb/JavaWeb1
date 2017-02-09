<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>表格相关</title>
</head>
<body>
	<table border="1" cellpadding = "20" cellspacing="0" bordercolor="#FFFF00" style="border-collapse:collapse" >
	  <thead>
		<tr>
			<td align="center">姓名</td>
			<td align="center">年龄</td>
			<td align="center">lol</td>
		</tr>
	  </thead>
	  <tbody>
		<tr>
			<td align="center">张三</td>
			<td align="center">5</td>
			<td align="center">6</td>
		</tr>
		<tr>
			<td align="center">李四</td>
			<td rowspan="2" align="center">4</td>
			<td align="center">7</td>
		</tr>
		<tr>
			<td align="center">1</td>
			<td align="center">8</td>
		</tr>
	  </tbody>
	  <tfoot>
		<tr>
		    <td align="center">2</td>
			<td colspan="2" align="center">3</td>
		</tr>
	  </tfoot>
	</table>
	
	
	<br/>
	

	
	
	<table border="2" cellpadding = "20">
	<caption>学生信息表</caption>
	  <thead>
		<tr>
			<th>学号</th>
			<th>姓名</th>
			<th>年龄</th>
		</tr>
	  </thead>
	  <tbody>
		<tr style="color:blue">
		    <td>001</td>
			<td>张三</td>
			<td>40</td>
		</tr>
		<tr>
			<td>002</td>
			<td>李四</td>
			<td>30</td>
		</tr>
	  </tbody>
	  <tfoot>
		<tr>
			<td colspan="3" align="center">这是表尾</td>
		</tr>
	  </tfoot>
	</table>
	
	
	
	
	<br/>
	
	
	
	
	
	<table border="2" width="300" 
   cellpadding="2" cellspacing="1">
	<tr>
		<td>0</td>
		<td>1</td>
		<td>2</td>
		<td>3</td>
	</tr>
	<tr>
		<td>4</td>
		<td rowspan="3">09</td>
		<td>5</td>
		<td>6</td>
	</tr>
	<tr>
		<td>7</td>
		<td>8</td>
		<td>9</td>
	</tr>

</table>
	
	

</body>
</html>