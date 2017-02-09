<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>表单相关</title>
</head>
<body>
	<form action="a" method="post" id="f">                  <!-- method = "get" -->
		姓名：<input type="text" name="name"  value="" maxlength="30" onchange="javascript:alert('小王');"/>
		<br/>
		密码：<input type="password" name="pwd"/><br/>
		<input type="submit"  value="提交" />  <!-- 自动提交form -->
		 <!--<input type="button"  value="提交" />   不会自动提交form -->
		 <input type="reset" value="重置"/>
		 <input type="button" value="button" onclick="alert('button');"/>
		 <input type="button" value="button1" onclick='alert("button1");'/>
		 <input type="button" value="button2" onclick="submit();"/><br/>
		
		 <input type="radio" name="体育运动"  value="篮球" />篮球<br/>	
		 <input type="radio" name="体育运动"  value="足球"  />足球<br/>	
		 <input type="radio" name="体育运动"  value="乒乓球" checked />乒乓球<br/>	 
		 <input type="radio" name="体育运动"  value="羽毛球"  />羽毛球<br/>

		 <input type="checkbox" name="chk"  value="basketball"  />basketball<br/>
		 <input type="checkbox" name="chk"  value="football"  />football<br/>
		 <input type="checkbox" name="chk"  value="table tennis"  />table tennis<br/>
		 <input type="radio" name="sex" id="rd" value="1"/>男
		 <input type="radio" name="sex" id="r" value="2"/>女
		 <br/>
		 <input type="file" name="file" value=""/>
		 <br/>
		 城市
		 <select name="city" size="4" multiple>
		 	<option value="nj">南京</option>
		 	<option value="sh" selected="selected">上海</option>
		 	<option value="bj" selected="selected">北京</option>
		 	<option value="yc" >盐城</option>
		 </select>
		 <textarea name="t" rows="4" cols="20" readonly> 建议
		 </textarea>
		 
	</form>
	<iframe src="http://www.souhu.com" height="300" width="400"></iframe>
</body>
<iframe src="http://www.souhu.com" height="300" width="400"></iframe>
</html>