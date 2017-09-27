// JavaScript Document
$(document).ready(function(e) {
    $("#dianshow").click(showtuo);
	$("#dianxin").click(showtuo1);
	
});
function showtuo(){
	$("#tuo").css("display","block");
	$("#slogo").css("font-weight");
}
function showtuo1(){
	$("#tuo").css("display","none");
	$("#slogo").css("display","block");
}