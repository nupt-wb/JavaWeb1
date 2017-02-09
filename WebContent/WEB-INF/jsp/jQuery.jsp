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
	var flag =1;
	$(document).ready(function(){
		//select事件
		$("select[name=fruit]").change(function(){
			if($("select[name=fruit]").find("option:selected").val()=="apple"){
				alert("苹果");	
			}	
		});
		
		//鼠标事件
		$("#divHH").mouseover(function(){
			flag++;
		});
		$("#divHH").bind("mouseup",function(){
			flag ++;
			alert(flag);
		});
		$("#dc").click(function(){
			//$("#divHH").fadeOut("slow");
			//alert($("#divHH").text());
			//$("#divHH").attr("style","background-color:blue");
			$("<div id='abc'>哈哈哈</div>").insertAfter("#divHH");
			alert($("#abc").text());
		});
	});
		
	$(document).ready(function(){
		$("input").click(function(){
			$(this).hide();
		});
		
	});
</script>
</head>
<body>
	<form>
		<div id="divHH" style="background-color:red">hehe</div>
		<input id="dc" type="button" value="淡出" /><br/>
		<input type="text" />
		<select name="fruit" size="3" multiple>
					<option value="apple" selected>苹果</option>
					<option value="orange" > 橘子</option>
					<option value="banana">香蕉</option>
					<option value="pear">梨</option>
				
		</select>
	</form>
</body>
</html>