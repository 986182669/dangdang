
$(function($){
    function replaceClassAndHtmlContent(id,className,htmlContent) {
        if(htmlContent == null||htmlContent==""){
            id.removeClass().addClass(className);
        }else{
            id.removeClass().addClass(className).html(htmlContent);
        }
    }
    //邮箱验证
    $("#email").focus(function(){
        $(this).removeClass().addClass("login_content_input login_content_input_Focus");
    }).blur(function(){
        $(this).removeClass().addClass("login_content_input");
    });
    //密码验证
    $("#pwd").focus(function(){
        $(this).removeClass().addClass("login_content_input login_content_input_Focus");
    }).blur(function(){
        $(this).removeClass().addClass("login_content_input");
    });
    // //提交表单
    // $("#loginForm").submit(function(){
    //     var email=$("#email").val();
    //     var pwd=$("#pwd").val();
    //     if(email==""){
    //         alert("请输入Email地址或昵称");
    //         return false;
    //     }
    //     if(pwd==""){
    //         alert("请输入密码");
    //         return false;
    //     }
    //     return true;
    // });
    $("#btn").click(function () {
        var email = $("#email").val();
        var pwd = $("#pwd").val();
        console.log(email)
        if(email==''){
            return false;
        }
        if(pwd==''){
            return false
        }
        $.ajax({
            type:"GET",
            dataType:"json",
            data:{
                email:email,
                pwd:pwd
            },
            url:"/dangdang/user/login",
            success:function (result) {
                window.location.href = "index";
            },
            error:function (result) {
                console.log("error"+result);
            }
        })
    })

    $("#btn").mouseover(function () {
        $(this).removeClass().addClass("login_btn_over");
    }).mouseout(function () {
        $(this).removeClass().addClass("login_btn_out");
    })
    $("#quick_register").mouseover(function () {
        $(this).removeClass().addClass("login_register_over");
    }).mouseout(function () {
        $(this).removeClass().addClass("login_register_out");
    }).click(function (){
        window.location.href="register";
    });
});