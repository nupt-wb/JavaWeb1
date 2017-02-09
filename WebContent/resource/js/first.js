function popup(){
	alert("中文");
}

function testNumber(){
	
	var num = "1232q";
	alert(typeof num);
	if(num==undefined || num==null){
		alert("请输入一个数字");
	}else{
		if(isNaN(num)){
			alert("num 不是一个数字");
		}else{
			alert("num 是一个数字");
		}
	}

}

function test1(){
//	==内容相等
//	===严格相等，内容和类型都相等
	
	var num1 = 10;
	var num2 = "10";
	if(num1 == num2){
		alert("==");
	}
	if(num1 === num2){
		alert("===");
	}
	
}

function test2(){
//	==内容不相等
//	===严格不相等，内容和类型都不相等
	var num = 11;
	var num1 ="11";
	
	if(num != num1){
		alert("!=");
	}
	if(num !== num1){
		alert("!==");
	}
}

function test3(){
	var n = window.prompt("请输入1~100之间的数字");
	var grade = parseInt(n);
	var str = grade > 60 ? "及格":"不及格";
	alert(str);
}

function test4(){
	var num ='ffff';
	alert(!num);
	//alert(!0); //!null true
	//alert(!undefined); //true
	
}
function clickMethod(){
	var v1 = document.a.a1.value;   //name id都可以
	var v2 = document.forms[1].elements[0].value; //name id都可以
	var v3 = $("#a1").val();  //只能是id
	var v4 = document.getElementById("a1").value; //只能是id
	
	
	alert(v1);
	alert(v2);
	alert(v3);
    alert(v4);
    var t1 = document.getElementById("p").innerText;
    var t = document.getElementById("d").innerText;
    alert(t1);
    alert(t);
}
//document.forms[索引].elements[索引].属性
//
//document.表单名.元素名.属性

function testObject(){
	var student =new Object();
	student.name ="小王";
	student.age =22;
	student.address="南京";
	
	for(e in student){
		alert(student[e]);
	}
}

function testEscape(){
	var name = $("#a1").val();
	//var url ="http://localhost:8080/JavaWeb/a?name="+name;
	name = window.encodeURI(window.encodeURI(name));
	//js跳转到相应的url
	window.location.href="http://localhost:8080/JavaWeb/a?a1="+name;
}

function a(var1,var2){
	var sum = b(var1,var2);
	alert(sum);
}
function b(var1,var2){

	return (parseInt(var1)+parseInt(var2));
}

function testConfirm(){
	if(confirm("确定要离开此页面吗？")==true){
		alert("你单击了OK按钮！");
	}else{
		alert("你单击了Canel按钮");
	}
}
function testArray(){
	var array = new Array(10);
	array =[1,"吴兵",3];
	for(var i=0; i< array.length;i++){
		alert(array[i]);
	}
	
	for( var index in array){
		alert(array[index]);
	}
	var a = new Array([1,2,3],[4,5,6]);
	alert(a[1][1]);
}

function testString(){
	var str1 = "love meng meng ! la la la";
	var str2 ="wubing";
	alert(str1.charAt(3));
	alert(str2.concat(str1));
	alert(str1.indexOf("meng",0));
	var array = str1.split(" ",4);
	for(index in array){
		alert(array[index]);
	}
	alert(str1.substring(5, 9));
}



function testZhuanYi(str){
	alert("\""+str.substring(0,4)+"\"");
}


function testDate(){
	var date = new Date();
	var date1 = new Date("10/14/2015 14:24:44");
	alert(date.getFullYear()+"年"+(date.getMonth()+1)+"月"+date.getDate()+"日"+date.getHours()
			+":"+date.getMinutes()+":"+date.getSeconds());
	alert(date.toLocaleDateString());  //2016年10月14日
	alert(date.toLocaleString());       // 2016年10月14日   14:45:32
	alert(date.toLocaleTimeString());   //14:45:32
}

function testJSON(){
	var user = {
			name:"",
			pwd:"",
			address:"",
			show:function(val){
				alert(val);
			}
	};
	var str = "老大，我错了!";
	user.show(str);
}



















