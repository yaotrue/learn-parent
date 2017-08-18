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
    <link rel="stylesheet" href="${base }/resources/css/editNew.css" />
    <script src="${base }/resources/js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="${base }/resources/js/login.js" type="text/javascript"></script>
</head>
<body>
    <%@include file="/pages/common/logo.jsp"%>

    <div id="main" class="content">
    	<%@include file="/pages/common/navbar.jsp"%>

		<!-- 登录 -->
        <div class="editNew-box">
        	<form action="/login" id="loginForm" method="post">
            <div class="form-group is-error">
                <label class="control-label">标题中文：</label>
                <div class="form-input">
                    <input type="text" placeholder="请输入标题中文" name="title">
                    <!-- <div class="msg-block">
                        <span>用户名错误，请重新输入</span>
                    </div> -->
                </div>
            </div>
            <div class="form-group is-error">
                <label class="control-label">标题英文：</label>
                <div class="form-input">
                    <input type="text" placeholder="请输入标题英文" name="title">
                    <!-- <div class="msg-block">
                        <span>用户名错误，请重新输入</span>
                    </div> -->
                </div>
            </div>
            <div class="form-group is-error">
                <label class="control-label">内容中文：</label>
                <div class="form-input">
                	<textarea rows="10" cols="40" placeholder="请输入内容中文" name="content"></textarea>
                    <!-- <div class="msg-block">
                        <span>用户名错误，请重新输入</span>
                    </div> -->
                </div>
            </div>
            <div class="form-group is-error">
                <label class="control-label">内容英文：</label>
                <div class="form-input">
                	<textarea rows="10" cols="40" placeholder="请输入内容英文" name="content"></textarea>
                    <!-- <div class="msg-block">
                        <span>用户名错误，请重新输入</span>
                    </div> -->
                </div>
            </div>
            <div class="form-group is-error">
                <label class="control-label">发布人中文：</label>
                <div class="form-input">
                    <input type="text" placeholder="请输入发布人中文" name="userName">
                    <!-- <div class="msg-block">
                        <span>用户名错误，请重新输入</span>
                    </div> -->
                </div>
            </div>
            <div class="form-group is-error">
                <label class="control-label">发布人英文：</label>
                <div class="form-input">
                    <input type="text" placeholder="请输入发布人英文" name="userName">
                    <!-- <div class="msg-block">
                        <span>用户名错误，请重新输入</span>
                    </div> -->
                </div>
            </div>
            <div class="form-group is-error">
                <label class="control-label">类型：</label>
                <div class="form-input">
                    <select>
                    <option>新闻</option>
                    <option>博客</option>
                    </select>
                </div>
            </div>
            <div class="logined">
                <a href="javascript:void(0)" id="loginBtn">保存</a>
                <a href="javascript:void(0)" id="loginBtn" class="cancel">取消</a>
            </div>
            </form>
        </div>

        <%@include file="/pages/common/footer.jsp"%>
    </div>

    
</body>
</html>