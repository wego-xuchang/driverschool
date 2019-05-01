
var login_phone_email_ok = false;
function check_login_admin() {
    var login_name=form_login_admin.longin_name_admin.value;

    var reg_phone = new RegExp("^[1][3,4,5,7,8][0-9]{9}$"); //正则表达式
    var reg_email = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$"); //正则表达式

    if(login_name=="" ||login_name==null){
        document.getElementById("login_span1_admin").innerHTML="请输入账号！".fontcolor("red");
        login_phone_email_ok = false;
        return false;
    }
    else if(reg_phone.test(login_name) || reg_email.test(login_name)) {
    	checkAdminEmail();
    	//document.getElementById("login_span1_admin").innerHTML = "输入正确！".fontcolor("green");
        login_phone_email_ok = true;
        return true;
    }else {
        document.getElementById("login_span1_admin").innerHTML = "账号错误！".fontcolor("red");
        login_phone_email_ok = false;
        return false;

    }
}

var login_phone_email_ok1 = false;
function check_login_admin1() {
    var login_name1=form_login_admin1.longin_name_admin1.value;

    var reg_phone1 = new RegExp("^[1][3,4,5,7,8][0-9]{9}$"); //正则表达式
    var reg_email1 = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$"); //正则表达式

    if(login_name1=="" ||login_name1==null){
        document.getElementById("login_span1_admin1").innerHTML="请输入账号！".fontcolor("red");
        login_phone_email_ok1 = false;
        return false;
    }
    else if(reg_phone1.test(login_name1) || reg_email1.test(login_name1)) {
    	checkAdminTelephone();
    	//document.getElementById("login_span1_admin1").innerHTML = "输入正确！".fontcolor("green");
        login_phone_email_ok1 = true;
        return true;
    }else {
        document.getElementById("login_span1_admin1").innerHTML = "账号错误！".fontcolor("red");
        login_phone_email_ok1 = false;
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

function checkAdminTelephone() {
	var telephone = document.getElementById("longin_name_admin1").value; // value  value() val val()
	//1. 创建对象
	var request = ajaxFunction();
	
	//2. 发送请求
	request.open("POST"  ,"/DriverSchool/AdminServlet?method=checkAdminTelephone" , true );
	
	//注册状态改变监听，获取服务器传送过来的数据
	request.onreadystatechange = function(){
		
		if(request.readyState == 4 && request.status == 200){
			//alert(request.responseText);
			var data = request.responseText;
			if(data == 1){
				//alert("账号存在");
				document.getElementById("login_span1_admin1").innerHTML = "<font color='green'>用户正确!</font>";
			}else{
				document.getElementById("login_span1_admin1").innerHTML = "<font color='red'>您不是管理员，请咨询客服!</font>";
				//alert("账号不存在");
			}
		}
		
	}
	
	request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	request.send("telephone="+telephone);
}
function checkAdminEmail() {
	var email = document.getElementById("longin_name_admin").value; // value  value() val val()
	//1. 创建对象
	var request = ajaxFunction();
	
	//2. 发送请求
	request.open("POST"  ,"/DriverSchool/AdminServlet?method=checkAdminEmail" , true );
	
	//注册状态改变监听，获取服务器传送过来的数据
	request.onreadystatechange = function(){
		
		if(request.readyState == 4 && request.status == 200){
			//alert(request.responseText);
			var data = request.responseText;
			if(data == 1){
				//alert("账号存在");
				document.getElementById("login_span1_admin").innerHTML = "<font color='green'>用户正确!</font>";
			}else{
				document.getElementById("login_span1_admin").innerHTML = "<font color='red'>您不是管理员，请咨询客服!</font>";
				//alert("账号不存在");
			}
		}
		
	}
	
	request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	request.send("email="+email);
}



/*验证密码*/
var login_password_ok = false;
function check_password_admin() {
    var login_password = document.getElementById("login_password_admin").value;
    if(login_password.length>16||login_password.length<4){
        document.getElementById("login_span2_admin").innerHTML="请输入4到16位密码！".fontcolor("red");
        login_password_ok = false;
        return false;
    }else
        document.getElementById("login_span2_admin").innerHTML="请确认密码！".fontcolor("green");
    login_password_ok = true;
    return true;
}

var login_password_ok1 = false;
function check_password_admin1() {
    var login_password1 = document.getElementById("login_password_admin1").value;
    if(login_password1.length>16||login_password1.length<4){
        document.getElementById("login_span2_admin1").innerHTML="请输入4到16位密码！".fontcolor("red");
        login_password_ok1 = false;
        return false;
    }else
        document.getElementById("login_span2_admin1").innerHTML="请确认密码！".fontcolor("green");
    login_password_ok1 = true;
    return true;
}

/*4位随机验证码*/
var code_admin;
var login_code_ok = false;
function createCode_admin(n){
	code_admin="";
    var checkCode=document.getElementById("checkCode_admin");
    var sourceStr= new Array(0,1,2,3,4,5,6,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
    for (var i=0; i<n; i++) {
        var charIndex=Math.floor(Math.random()*sourceStr.length);
        code_admin+=sourceStr[charIndex];
    }
    if (checkCode){
        checkCode.className="code_admin";
        checkCode.innerHTML=code_admin;
        //alert(checkCode.value);
    }
}
function validate_admin(){
    var input=document.getElementById("yancode_admin").value;
    if(input==""||input==null){
        document.getElementById("login_span3_admin").innerHTML="验证码为空！".fontcolor("red");
        login_code_ok = false;
        return false;
    }
    else if(input!=code_admin){
        document.getElementById("login_span3_admin").innerHTML="验证码输入不符！".fontcolor("red");
        //document.getElementById("input1").value="";
        createCode_admin(4);
        login_code_ok = false;
        return false;
    }
    else {
        document.getElementById("login_span3_admin").innerHTML="输入正确！".fontcolor("green");
        login_code_ok = true;
        return true;
    }
}


var code_admin1;
var login_code_ok1 = false;
function createCode_admin1(n){
	code_admin1="";
    var checkCode1=document.getElementById("checkCode_admin1");
    var sourceStr1= new Array(0,1,2,3,4,5,6,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
    for (var i=0; i<n; i++) {
        var charIndex1=Math.floor(Math.random()*sourceStr1.length);
        code_admin1+=sourceStr1[charIndex1];
    }
    if (checkCode1){
        checkCode1.className="code_admin";
        checkCode1.innerHTML=code_admin1;
        //alert(checkCode.value);
    }
}
function validate_admin1(){
    var input1=document.getElementById("yancode_admin1").value;
    if(input1==""||input1==null){
        document.getElementById("login_span3_admin1").innerHTML="验证码为空！".fontcolor("red");
        login_code_ok1 = false;
        return false;
    }
    else if(input1!=code_admin1){
        document.getElementById("login_span3_admin1").innerHTML="验证码输入不符！".fontcolor("red");
        //document.getElementById("input1").value="";
        createCode_admin1(4);
        login_code_ok1 = false;
        return false;
    }
    else {
        document.getElementById("login_span3_admin1").innerHTML="输入正确！".fontcolor("green");
        login_code_ok1 = true;
        return true;
    }
}