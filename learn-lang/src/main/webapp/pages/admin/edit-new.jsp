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
    <%@include file="/pages/common/common.jsp"%>
    <script src="${base }/resources/js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="${base }/resources/js/editnew.js" type="text/javascript"></script>
</head>
<body>
    <%@include file="/pages/common/logo.jsp"%>

    <div id="main" class="content">
    	<%@include file="/pages/common/navbar.jsp"%>

		<!-- 登录 -->
        <div class="editNew-box">
        	<form action="${base }/admin/saveNew" id="saveNewForm" method="post">
        	<input type="hidden" name="id" value="${news.id }"/>
            <div class="form-group is-error">
                <label class="control-label">标题中文：</label>
                <div class="form-input">
                    <input type="text" placeholder="请输入标题中文" name="title_zh" id="title_zh" value="${news.title_zh }">
                    <!-- <div class="msg-block">
                        <span>用户名错误，请重新输入</span>
                    </div> -->
                </div>
            </div>
            <div class="form-group is-error">
                <label class="control-label">标题英文：</label>
                <div class="form-input">
                    <input type="text" placeholder="请输入标题英文" name="title_en" id="title_en" value="${news.title_en }">
                    <!-- <div class="msg-block">
                        <span>用户名错误，请重新输入</span>
                    </div> -->
                </div>
            </div>
            
            <div class="form-group is-error">
                <label class="control-label">简介中文：</label>
                <div class="form-input">
                    <input type="text" placeholder="请输入简介中文" name="intro_zh" id="intro_zh" value="${news.intro_zh }">
                </div>
            </div>
            <div class="form-group is-error">
                <label class="control-label">简介英文：</label>
                <div class="form-input">
                    <input type="text" placeholder="请输入简介英文" name="intro_en" id="intro_en" value="${news.intro_en }">
                </div>
            </div>
            <div class="form-group is-error">
                <label class="control-label">内容中文：</label>
                <div class="form-input">
                	<textarea rows="10" cols="40" placeholder="请输入内容中文" name="content_zh" id="content_zh">${news.content_zh }</textarea>
                    <!-- <div class="msg-block">
                        <span>用户名错误，请重新输入</span>
                    </div> -->
                </div>
            </div>
            <div class="form-group is-error">
                <label class="control-label">内容英文：</label>
                <div class="form-input">
                	<textarea rows="10" cols="40" placeholder="请输入内容英文" name="content_en" id="content_en">${news.content_en }</textarea>
                    <!-- <div class="msg-block">
                        <span>用户名错误，请重新输入</span>
                    </div> -->
                </div>
            </div>
            <div class="form-group is-error">
                <label class="control-label">发布人中文：</label>
                <div class="form-input">
                    <input type="text" placeholder="请输入发布人中文" name="author_zh" id="author_zh" value="${news.author_zh }">
                    <!-- <div class="msg-block">
                        <span>用户名错误，请重新输入</span>
                    </div> -->
                </div>
            </div>
            <div class="form-group is-error">
                <label class="control-label">发布人英文：</label>
                <div class="form-input">
                    <input type="text" placeholder="请输入发布人英文" name="author_en" id="author_en" value="${news.author_en }">
                    <!-- <div class="msg-block">
                        <span>用户名错误，请重新输入</span>
                    </div> -->
                </div>
            </div>
            <div class="form-group is-error">
                <label class="control-label">类型：</label>
                <div class="form-input">
                    <select name="type" id="type">
                    <option value="1"<c:if test="${news.type == 1 }"> selected="selected"</c:if>>新闻</option>
                    <option value="2"<c:if test="${news.type == 2 }"> selected="selected"</c:if>>项目</option>
                    <option value="3"<c:if test="${news.type == 3 }"> selected="selected"</c:if>>日程</option>
                    <option value="4"<c:if test="${news.type == 4 }"> selected="selected"</c:if>>头条新闻</option>
                    </select>
                </div>
            </div>
            <div class="logined">
                <a href="javascript:void(0)" id="saveNewBtn">保存</a>
                <a href="javascript:void(0)" id="gobackBtn" class="cancel">返回文章管理</a>
            </div>
            </form>
        </div>

        <%@include file="/pages/common/footer.jsp"%>
    </div>

    
</body>
</html>