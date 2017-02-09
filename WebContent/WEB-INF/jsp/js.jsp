<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resource/js/first.js"></script>
<script type="text/javascript" src="resource/js/jquery-3.1.0.min.js"></script>
<script type="text/javascript">

	function show(){
		alert("我是警告框");
	}

	

</script>
<script type="text/javascript">

</script>
</head>
<body>
	<div id ="d">
		<p id="p"> 这是段落</p>
		<p id="pid">我是段落文字</p>
		
	</div>
	
	<form name="aaaa">
		<input type="text" name="a1" id="a1" value=""/>
		<input type="button" onclick="clickMethod()" value="a_button"/>
	</form>
	<form name="bbbbbb">
		<input type="button" value="警告" onclick="show()"/><br/>
		<input type="button" value="打招呼" onclick="popup()"/><br/>
		<input type="button" value="测试是否是数字" onclick="testNumber()" /> <br/>
		<input type="button" value="测试==和===" onclick="test1()"/> <br/>
		<input type="button" value="测试!=和===" onclick="test2()"/><br/>
		<input type="button" value="测试网页输入" onclick="test3()"/> <br/>
		<input type="button" value="测试其他类型是否能转为true" onclick="test4()"/> <br/>
		<input type="button" value="测试for读取Object属性" onclick="testObject()"/> <br/>
		<input type="button" value="测试escape" onclick="testEscape()"/><br/>
		<input type="button" value="测试函数" onclick="a(3,4);"/><br/>
		<input type="button" value="测试confirm" onclick="testConfirm();"/><br/>
		<input type="button" value="测试数组" onclick="testArray();"/><br/>
		<input type="button" value="测试String" onclick="testString();"><br/>
		<input type="button" value="测试转义字符" onclick="testZhuanYi('abcdefg')"><br/>
		<input type="button" value="测试Date" onclick="testDate()"><br/>
		<input type="button" value="测试JSON" onclick="testJSON()"><br/>
 	</form>
</body>
</html>