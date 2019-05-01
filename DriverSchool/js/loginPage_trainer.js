/*判断教练账号 手机号码*/
var login_phone_email_ok = false;
function check_login() {
    var login_name=form_login.longin_name.value;

    var reg_phone = new RegExp("^[1][3,4,5,7,8][0-9]{9}$"); //正则表达式
    //var reg_email = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$"); //正则表达式

    if(login_name=="" ||login_name==null){
        document.getElementById("login_span1").innerHTML="请输入账号！".fontcolor("red");
        login_phone_email_ok = false;
        return false;
    }
    else if(reg_phone.test(login_name) ) {
    	checkTrainerTelephone();
        //document.getElementById("login_span1").innerHTML = "输入正确！".fontcolor("green");
        login_phone_email_ok = true;
        return true;
    }else {
        document.getElementById("login_span1").innerHTML = "账号错误！".fontcolor("red");
        login_phone_email_ok = false;
        return false;

    }
}
/*邮件*/
var trainer_email_ok = false;
function trainerEmail(){
	//alert("OK");
    //var email1=trainerEmailFrom.trainerEmail1.value;
    var email1 = document.getElementById("trainerEmail1").value;
    var email2 = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$"); //正则表达式
    if(email1=="" ||email1==null){
        document.getElementById("spanEmail1").innerHTML="请输入账号！".fontcolor("red");
        trainer_email_ok = false;
        return false;
    }else if(email2.test(email1) ) {
        //document.getElementById("spanEmail1").innerHTML = "输入正确！".fontcolor("green");
        checkTrainerEmail();
        trainer_email_ok = true;
        return true;
    }else {
        document.getElementById("spanEmail1").innerHTML = "账号错误！".fontcolor("red");
        trainer_email_ok = false;
        return false;

    }

}


//1. 创建对象
function  ajaxFunction(){
   var xmlHttp;
   try{ // Firefox, Opera 8.0+, Safari
        xmlHttp=new XMLHttpRequest();
    }
    catch (e){
	   try{// Internet Explorer
	         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
	      }
	    catch (e){
	      try{
	         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
	      }
	      catch (e){}
	      }
    }

	return xmlHttp;
 }

function checkTrainerTelephone() {
	//获取输入框的值 document 整个网页 获取学员手机号码
	var telephone = document.getElementById("longin_name").value; // value  value() val val()
	//1. 创建对象
	var request = ajaxFunction();
	
	//2. 发送请求
	request.open("POST"  ,"/DriverSchool/TrainerServlet?method=checkTrainerTelephone" , true );
	
	//注册状态改变监听，获取服务器传送过来的数据
	request.onreadystatechange = function(){
		
		if(request.readyState == 4 && request.status == 200){
			//alert(request.responseText);
			var data = request.responseText;
			if(data == 1){
				//alert("账号存在");
				document.getElementById("login_span1").innerHTML = "<font color='green'>用户正确!</font>";
			}else{
				document.getElementById("login_span1").innerHTML = "<font color='red'>账号不存在，请注册!</font>";
				//alert("账号不存在");
			}
		}
		
	}
	
	request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	request.send("telephone="+telephone);
}


