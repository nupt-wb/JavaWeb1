<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CSS相关</title>
 <link href="resource/css/style.css" rel="stylesheet" type="text/css"> 
<style type="text/css">
/* HTML标签选择器 */
  	p{  
  		text-align:center;  
  		color:blue;  
  		font-size:12pt;  
  		display:block;
 	}  
/* 	@import url("resource/css/style.css"); */

/* 	类选择器 */
	p.one{
		text-align:center;
		color:yellow;
		font-size:22pt;
	}                                
	
/* id选择器 */
	#ff{
		text-align:center;
		color:green;
		font-size:32pt;
		
	}
	
/* 	包含选择符 */
p em{
	text-align:left;
	color:#edcaaa;
	
	font-size:50pt;
}

/* 伪类*/
/* a:link{color:red;} */
/* a:hover{color:blue;} */
/* a:active{color:green;} */
/* a:visited{color:black;} */
	a:visited{font-size:12pt;text-decoration:none;color:black}
  a:link{font-size:14pt;text-decoration:underline;color:red}
  
  a:hover{font-size:16pt;text-decoration:none;color:#FFCC00}
  a:active{font-size:18pt;text-decoration:underline;color:blue}

</style>
</head>

<body style="cursor:pointer">
 		
 

	<div id="ff"  >
	
		<a href="http://www.baidu.com" target="_blank">百度</a><br/> 
 		<a href="http://www.souhu.com" target="_blank">搜狐</a><br/> 
 		<a href="http://www.taobao.com" target="_blank">淘宝</a><br/> 
		哦呵呵
		<p >白日依山尽，黄河入海流</p>
		<p class="one">类选择符</p>
		<p class="one">欲穷千里目，更上一层楼</p>
		<p><em>包含em选择符</em></p>
		<em>不包含em</em>
		<div class="one">变不变</div>
	</div>
</body>
</html>