<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>图片管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

	<link rel="stylesheet" href="${base }/resources/css/common.css" />
	<link rel="stylesheet" href="${base }/resources/css/low.css" />
    <link rel="stylesheet" href="${base }/resources/css/webuploader.css" />
    <link rel="stylesheet" href="${base }/resources/css/style.css" />
    <style type="text/css">
    thead{
    font-size: 15px;
    font-weight: bold;
    border-collapse: collapse;
    border-bottom: 1px solid #abb7b7;
    }
	.goback{
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
    <%@include file="/pages/common/common.jsp"%>
    <script src="${base }/resources/js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="${base }/resources/js/webuploader.js" type="text/javascript"></script>
    <script src="${base }/resources/js/upload.js" type="text/javascript"></script>
</head>
<body>
    <%@include file="/pages/common/logo.jsp"%>

    <div id="main" class="content">
    	<%@include file="/pages/common/navbar.jsp"%>
    	<div class="about-summit">
            <div class="tit">
                <div>
                   <span>&nbsp;</span>
                    <h5>图片管理</h5>
                </div>
            </div>
        </div>
        <input type="hidden" id="newId" value="${newId }"/>
        
        <div class="low-box">
            <div class="low-content">
            	<div style="display: inline-block;float: right!important;">
            	<a class="goback" href="javascript:void(0)">返回文章管理</a>
            	<a id="filePicker" href="javascript:void(0)">新增图片</a>
            	</div>
				<table style="width: 100%;">
					<thead>
					<tr>
						<td>图片</td>
						<td>上传时间</td>
						<!-- <td>排序号</td> -->
						<td>操作</td>
					</tr>
					</thead>
					<tbody>
					<c:choose>
					<c:when test="${not empty newsImages }">
					<c:forEach var="newImage" items="${newsImages }" varStatus="stat">
					<tr>
						<td>
						<img src="${base }/resources/images/newsimage/${newImage.picUri }" width="200" height="80" />
						</td>
						<td>
						<fmt:formatDate value="${newImage.createTime}" pattern="yyyy-MM-dd  HH:mm:ss" />
						</td>
						<%-- <td>
						${newImage.sortNo }
						</td> --%>
						<td imageId="${newImage.id }">
						<a href="javascript:void(0)" class="deleteImage">删除</a>
						<a href="${base }/resources/images/newsimage/${newImage.picUri }" target="_blank">查看原图</a>
						<c:if test="${!stat.first}">
						<a href="javascript:void(0)" class="moveUp">上移</a>
						</c:if>
						<c:if test="${!stat.last}">
						<a href="javascript:void(0)" class="moveDown">下移</a>
						</c:if>
						</td>
					</tr>
					</c:forEach>
					</c:when>
					<c:otherwise>
					<tr><td colspan="3" align="center">暂无图片</td></tr>
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