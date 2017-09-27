// JavaScript Document
$(document).ready(function(e) {
    $("#addshou").click(shows);
	$("#hiedAd").click(hidead);
	$("#baocuns").click(hideads);
});
function shows(){
	$("#showadd").css("display","block");	
}
function hidead(){
	$("#showadd").css("display","none");
}
function hideads(){
	$("#showadd").css("display","none");
}

$(document).ready(function(e) {
    $("#updatebian").click(showsu);
	$("#hiedAdu").click(hideadu);
	$("#baocunsu").click(hideadsu);
});
function showsu(){
	$("#showaddu").css("display","block");	
}
function hideadu(){
	$("#showaddu").css("display","none");
}
function hideadsu(){
	$("#showaddu").css("display","none");
}

$(document).ready(function(e) {
    $("#uppwd").click(showpwd);
	$("#hiedpwd").click(hidpwd);
	$("#xiupwd").click(hidpwd);
	$("#gengs").click(showpwd);
	
	
});

function showpwd(){
	$("#showpwd").css("display","block");	
}
function hidpwd(){
	$("#showpwd").css("display","none");
}


$(document).ready(function(e) {
	$("#shouji").click(showphones);
	$("#hiedphoness").click(hidphones);
	$("#xiuphonesss").click(hidphones);
});

function showphones(){
	$("#showphone").css("display","block");
}
function hidphones(){
	$("#showphone").css("display","none");
}