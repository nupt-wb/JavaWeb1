<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resource/js/jquery-3.1.0.min.js"></script>
<script type="text/javascript"> 
var xmlHttp;
/* function createXMLHttpRequest() {
	//创建XMLHttpRequest对象
	if (window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
	}
	else{
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
}
//处理从服务器返回的响应
function processor() {
	//响应完成
	if (xmlHttp.readyState == 4) {
		//响应成功
		if (xmlHttp.status == 200) {
			var txt = xmlHttp.responseText;
			document.getElementById("div_msg").innerHTML = txt;
		}
	}
}

function requestData() {
	createXMLHttpRequest();
	//将状态触发器绑定到函数
	xmlHttp.onreadystatechange = processor;
	//通过请求参数中使用Math.random()获取随机数来避免使用缓存中的数据
	xmlHttp.open("GET"," second?name=wangmingming&address=beijing&t="+ Math.random(), true);
	xmlHttp.send(null);
} */

function requestData1(){
	var n = $("#txtName").val();
    $.ajax({
//       提交数据的类型 POST GET
        type:"post",
//         提交的网址
        url:"/JavaWeb/abc",
//        提交的数据
        data:{uuid:'1',name:n},
//        返回数据的格式
        dataType:"text",
        //在请求之前调用的函数
        beforeSend:function(){
        	alert("在请求之前调用的函数");
        },
        //成功返回之后调用的函数            
        success:function(d){
        	$("#div_msg").append(d);
            alert(d);
        },
        //调用执行后调用的函数
        complete: function(XMLHttpRequest, textStatus){
           alert(XMLHttpRequest.responseText);
           alert(textStatus);
           alert('调用执行后调用的函数');
            HideLoading();
        },
        //调用出错执行的函数
        error: function(){
            //请求出错处理
            alert('error');
        }        
    });
}


</script>
</head>
<body>
<h2>以GET方式向Servlet提交请求</h2>
<input type="text" name="txtName" id="txtName"/>
<input type="button" value="请求数据" onClick="requestData1()"/>
<div id="div_msg">你好</div>

</body>
</html>