/*异步验证教练邮箱*/
function checkTrainerEmail() {
	//获取输入框的值 document 整个网页
	var email = document.getElementById("trainerEmail1").value; // value  value() val val()
	//1. 创建对象
	var request = ajaxFunction();
	
	//2. 发送请求
	request.open("POST"  ,"/DriverSchool/TrainerServlet?method=checkTrainerEmail" , true );
	
	//注册状态改变监听，获取服务器传送过来的数据
	request.onreadystatechange = function(){
		
		if(request.readyState == 4 && request.status == 200){
			//alert(request.responseText);
			var data = request.responseText;
			if(data == 1){
				//alert("用户邮箱存在");
				document.getElementById("spanEmail1").innerHTML = "<font color='green'>输入正确!</font>";
			}else{
				document.getElementById("spanEmail1").innerHTML = "<font color='red'>邮箱不存在，请注册！</font>";
				//alert("邮箱不存在，请注册！");
			}
		}
		
	}
	
	request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	request.send("email="+email);
}
/*验证密码 手机*/
var login_password_ok = false;
function check_password() {
    var login_password = form_login.login_password.value;
    if(login_password.length>16||login_password.length<4){
        document.getElementById("login_span2").innerHTML="请输入4到16位密码！".fontcolor("red");
        login_password_ok = false;
        return false;
    }else
        document.getElementById("login_span2").innerHTML="请确认密码！".fontcolor("green");
    login_password_ok = true;
    return true;
}
/*验证密码 邮箱*/
var login_password_ok1 = false;
function check_password1() {
    //var login_password1 = form_login.login_password1.value;
	var login_password1 =document.getElementById("login_password1").value;
    if(login_password1.length>16||login_password1.length<4){
        document.getElementById("spanEmail2").innerHTML="请输入4到16位密码！".fontcolor("red");
        login_password_ok1 = false;
        return false;
    }else
        document.getElementById("spanEmail2").innerHTML="请确认密码！".fontcolor("green");
    login_password_ok1 = true;
    return true;
}


/*4位随机验证码 手机*/
var code;
var login_code_ok = false;
function createCode(n){
    code="";
    var checkCode=document.getElementById("checkCode");
    var sourceStr= new Array(0,1,2,3,4,5,6,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
    for (var i=0; i<n; i++) {
        var charIndex=Math.floor(Math.random()*sourceStr.length);
        code+=sourceStr[charIndex];
    }
    if (checkCode){
        //checkCode.className="code";
        checkCode.innerHTML=code;
        //alert(checkCode.value);
    }
}
function validate(){
    var input=document.getElementById("yancode").value;
    if(input==""||input==null){
        document.getElementById("login_span3").innerHTML="验证码为空！".fontcolor("red");
        login_code_ok = false;
        return false;
    }
    else if(input!=code){
        document.getElementById("login_span3").innerHTML="验证码输入不符！".fontcolor("red");
        //document.getElementById("input1").value="";
        createCode(4);
        login_code_ok = false;
        return false;
    }
    else {
        document.getElementById("login_span3").innerHTML="输入正确！".fontcolor("green");
        login_code_ok = true;
        return true;
    }
}


/*4位随机验证码 邮箱*/
var code1;
var login_code_ok1 = false;
function createCode1(n){
    code1="";
    var checkCode1=document.getElementById("checkCode1");
    var sourceStr1= new Array(0,1,2,3,4,5,6,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
    for (var i=0; i<n; i++) {
        var charIndex1=Math.floor(Math.random()*sourceStr1.length);
        code1+=sourceStr1[charIndex1];
    }
    if (checkCode1){
        //checkCode.className="code";
        checkCode1.innerHTML=code1;
        //alert(checkCode.value);
    }
}
function validate1(){
    var input1=document.getElementById("yancode1").value;
    if(input1==""||input1==null){
        document.getElementById("spanEmail3").innerHTML="验证码为空！".fontcolor("red");
        login_code_ok1 = false;
        return false;
    }
    else if(input1!=code1){
        document.getElementById("spanEmail3").innerHTML="验证码输入不符！".fontcolor("red");
        //document.getElementById("input1").value="";
        createCode1(4);
        login_code_ok1 = false;
        return false;
    }
    else {
        document.getElementById("spanEmail3").innerHTML="输入正确！".fontcolor("green");
        login_code_ok1 = true;
        return true;
    }
}

function check_form_phone(){
	return true;
/*	if (login_phone_email_ok && login_code_ok && login_password_ok) {
	     document.getElementById("form_login").submit();
	     //location.href="login.html";
	} else {
		return false;
	}*/
}
function check_form_email(){
	return true;
/*if (trainer_email_ok && login_code_ok1 && login_password_ok1) {
     document.getElementById("trainerEmailFrom").submit();
     //location.href="login.html";
     return true;
	} else {
		return false;
	}*/
}

