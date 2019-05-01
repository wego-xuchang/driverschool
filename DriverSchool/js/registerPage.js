
/*判断学员名字*/
var trainee_name_ok = false;
function check_trainee_name() {
    var trainee_name = trainee.trainee_name.value;
    if(trainee_name=="" ||trainee_name==null){
        document.getElementById("trainee_span1").innerHTML="用户名为空！".fontcolor("red");
        trainee_name_ok = false;
        return false;
    }
    else if(trainee_name.length<=16 &&trainee_name.length>=4){
        document.getElementById("trainee_span1").innerHTML="输入正确！".fontcolor("green");
        trainee_name_ok = true;
        return true;
    }else
        document.getElementById("trainee_span1").innerHTML="用户名请输入4到16位！".fontcolor("red");
        trainee_name_ok = false;
        return false;
}
/*判断教练名字*/
var trainer_name_ok = false;
function check_trainer_name() {
    var trainer_name = trainer.trainer_name.value;
    if(trainer_name=="" ||trainer_name==null){
        document.getElementById("trainer_span1").innerHTML="用户名为空！".fontcolor("red");
        trainer_name_ok = false;
        return false;
    }
    else if(trainer_name.length<=16 &&trainer_name.length>=4){
        document.getElementById("trainer_span1").innerHTML="输入正确！".fontcolor("green");
        trainer_name_ok = true;
        return true;
    }else
        document.getElementById("trainer_span1").innerHTML="用户名请输入4到16位！".fontcolor("red");
    trainer_name_ok = false;
    return false;
}
/*判断学员密码*/
var trainee_password_ok = false;
function check_trainee_password() {
    var trainee_password = trainee.trainee_password.value;
    if(trainee_password.length>16||trainee_password.length<4){
        document.getElementById("trainee_span2").innerHTML="请输入4到16位密码！".fontcolor("red");
        trainee_password_ok = false;
        return false;
    }else
        document.getElementById("trainee_span2").innerHTML="请确认密码！".fontcolor("green");
        trainee_password_ok = false;
        return true;
}
function check_trainee_Repassword() {
    var trainee_password = trainee.trainee_password.value;
    var trainee_repassword = trainee.trainee_repassword.value;
    if(trainee_repassword.length>16||trainee_repassword.length<4){
        document.getElementById("trainee_span2").innerHTML="请输入4到16位密码！".fontcolor("red");
        trainee_password_ok = false;
        return false;
    }else if(trainee_repassword!=trainee_password){
        document.getElementById("trainee_span2").innerHTML="确认密码与密码不一致，请重新输入！".fontcolor("red");
        trainee_password_ok = false;
        return false;
    }else{
        document.getElementById("trainee_span2").innerHTML="输入正确！".fontcolor("green");
        trainee_password_ok = true;
        return true;
    }

}
/*判断教练密码*/
var trainer_password_ok = false;
function trainer_check_password() {
    var trainer_password = trainer.trainer_password.value;
    if(trainer_password.length>16||trainer_password.length<4){
        document.getElementById("trainer_span2").innerHTML="请输入4到16位密码！".fontcolor("red");
        trainer_password_ok = false;
        return false;
    }else
        document.getElementById("trainer_span2").innerHTML="请确认密码！".fontcolor("green");
    trainer_password_ok = false;
    return true;
}
function check_trainer_Repassword() {
    var trainer_password = trainer.trainer_password.value;
    var trainer_repassword = trainer.trainer_repassword.value;
    if(trainer_repassword.length>16||trainer_repassword.length<4){
        document.getElementById("trainer_span2").innerHTML="请输入4到16位密码！".fontcolor("red");
        trainer_password_ok = false;
        return false;
    }else if(trainer_repassword!=trainer_password){
        document.getElementById("trainer_span2").innerHTML="确认密码与密码不一致，请重新输入！".fontcolor("red");
        trainer_password_ok = false;
        return false;
    }else{
        document.getElementById("trainer_span2").innerHTML="输入正确！".fontcolor("green");
        trainer_password_ok = true;
        return true;
    }

}

