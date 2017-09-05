<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>summit</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

    <link href="${base }/resources/css/main.css" rel="stylesheet" type="text/css" />
    <link href="${base }/resources/css/flexslider.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="${base }/resources/css/common.css" />
    <link rel="stylesheet" href="${base }/resources/css/low.css" />
    <script src="${base }/resources/js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <style type="text/css">
    thead{
    font-size: 15px;
    font-weight: bold;
    border-collapse: collapse;
    border-bottom: 1px solid #abb7b7;
    }
    </style>
</head>
<body>
    <%@include file="/pages/common/logo.jsp"%>

    <div id="main" class="content">
    	<%@include file="/pages/common/navbar.jsp"%>
    	<div class="about-summit">
            <div class="tit">
                <div>
                   <span>&nbsp;</span>
                    <h5>文章管理</h5>
                </div>
            </div>
        </div>
        
        <div class="low-box">
            <div class="low-content">
            	<div style="display: inline-block;float: right!important;">
            	<a style="background-color: #68C39F;border-color: #68C39F;color: #fff;display: inline-block;text-align: center;">新建文章</a>
            	</div>
				<table style="width: 100%;">
					<thead>
					<tr>
						<td>标题</td>
						<td>发布人</td>
						<td>发布时间</td>
						<td>类型</td>
						<td>操作</td>
					</tr>
					</thead>
					<tbody>
					<c:choose>
					<c:when test="${not empty news }">
					<c:forEach var="new" items="${news }">
					<tr>
						<td>${new.title }</td>
						<td>${new.title }</td>
						<td>${new.title }</td>
						<td>${new.title }</td>
						<td>
						<a>删除</a>
						<a>编辑</a>
						<a>立即发布</a>
						<a>图片管理</a>
						</td>
					</tr>
					</c:forEach>
					</c:when>
					<c:otherwise>
					<tr><td colspan="5" align="center">暂无文章</td></tr>
					</c:otherwise>
					</c:choose>
					</tbody>
				</table>
            </div>
        </div>

        <%@include file="/pages/common/footer.jsp"%>
    </div>

    
</body>
</html>