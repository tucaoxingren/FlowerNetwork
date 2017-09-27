// JavaScript Document
$(document).ready(function(e) {
	//用户
   
	
	
});



//密码
function upwd(){
	var pwd=$(this).val();
	var p=/^\d{6,16}$/;
	if(pwd==""){
		$("#a2").text("密码不能为空!").css("display","block");
		return false;
	
	}
	if(p.test(pwd)==false){
		$("#a2").text("6-20个大小写英文字母、符号或数字").css("display","block");
		return false;
	}
	$("#a2").text("6-20个大小写英文字母、符号或数字").css("display","none");
	return true;
}
//二次密码
function upwdok(){
	var pwd=$("#uspwd").val();
	var pwdNew=$(this).val();
	if(pwd!=pwdNew){
		$("#a3").text("两次密码不一致！").css("display","block");
		return false;
	}
	$("#a3").text("两次输入密码必须一致").css("display","none");
	return true;
}

//密码
function usphone(){
	var phone=$(this).val();
	var p=/^\d{11}$/;
	if(phone==""){
		$("#a4").text("电话号码不能为空!").css("display","block");
		return false;
	
	}
	if(p.test(phone)==false){
		$("#a4").text("请输入11手机号码！").css("display","block");
		return false;
	}
	$("#a4").text("请输入11手机号码！").css("display","none");
	return true;
}
