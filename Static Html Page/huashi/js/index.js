// JavaScript Document
//我的订单
function showOrd(){
	$("#myord").css("display","block");
}
function hidord(){
	$("#myord").css("display","none");
}
//我的收藏
function showColl(){
	$("#mycoll").css("display","block");
}
function hidcoll(){
	$("#mycoll").css("display","none");
}
function showCli(){
	$("#myCli").css("display","block");
}
function hidCli(){
	$("#myCli").css("display","none");
}

//类别的显示
function showMenu(id){
	for(var i=1;i<=8;i++){
		var div=document.getElementById("fu"+i);
		
		//判读是否要显示
		if(parseInt(id)==i){
			div.style.display="block";
		}else{
			div.style.display="none";
		}
	}
}

function hiddFu(){
		for(var i=1;i<=8;i++){
			var div=document.getElementById("fu"+i);
			div.style.display="none";
		}
}

//图片轮循
var index=1;
var maxIndex=4;
function changeImg(){
	//先循环
	
	for(var i=1;i<=maxIndex;i++){
		//获取到每一张图片
		var img=document.getElementById("img"+i);
		var shu=document.getElementById("shu"+i)
		//如果获取到的图片位置等于要显示的w位置
		if(i==index){
			//显示图片
			img.style.display="block";
			shu.style.backgroundColor="#F32613";
			
		}else{
			//隐藏图片
			img.style.display="none";
			shu.style.backgroundColor="#868398";
			
			}
	}
	if(index==maxIndex){
		index=1;
	}else{
		index++;
	}
}setInterval("changeImg()",3000);
function showConImg(id){
	for(var i=1;i<=maxIndex;i++){
		var img=document.getElementById("img"+i);
		var shu=document.getElementById("shu"+i);
		if(id==i){
			img.style.display="block";
			index=i;
			shu.style.backgroundColor="#F32613";
			shu.style.color="#FFFFFF";
		}else{
			img.style.display="none";
			shu.style.backgroundColor="#868398";
			shu.style.color="#C7744F";
		}
	}
}

//特区
$(document).ready(function(e) {
	$("#contop1").css("border-bottom-color","#F00");
    $("#contop1").hover(testType,typeHidd);
	$("#contcon1").hover(testType,typeHidd);
	
	
	$("#contop2").hover(testType2,typeHidd2);
	$("#contcon2").hover(testType2,typeHidd2);
	
	$("#contop3").hover(testType3,typeHidd3);
	$("#contcon3").hover(testType3,typeHidd3);
	
	$("#contop4").hover(testType4,typeHidd4);
	$("#contcon3").hover(testType4,typeHidd4);
	
	$("#contop5").hover(testType5,typeHidd5);
	$("#contcon5").hover(testType5,typeHidd5);
});
function testType(){
	$("#contop1").css("border-bottom-color","#F00");
	$("#contop2").css("border-bottom-color","#Fff");
	$("#contop3").css("border-bottom-color","#Fff");
	$("#contop4").css("border-bottom-color","#Fff");
	$("#contop5").css("border-bottom-color","#Fff");
	
	$("#contcon1").css("display","block");
	$("#contcon2").css("display","none");
	$("#contcon3").css("display","none");
	$("#contcon4").css("display","none");
	$("#contcon5").css("display","none");
}
function typeHidd(){
	
	
}

function testType2(){
	$("#contop1").css("border-bottom-color","#Fff");
	$("#contop2").css("border-bottom-color","#F00");
	$("#contop3").css("border-bottom-color","#Fff");
	$("#contop4").css("border-bottom-color","#Fff");
	$("#contop5").css("border-bottom-color","#Fff");
	
	
	$("#contcon1").css("display","none");
	$("#contcon2").css("display","block");
	$("#contcon3").css("display","none");
	$("#contcon4").css("display","none");
	$("#contcon5").css("display","none");;
}
function typeHidd2(){
	
	
}

function testType3(){
	$("#contop1").css("border-bottom-color","#Fff");
	$("#contop2").css("border-bottom-color","#Fff");
	$("#contop3").css("border-bottom-color","#F00");
	$("#contop4").css("border-bottom-color","#Fff");
	$("#contop5").css("border-bottom-color","#Fff");
	
	$("#contcon1").css("display","none");
	$("#contcon2").css("display","none");
	$("#contcon3").css("display","block");
	$("#contcon4").css("display","none");
	$("#contcon5").css("display","none");
}
function typeHidd3(){
	
	
}

function testType4(){
	$("#contop1").css("border-bottom-color","#Fff");
	$("#contop2").css("border-bottom-color","#Fff");
	$("#contop3").css("border-bottom-color","#Fff");
	$("#contop4").css("border-bottom-color","#F00");
	$("#contop5").css("border-bottom-color","#Fff");
	
	$("#contcon1").css("display","none");
	$("#contcon2").css("display","none");
	$("#contcon3").css("display","none");
	$("#contcon4").css("display","block");
	$("#contcon5").css("display","none");
}
function typeHidd4(){
	
	
}

function testType5(){
	$("#contop1").css("border-bottom-color","#Fff");
	$("#contop2").css("border-bottom-color","#Fff");
	$("#contop3").css("border-bottom-color","#Fff");
	$("#contop4").css("border-bottom-color","#Fff");
	$("#contop5").css("border-bottom-color","#F00");
	
	$("#contcon1").css("display","none");
	$("#contcon2").css("display","none");
	$("#contcon3").css("display","none");
	$("#contcon4").css("display","none");
	$("#contcon5").css("display","block");
}
function typeHidd5(){
	
	
}