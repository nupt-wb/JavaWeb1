<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html> 
<html> 
<head> 
<title>Developer Drive | Displaying the Progress of Tasks with HTML5 | Demo</title> 
<script type="text/javascript"> 
var currProgress = 0; 
var done = false; 
var total = 100; 
 
function startProgress() { 
var prBar = document.getElementById("prog"); 
var startButt = document.getElementById("startBtn"); 
var val = document.getElementById("numValue"); 
startButt.disabled=true; 
prBar.value = currProgress; 
val.innerHTML = Math.round((currProgress/total)*100)+"%"; 
 
currProgress++; 
if(currProgress>100) done=true; 
if(!done) 
    setTimeout("startProgress()", 100); 
else     
{ 
    document.getElementById("startBtn").disabled = false; 
    done = false; 
    currProgress = 0; 
} 
} 
</script> 
</head> 
<body> 
 
<p>This is a demo to accompany the following tutorial: <a href="http://www.developerdrive.com/2012/07/displaying-the-progress-of-tasks-with-html5">Displaying the Progress of Tasks with HTML5</a></p><hr/> 
 
<p>Task progress:</p> 
<progress id="prog" value="0" max="100"></progress>  
<input id="startBtn" type="button" value="start" onclick="startProgress()"/> 
<div id="numValue">0%</div> 
 
</body> 
</html> 