/*4位随机验证码*/
var code;
var trainee_code_ok = false;
function createCode(n){
    code="";
    var checkCode=document.getElementById("checkCode");
    var sourceStr= new Array(0,1,2,3,4,5,6,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
    for (var i=0; i<n; i++) {
        var charIndex=Math.floor(Math.random()*sourceStr.length);
        code+=sourceStr[charIndex];
    }
    if (checkCode){
        checkCode.className="code";
        checkCode.innerHTML=code;
        //alert(checkCode.value);
    }
}
function validate(){
    var input=document.getElementById("yancode").value;
    if(input==""||input==null){
        document.getElementById("trainee_span5").innerHTML="验证码为空！".fontcolor("red");
        trainee_code_ok = false;
        return false;
    }
    else if(input!=code){
        document.getElementById("trainee_span5").innerHTML="验证码输入不符！".fontcolor("red");
        //document.getElementById("input1").value="";
        createCode(4);
        trainee_code_ok = false;
        return false;
    }
    else {
        document.getElementById("trainee_span5").innerHTML="输入正确！".fontcolor("green");
        trainee_code_ok = true;
        return true;
    }
}
/*验证码，教练*/
var code1;
var trainer_code_ok = false;
function createCode_trainer(n){
    code1="";
    var checkCode=document.getElementById("checkCode_trainer");
    var sourceStr= new Array(0,1,2,3,4,5,6,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
    for (var i=0; i<n; i++) {
        var charIndex=Math.floor(Math.random()*sourceStr.length);
        code1+=sourceStr[charIndex];
    }
    if (checkCode){
        checkCode.className="code1";
        checkCode.innerHTML=code1;
        //alert(checkCode.value);
    }
}
function validate_trainer(){
    var input=document.getElementById("yancode_trainer").value;
    if(input==""||input==null){
        document.getElementById("trainer_span5").innerHTML="验证码为空！".fontcolor("red");
        trainer_code_ok = false;
        return false;
    }
    else if(input!=code1){
        document.getElementById("trainer_span5").innerHTML="验证码输入不符！".fontcolor("red");
        //document.getElementById("input1").value="";
        createCode_trainer(4);
        trainer_code_ok = false;
        return false;
    }
    else {
        document.getElementById("trainer_span5").innerHTML="输入正确！".fontcolor("green");
        trainer_code_ok = true;
        return true;
    }
}


/*判断学员手机号码*/
var trainee_phone_ok = false;
function check_trainee_phone() {
    var phone=trainee.traineeTelephone.value;
    var reg = new RegExp("^[1][3,4,5,7,8][0-9]{9}$"); //正则表达式
    if(phone=="" ||phone==null){
        document.getElementById("trainee_span4").innerHTML="手机号为空！".fontcolor("red");
        trainee_phone_ok = false;
        return false;
    }
    else if(!reg.test(phone)) {
        document.getElementById("trainee_span4").innerHTML = "请输入正确的手机号码！".fontcolor("red");
        trainee_phone_ok = false;
        return false;
    }else {
        document.getElementById("trainee_span4").innerHTML = "输入正确！".fontcolor("green");
        trainee_phone_ok = true;
        return true;
    }
}

/*判断教练手机*/
var trainer_phone_ok = false;
function check_trainer_phone() {
    var phone=trainer.trainerTelephone.value;
    var reg = new RegExp("^[1][3,4,5,7,8][0-9]{9}$"); //正则表达式
    if(phone=="" ||phone==null){
        document.getElementById("trainer_span4").innerHTML="手机号为空！".fontcolor("red");
        trainer_phone_ok = false;
        return false;
    }
    else if(!reg.test(phone)) {
        document.getElementById("trainer_span4").innerHTML = "请输入正确的手机号码！".fontcolor("red");
        trainer_phone_ok = false;
        return false;
    }else {
        document.getElementById("trainer_span4").innerHTML = "输入正确！".fontcolor("green");
        trainer_phone_ok = true;
        return true;
    }
}


/*判断学员邮箱*/
var trainee_email_ok = false;
function check_trainee_email(){
    var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$"); //正则表达式
    var obj = document.getElementById("traineeEmail"); //要验证的对象
    if(obj.value === ""){ //输入不能为空
        document.getElementById("trainee_span3").innerHTML = "请输入你的邮箱！".fontcolor("red");
        trainee_email_ok = false;
        return false;
    }else if(!reg.test(obj.value)){ //正则验证不通过，格式不对
        document.getElementById("trainee_span3").innerHTML = "请输入正确的邮箱地址！".fontcolor("red");
        trainee_email_ok = false;
        return false;
    }else{
        document.getElementById("trainee_span3").innerHTML = "输入正确！".fontcolor("green");
        trainee_email_ok = true;
        return true;
    }

}
/*判断教练邮箱*/
var trainer_email_ok = false;
function check_trainer_email() {
    var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$"); //正则表达式
    var obj = document.getElementById("trainerEmail"); //要验证的对象
    if(obj.value === ""){ //输入不能为空
        document.getElementById("trainer_span3").innerHTML = "请输入你的邮箱！".fontcolor("red");
        trainer_email_ok = false;
        return false;
    }else if(!reg.test(obj.value)){ //正则验证不通过，格式不对
        document.getElementById("trainer_span3").innerHTML = "请输入正确的邮箱地址！".fontcolor("red");
        trainer_email_ok = false;
        return false;
    }else{
        document.getElementById("trainer_span3").innerHTML = "输入正确！".fontcolor("green");
        trainer_email_ok = true;
        return true;
    }
}

/*验证学员信息*/
function trainee_check_form() {
    if (trainee_name_ok && trainee_password_ok && trainee_phone_ok && trainee_email_ok && trainee_code_ok){
        alert("注册成功!");
        document.getElementById("trainee").submit();
        //location.href="login.html";
        return true;
    }else {
        trainee.trainee_name.onfocus();
        return false;
    }
}
/*验证教练信息*/
function trainer_check_form() {
    if (trainer_name_ok && trainer_password_ok && trainer_phone_ok && trainer_email_ok && trainer_code_ok){
        alert("注册成功!");
        document.getElementById("trainer").submit();
        //location.href="login.html";
        return true;
    }else {
        //trainer.trainer_name.onfocus();
        return false;
    }
}


function traineePost(){
	    $.ajax({
	      url:"/DriverSchool/TraineeServlet?method=traineeRegister",
	      data:$("#trainee").serialize(),
	      type:"post",
	      success:function(data){
	        console.log(data);
	      }
	    });
	  }
function post() {
	var url="/DriverSchool/TraineeServlet";
	var obj={"method":"traineeRegister"};
	$post(url,obj,function(data){},"json");
}