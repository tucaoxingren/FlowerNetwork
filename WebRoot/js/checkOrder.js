// JavaScript Document
//新增地址信息
function inertAddre(){
	var addres=document.getElementById('addres').style.display="block";
	
}
function inertAddre1(){
	var addres=document.getElementById('addres').style.display="none";
	
}
//支付方式
$(document).ready(function(e) {
	
    $("#busOne1").click(busZhiFu);
	$("#busOne2").click(busZhiFu1);
	$("#busOne3").click(busZhiFu2);
	$("#busOne1").css("border-color","#E4393C");
});
function busZhiFu(){
	var busZF1=document.getElementById("busOne1");
	busZF1.style.borderColor="#E4393C";
	var busZF2=document.getElementById("busOne2");
	busZF2.style.borderColor="#dddddd";
	var busZF3=document.getElementById("busOne3");
	busZF3.style.borderColor="#dddddd";
}
function busZhiFu1(){
	var busZF1=document.getElementById("busOne2");
	busZF1.style.borderColor="#E4393C";
	var busZF2=document.getElementById("busOne1");
	busZF2.style.borderColor="#dddddd";
	var busZF3=document.getElementById("busOne3");
	busZF3.style.borderColor="#dddddd";
}
function busZhiFu2(){
	var busZF1=document.getElementById("busOne2");
	busZF1.style.borderColor="#dddddd";
	var busZF2=document.getElementById("busOne1");
	busZF2.style.borderColor="#dddddd";
	var busZF3=document.getElementById("busOne3");
	busZF3.style.borderColor="#E4393C";
}
//派送方式
$(document).ready(function(e) {
    $("#kuaiDi1").click(kuai1);
	$("#kuaiDi2").click(kuai2);
	$("#kuaiDi3").click(kuai3);
	$("#kuaiDi4").click(kuai4);
	$("#kuaiDi5").click(kuai5);
	$("#kuaiDi1").css("border-color","#E4393C");
	
});
function kuai1(){
	var di1=document.getElementById("kuaiDi1");
	di1.style.borderColor="#E4393C";
	
	var di2=document.getElementById("kuaiDi2");
	di2.style.borderColor="#dddddd";
	var di3=document.getElementById("kuaiDi3");
	di3.style.borderColor="#dddddd";
	var di4=document.getElementById("kuaiDi4");
	di4.style.borderColor="#dddddd";
	var di5=document.getElementById("kuaiDi5");
	di5.style.borderColor="#dddddd";	
}
function kuai2(){
	var di1=document.getElementById("kuaiDi1");
	di1.style.borderColor="#dddddd";
	
	var di2=document.getElementById("kuaiDi2");
	di2.style.borderColor="#E4393C";
	var di3=document.getElementById("kuaiDi3");
	di3.style.borderColor="#dddddd";
	var di4=document.getElementById("kuaiDi4");
	di4.style.borderColor="#dddddd";
	var di5=document.getElementById("kuaiDi5");
	di5.style.borderColor="#dddddd";
	
}
function kuai3(){
	var di1=document.getElementById("kuaiDi1");
	di1.style.borderColor="#dddddd";
	
	var di2=document.getElementById("kuaiDi2");
	di2.style.borderColor="#dddddd";
	var di3=document.getElementById("kuaiDi3");
	di3.style.borderColor="#E4393C";
	var di4=document.getElementById("kuaiDi4");
	di4.style.borderColor="#dddddd";
	var di5=document.getElementById("kuaiDi5");
	di5.style.borderColor="#dddddd";
	
}
function kuai4(){
	var di1=document.getElementById("kuaiDi1");
	di1.style.borderColor="#dddddd";
	
	var di2=document.getElementById("kuaiDi2");
	di2.style.borderColor="#dddddd";
	var di3=document.getElementById("kuaiDi3");
	di3.style.borderColor="#dddddd";
	var di4=document.getElementById("kuaiDi4");
	di4.style.borderColor="#E4393C";
	var di5=document.getElementById("kuaiDi5");
	di5.style.borderColor="#dddddd";
	
}
function kuai5(){
	var di1=document.getElementById("kuaiDi1");
	di1.style.borderColor="#dddddd";
	
	var di2=document.getElementById("kuaiDi2");
	di2.style.borderColor="#dddddd";
	var di3=document.getElementById("kuaiDi3");
	di3.style.borderColor="#dddddd";
	var di4=document.getElementById("kuaiDi4");
	di4.style.borderColor="#dddddd";
	var di5=document.getElementById("kuaiDi5");
	di5.style.borderColor="#E4393C";
	
}
