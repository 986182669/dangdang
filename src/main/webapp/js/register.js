$(function () {
    function replaceClassAndHtmlContent(id,className,htmlContent) {
        if(htmlContent == null||htmlContent==""){
            id.removeClass().addClass(className);
        }else{
            id.removeClass().addClass(className).html(htmlContent);
        }
    }
    //验证方法
    function validate($dom) {
        var v = $dom.val();
        var id = $dom.attr("id");
        var flag = true;
        switch (id){
            case "email":
                $("#email_prompt").html("");
                var reg = /^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/;
                if(v==""){
                    replaceClassAndHtmlContent($("#email_prompt"),"register_prompt_error","电子邮件是必填项，请输入您的Email地址");
                    replaceClassAndHtmlContent($dom,"register_input register_input_Blur",null);
                    flag = false;
                }else if (reg.test(v)==false){
                    replaceClassAndHtmlContent($("#email_prompt"),"register_prompt_error","电子邮件格式不正确，请重新输入");
                    replaceClassAndHtmlContent($dom,"register_input register_input_Blur",null);
                    flag = false;
                }else{
                    $.ajax({
                        type:"GET",
                        dataType:"json",
                        data:{
                            email:v
                        },
                        url:"/dangdang/api/user/verifyEmail",
                        success:function (data) {
                            if(data){
                                replaceClassAndHtmlContent($("#email_prompt"),"register_prompt_ok",null);
                                replaceClassAndHtmlContent($dom,"register_input");
                            }else {
                                replaceClassAndHtmlContent($("#email_prompt"),"register_prompt_error","电子邮件已经注册过请重新输入");
                                replaceClassAndHtmlContent($dom,"register_input register_input_Blur",null);
                                flag = false;
                            }
                        },
                        error:function (data) {
                            replaceClassAndHtmlContent($("#email_prompt"),"register_prompt_error","系统繁忙，请稍后再试");
                            replaceClassAndHtmlContent($dom,"register_input register_input_Blur",null);
                            console.log("error:"+data.json);
                        }
                    })

                }
                break;
             case "nickName":
                $("#nickName_prompt").html("");
                var reg = /^[a-zA-Z0-9]{4,20}$/;
                if(v==""){
                    replaceClassAndHtmlContent($("#nickName_prompt"),"register_prompt_error","昵称是必填项，请输入您的昵称");
                    replaceClassAndHtmlContent($dom,"egister_input register_input_Blur",null);
                    flag = false;
                }else if(reg.test(v)==false) {
                    replaceClassAndHtmlContent($("#nickName_prompt"),"register_prompt_error","昵称格式错误请重新输入");
                    replaceClassAndHtmlContent($dom,"register_input register_input_Blur",null);
                    flag = false;
                }else{
                    $.ajax({
                        type:"GET",
                        dataType:"json",
                        data:{
                            name:v
                        },
                        url:"/dangdang/api/user/verifyName",
                        success:function (data) {
                           if (data){
                               replaceClassAndHtmlContent($("#nickName_prompt"),"register_prompt_ok",null);
                               replaceClassAndHtmlContent($dom,"register_input",null)
                           }else {
                               replaceClassAndHtmlContent($("#nickName_prompt"),"register_prompt_error","昵称已被使用，请重新输入");
                               replaceClassAndHtmlContent($dom,"register_input register_input_Blur",null);
                               flag = false;
                           }
                        },
                        error:function (data) {
                            replaceClassAndHtmlContent($("#nickName_prompt"),"register_prompt_error","系统繁忙请稍后再试");
                            replaceClassAndHtmlContent($dom,"egister_input register_input_Blur",null);
                        }
                    })
                }
                break;
            case "pwd":
                $("#pwd_prompt").html("");
                var reg = /^[a-zA-Z0-9]{6,20}$/;
                if(v==""){
                    replaceClassAndHtmlContent($("#pwd_prompt"),"register_prompt_error","密码是必填项，请输入您的密码");
                    replaceClassAndHtmlContent($dom,"register_input register_input_Blur",null);
                    flag = false;
                }else if (reg.test(v)==false){
                    replaceClassAndHtmlContent($("#pwd_prompt"),"register_prompt_error","密码格式错误，请输入您的密码");
                    replaceClassAndHtmlContent($dom,"register_input register_input_Blur",null);
                    flag = false;;
                }else {
                    replaceClassAndHtmlContent($("#pwd_prompt"),"register_prompt_ok",null);
                    replaceClassAndHtmlContent($dom,"register_input",null);
                }
                break;
            case "repwd":
                $("#repwd_prompt").html("");
                if (v == ""){
                    replaceClassAndHtmlContent($("#repwd_prompt"),"register_prompt_error","请再次输入您的密码");
                    replaceClassAndHtmlContent($dom,"register_input register_input_Blur",null);
                    flag = false;
                }else if ($("#pwd").val()!=v){
                    replaceClassAndHtmlContent($("#repwd_prompt"),"register_prompt_error","两次密码不一致，请重新输入")
                    replaceClassAndHtmlContent($dom,"register_input register_input_Blur",null);
                    flag = false;
                }else{
                    replaceClassAndHtmlContent($("#repwd_prompt"),"register_prompt_ok",null);
                    replaceClassAndHtmlContent($dom,"register_input",null);
                }
                break;
            default:
                break;
        }
        return flag;
    }
    //验证邮箱
    $("#email").focus(function () {
        replaceClassAndHtmlContent($(this),"register_input register_input_Focus",null);
        replaceClassAndHtmlContent($("#email_prompt"),"register_prompt","此邮箱将是您登录当当网的账号，并将用来接收验证邮件");
    }).blur(function () {
        validate($(this));
    })
    $
    //验证昵称
    $("#nickName").focus(function () {
        replaceClassAndHtmlContent($(this),"register_input register_input_Focus",null);
        replaceClassAndHtmlContent($("#nickName_prompt"),"register_prompt","昵称可由大小写英文字母、数字组成，长度为4-20个字符");
    }).blur(function () {
        validate($(this));
    })
    //验证密码
    $("#pwd").focus(function () {
        replaceClassAndHtmlContent($(this),"register_input register_input_Focus",null);
        replaceClassAndHtmlContent($("#pwd_prompt"),"register_prompt","密码可由大小写英文字母、数字组成，长度6－20个字符");
    }).blur(function () {
        validate($(this));
    })
    //验证重复密码
    $("#repwd").focus(function () {
        replaceClassAndHtmlContent($(this),"register_input register_input_Focus",null);
    }).blur(function () {
        validate($(this));
    })
/*    $("#myform").submit(function () {
      var flag = true;
      $(this).find("input").each(function (i,ele) {
          if (!validate($(ele))){
              flag = false;
          }
      });
      return flag;
    })*/
    $("#registerBtn").click(function () {
        var flag = true;
            $("#myform").find("input").each(function (i,ele) {
                if (!validate($(ele))){
                    flag = false;
                }
            });
        if(flag){
            var email = $("#email").val();
            var name = $("#nickName").val();
            var password = $("#pwd").val();
            var sex = $("input[name='sex']:checked").val();
            var province = $("#province option:selected").val();
            var city = $("#city option:selected").val();
            var area = $("#area option:selected").val();
            var address;
            if(area==null){
                address = province+city;
            }else {
                address = province+city+area;
            }
            console.log(address);
            $.ajax({
                type:"POST",
                dataType:"json",
                async:false,
                data:{
                    email:email,
                    nickName:name,
                    pwd:password,
                    sex:encodeURI(sex),
                    address:encodeURI(address)
                },
                url:"/dangdang/api/user/register",
                success:function (data) {
                    console.log("success:"+data);
                    $.ajax({
                        type:"GET",
                        dataType:"json",
                        async:false,
                        url:"/dangdang/api/user/registerCode",
                        success:function (responseData) {
                            console.log("success-----------"+responseData);

                            replaceClassAndHtmlContent($("ul li:#head1"),"register_mid_mid",null);
                            replaceClassAndHtmlContent($("ul li:#head2"),"register_mid_left",null);
                            var form = $("#message_form");

                            form.html("<h3 class='register_row' align='center'>验证码已发送的您的"+email+"邮箱请注意查看<br/>" +
                                "</h3><dl class='register_row'><dt>请输入验证码:</dt>" +
                                "<dd><input id='verifyCode' type='' class='register_input'/></dd></dl>" +
                                "<div class='registerBtn'><input id='register_code' type='image' src='images/register_btn_out.gif' /></div>");

                            $("#register_code").click(function () {
                                alert("-----------------");
                                var v = $("#verifyCode").val();
                                console.log(v);
                                $.ajax({
                                    type:"POST",
                                    dataType:"json",
                                    url:"/dangdang/api/user/verifyCode",
                                    data:{
                                        code:v
                                    },
                                    success:function (data) {
                                        if (data){
                                            replaceClassAndHtmlContent($("ul li:#head2"),"register_mid_mid",null)
                                            replaceClassAndHtmlContent($("ul li:#head3"),"register_mid_left",null);
                                            $("#message_form").html("<h3>注册成功,5秒后自动跳转<a href='/login'>立即跳转</a></h3>");
                                            window.setTimeout("window.location.href='login'",5000);
                                        }
                                    },
                                    error:function (data) {
                                        console.log("+++++++++"+data)
                                    }
                                })
                            })
                        },
                        error:function (responseData) {
                            console.log("error--------------"+responseData);
                        }
                    })


                },
                error:function (data) {
                    console.log("error:"+data);
                }
            })
        }else {
            return;
        }

    })

    $("#registerBtn").mouseover(function () {
        $(this).attr("src","images/register_btn_over.gif");
    }).mouseout(function () {
        $(this).attr("src","images/register_btn_out.gif");
    })
    var provinceList = new Array();
    //读取json文件添加到全局数组中
    $.ajaxSettings.async = false;
    $.getJSON("json/city.json",function (data) {
        $.each(data,function (i,province) {
            var cityList = new Array();;
            $.each(province.city,function (index,citys) {
                cityList[citys.name] = citys.area;
            })
            provinceList[province.name] = cityList;
        })
    })
     $("#province").append(function () {
         var html = "";
         for(var i in provinceList){
             html += "<option value='"+i+"'>"+i+"</option>"
         }
         return $(html);
     })
    $("#province").change(function () {
        $("#area").remove();
        var v = $(this).val();
        var html = "";
        var count = 0;
        if (v=="请选择省/城市"){
            html = "<option>请选择城市/地区</option>";
            $("#city").html(html);
            return;
        }
        var citysList = provinceList[v];
        for(var i in citysList){
            count++;
        }
        if(count == 1){
            for(var i in citysList){
                for(var n in citysList[i]){
                  html += "<option value='"+citysList[i][n]+"'>"+citysList[i][n]+"</option>";
              }
            }
            $("#city").html(html);
           return;
        }
        for(var i in citysList){
            console.log("123"+i)
            html += "<option value='"+i+"'>"+i+"</option>";
        }
        $("#city").html(html);
        appendHtml();

        $("#city").change(function () {
            html = "";
            var v = $(this).val();
            var areas = citysList[v];
            for(var i in areas){
                console.log("区域-------"+areas[i]);
                html += "<option value='"+areas[i]+"'>"+areas[i]+"</option>";
            }
            $("#area").html(html);
        })

    })
    function appendHtml() {
        var html = "<dd><select id='area' style='width:130px;'><option>请选择地区</option></select></dd>";
        $("#selectId").append(html);
    }

})