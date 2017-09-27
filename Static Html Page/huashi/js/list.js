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

function showLei(){
	$("#hualei").css("display","block");
	$("#lun").css("display","block");
}
function hidLei(){
	$("#hualei").css("display","none");
	$("#lun").css("display","none");
}

