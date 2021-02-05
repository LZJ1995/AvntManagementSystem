<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>欢迎登陆</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <link rel="shortcut icon" href="http://www.weather.com.cn/favicon.ico" type="image/x-icon" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery/layer/layer.js"></script>
    <script type="text/javascript">
		function checkAccount() {
			var loginacct = $("#staffAccount").val();
			if(!/^[0-9]*$/.test(loginacct)){
				alert("请输入数字");
				$("#staffAccount").val("");
			}
		}
		function dologin() {
			// 非空判断
			// JQuery对象
			var loginacct = $("#staffAccount");
			var userpswd = $("#staffPassword");
			// 表单元素的取值不可能为null,如果为空，表示取值为空字符串
			if (loginacct.val() == "") {
				alert( "登陆员工编码不能为空，请输入" );
				loginacct.focus();
				return;
			}// 表单元素的取值不可能为null,如果为空，表示取值为空字符串
			if ($.trim(userpswd.val()) == "") {
				alert( "登陆密码不能为空，请输入" );
				loginacct.focus();
				return;
			}
			$.ajax({
				async : true,
				url : "${pageContext.request.contextPath}/login.do",
				type : "POST",
				data : {
					"staffAccount" : loginacct.val(),
					"staffPassword" : userpswd.val(),
				},
				beforeSend : function() {
					loadingIndex = layer.load(2, {time: 10*1000});
					return true;
				},
				success : function(result) {
					// 通过返回的响应结果跳转页面
					if (result) {
						window.location.href = "${pageContext.request.contextPath}/homePage.do";
					} else {
						alert(result);
					}
				},
				error : function() {
				}
			});
		}
    </script>
</head>
<body>
<c:import url="heardPage.jsp"/>
<div class="container">
    <form method="post" action="#"
          class="form-signin" role="form" style="text-align: center">
        <h2 class="form-signin-heading">
            <i class="glyphicon glyphicon-log-in"></i> 员工登录
        </h2>
        <div class="form-group has-success has-feedback">
            <input id="staffAccount" type="text" class="form-control"  onkeyup="checkAccount()" placeholder="请输入登录员工编号"/>
			<span class="glyphicon glyphicon-user form-control-feedback"></span>
        </div>
        <div class="form-group has-success has-feedback">
            <input type="password" class="form-control" id="staffPassword"
                   name="staffPassword" placeholder="请输入登录员工密码"
                   style="margin-top: 10px;"/> <span
                class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>
        <div class="checkbox">
            <label> <input type="checkbox" value="remember-me">
                记住我
            </label> <br> <br> <label> 忘记密码 </label> </label>
        </div>
        <input type="button" value="登录" style="" class="btn-lg btn-success btn-block" onclick="dologin()"/>
    </form>
</div>
</body>
</html>