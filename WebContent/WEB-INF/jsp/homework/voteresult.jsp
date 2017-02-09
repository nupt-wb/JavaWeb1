<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>投票结果</title>
<script type="text/javascript" src="resource/js/jquery-3.1.0.min.js"></script>
<script type="text/javascript" src="resource/js/jquery.cookie.js"></script>
<script type="text/javascript">

function show(){
		<%
		HttpSession httpSession = request.getSession();
		int totalNumber =Integer.parseInt(httpSession.getAttribute("color").toString());
		
		int red = Integer.parseInt(httpSession.getAttribute("red").toString());
		int white = Integer.parseInt(httpSession.getAttribute("white").toString());
		int black = Integer.parseInt(httpSession.getAttribute("black").toString());
		int blue = Integer.parseInt(httpSession.getAttribute("blue").toString());
		
		String redper = Math.round(((double)red/totalNumber)*100)+"%";
		String whiteper = Math.round(((double)white/totalNumber)*100)+"%";
		String blackper = Math.round(((double)black/totalNumber)*100)+"%";
		String blueper = Math.round(((double)blue/totalNumber)*100)+"%";

		
	   %>

	

	
</script>
</head>
<body>
	<p> 投票结果</p>
	
	红色：<progress id="redpro" value=red max=totalNumber></progress> 
	<div id="redDiv"><%=redper %></div>
	白色：<progress id="whitepro" value=white max=totalNumber></progress>
	<div id="whiteDiv"><%=whiteper %></div>
	黑色：<progress id="blackpro" value=black max=totalNumber></progress>
	<div id="blackDiv"><%=blackper %></div>
	蓝色：<progress id="bluepro" value=blue max=totalNumber></progress>
	<div id="blueDiv"><%=blueper %></div>
</body>
</html>