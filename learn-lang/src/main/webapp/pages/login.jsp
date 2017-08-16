<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>summit</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

    <link rel="stylesheet" href="${base }/resources/css/common.css" />
    <link rel="stylesheet" href="${base }/resources/css/login.css" />
    <script src="${base }/resources/js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="${base }/resources/js/login.js" type="text/javascript"></script>
</head>
<body>
    <%@include file="/pages/common/logo.jsp"%>

    <div id="main" class="content">
    	<%@include file="/pages/common/navbar.jsp"%>

		<!-- 登录 -->
        <div class="login-box">
        	<form action="/login" id="loginForm" method="post">
            <div class="form-group is-error">
                <label class="control-label">用户名：</label>
                <div class="form-input">
                    <input type="text" placeholder="请输入您的手机号／邮箱" name="userName">
                    <!-- <div class="msg-block">
                        <span>用户名错误，请重新输入</span>
                    </div> -->
                </div>
            </div>
            <div class="form-group">
                <label class="control-label">密码：</label>
                <div class="form-input">
                    <input type="password" placeholder="请输入您的密码" name="password">
                    <div class="msg-block">
                        <span>密码错误，请重新输入</span>
                    </div>
                </div>
            </div>
            <div class="logined">
                <a href="javascript:void(0)" id="loginBtn">登录</a>
            </div>
            </form>
        </div>

        <%@include file="/pages/common/footer.jsp"%>
    </div>

    
</body>
</html>