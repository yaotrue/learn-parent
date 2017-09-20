<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
    <%@include file="/pages/common/common.jsp"%>
    <script src="${base }/resources/js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="${base }/resources/js/admin-index.js" type="text/javascript"></script>
    <style type="text/css">
    thead{
    font-size: 15px;
    font-weight: bold;
    border-collapse: collapse;
    border-bottom: 1px solid #abb7b7;
    }
    .addnew{
    display: inline-block;
	margin: 0 15px;
	width: 100px;
	background: #68C39F;
	height: 40px;
	float:left;
	line-height: 40px;
	color: #fff;
	text-align: center;
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
            	<a class="addnew" href="${base }/admin/addNew">新建文章</a>
            	</div>
				<table style="width: 100%;">
					<thead>
					<tr>
						<td>标题</td>
						<td>发布人</td>
						<td>创建时间</td>
						<td>类型</td>
						<td>状态</td>
						<td>操作</td>
					</tr>
					</thead>
					<tbody>
					<c:choose>
					<c:when test="${not empty news }">
					<c:forEach var="eachNew" items="${news }">
					<tr>
						<td>${eachNew.title }</td>
						<td>${eachNew.author }</td>
						<td>
						<fmt:formatDate value="${eachNew.createTime}" pattern="yyyy-MM-dd  HH:mm:ss" />
						</td>
						<td>
						<c:choose>
						<c:when test="${1 == eachNew.type }">
						新闻
						</c:when>
						<c:when test="${2 == eachNew.type }">
						项目
						</c:when>
						<c:when test="${3 == eachNew.type }">
						日程
						</c:when>
						<c:when test="${4 == eachNew.type }">
						首页KV
						</c:when>
						</c:choose>
						</td>
						<td>
						<c:choose>
						<c:when test="${1 == eachNew.status }">
						初始化
						</c:when>
						<c:when test="${2 == eachNew.status }">
						启用中
						</c:when>
						<c:when test="${3 == eachNew.status }">
						待启用
						</c:when>
						</c:choose>
						</td>
						<td newsId="${eachNew.id }">
						<a href="javascript:void(0)" class="deleteNews">删除</a>
						<a href="${base }/admin/editNew?newId=${eachNew.id }">编辑</a>
						<c:if test="${eachNew.status == 2 }">
						<a href="javascript:void(0)" class="newsDown">下线</a>
						</c:if>
						<c:if test="${eachNew.status == 1 or eachNew.status == 3 }">
						<a href="javascript:void(0)" class="newsUp">立即发布</a>
						</c:if>
						<a href="${base }/admin/editImage?newId=${eachNew.id}">图片管理</a>
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