// JavaScript Document
$(function(){
	//初始化Input的灰色提示信息  
	$('input[tipMsg]').inputTipText({pwd:'password,password_confirm'});
	//注册方式切换
	$('.nc-register-mode').tabulous({
		 //动画缩放渐变效果effect: 'scale'
		 effect: 'slideLeft'//动画左侧滑入效果
		//动画下方滑入效果 effect: 'scaleUp'
		//动画反转效果 effect: 'flip'
	});
	var div_form = '#default';
	$(".nc-register-mode .tabs-nav li a").click(function(){
        if($(this).attr("href") !== div_form){
            div_form = $(this).attr('href');
            $(""+div_form).find(".makecode").trigger("click");
    	}
	});
	
//注册表单验证
    $("#register_form").validate({
        errorPlacement: function(error, element){
            var error_td = element.parent('dd');
            error_td.append(error);
            element.parents('dl:first').addClass('error');
        },
        success: function(label) {
            label.parents('dl:first').removeClass('error').find('label').remove();
        },
    	submitHandler:function(form){
    	    ajaxpost('register_form', '', '', 'onerror');
    	},
        onkeyup: false,
        rules : {
            user_name : {
                required : true,
                lettersmin : true,
                lettersmax : true,
                letters_name : true,
                remote   : {
                    url :'index.php?act=login&op=check_member&column=ok',
                    type:'get',
                    data:{
                        user_name : function(){
                            return $('#user_name').val();
                        }
                    }
                }
            },
            password : {
                required : true,
                minlength: 6,
				maxlength: 20
            },
            password_confirm : {
                required : true,
                equalTo  : '#password'
            },
            email : {
                required : true,
                email    : true,
                remote   : {
                    url : 'index.php?act=login&op=check_email',
                    type: 'get',
                    data:{
                        email : function(){
                            return $('#email').val();
                        }
                    }
                }
            },
			            captcha : {
                required : true,
                remote   : {
                    url : 'index.php?act=seccode&op=check&nchash=9cb2e6ef',
                    type: 'get',
                    data:{
                        captcha : function(){
                            return $('#captcha').val();
                        }
                    },
                    complete: function(data) {
                        if(data.responseText == 'false') {
                        	document.getElementById('codeimage').src='index.php?act=seccode&op=makecode&type=50,120&nchash=9cb2e6ef&t=' + Math.random();
                        }
                    }
                }
            },
			            agree : {
                required : true
            }
        },
        messages : {
            user_name : {
                required : '<i class="icon-exclamation-sign"></i>用户名不能为空',
                lettersmin : '<i class="icon-exclamation-sign"></i>用户名必须在3-15个字符之间',
                lettersmax : '<i class="icon-exclamation-sign"></i>用户名必须在3-15个字符之间',
				letters_name: '<i class="icon-exclamation-sign"></i>可包含“_”、“-”，不能是纯数字',
				remote	 : '<i class="icon-exclamation-sign"></i>该用户名已经存在'
            },
            password  : {
                required : '<i class="icon-exclamation-sign"></i>密码不能为空',
                minlength: '<i class="icon-exclamation-sign"></i>密码长度应在6-20个字符之间',
				maxlength: '<i class="icon-exclamation-sign"></i>密码长度应在6-20个字符之间'
            },
            password_confirm : {
                required : '<i class="icon-exclamation-sign"></i>请再次输入密码',
                equalTo  : '<i class="icon-exclamation-sign"></i>两次输入的密码不一致'
            },
            email : {
                required : '<i class="icon-exclamation-sign"></i>电子邮箱不能为空',
                email    : '<i class="icon-exclamation-sign"></i>这不是一个有效的电子邮箱',
				remote	 : '<i class="icon-exclamation-sign"></i>该电子邮箱已经存在'
            },
			            captcha : {
                required : '<i class="icon-remove-circle" title="请输入验证码"></i>',
				remote	 : '<i class="icon-remove-circle" title="验证码不正确"></i>'
            },
			            agree : {
                required : '<i class="icon-exclamation-sign"></i>请勾选服务协议'
            }
        }
    });
});