<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>峰会项目</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

	<link rel="stylesheet" href="${base }/resources/css/common.css" />
    <%-- <link href="${base }/resources/css/main.css" rel="stylesheet" type="text/css" /> --%>

    <link href="${base }/resources/css/flexslider.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="${base }/resources/css/project.css">
    <script src="${base }/resources/js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="${base }/resources/js/jquery.flexslider-min.js" type="text/javascript"></script>
    <script src="${base }/resources/js/common.js" type="text/javascript"></script>
    <script src="${base }/resources/js/project.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function() {
             $('.flexslider').flexslider({
                 slideshowSpeed: 3000,
                 slideshow: true,
             });
             $('.cooper-slide').flexslider({
                animation: "slide",
                slideshow: false,
             })
        });
    </script>
</head>
<body>
    <%@include file="/pages/common/logo.jsp"%>

    <div id="main" class="content">
    	<div class="banner-site">
			<%@include file="/pages/common/navbar.jsp"%>
	        <!-- banner -->
            <div class="banner">
                <img src="${base }/resources/images/project/banner.png" />
            </div>
		</div>

        <!-- 面包屑 -->
        <div class="breadcrumb">
            <ul class="list-inline">
                <li><a href="${base }/"><spring:message code="mbx.index"/></a></li>
                <li class="divider">&gt;</li>
                <li><a href="${base }/project.htm"><spring:message code="mbx.project"/></a></li>
            </ul>
        </div>
        <!-- 标题 -->
        <div class="about-summit myaccount">
            <div class="tit">
                <div>
                   <span>&nbsp;</span>
                    <h5><spring:message code="mbx.project"/></h5>
                </div>
                <p><spring:message code="project.jianjie"/></p>
            </div>
        </div>
        <!-- 内容 -->
		<div class="myaccount-inner clearfix">
          	<div>
            	<div class="myaccount-lf">
                  	<h5><spring:message code="project.jqxm"/></h5>
                  	<ul>
						<c:forEach items="${allProject }" var="project" varStatus="stas">
                      		<li id="${project.id }"<c:if test="${stas.first }"> class="current"</c:if>><a><img src="${base }/resources/images/page/arrow-d.png">${project.title }</a></li>
						</c:forEach>                  
                  	</ul>
              	</div>
              	<div class="myaccount-rt">
              		<c:forEach items="${allProject }" var="project" varStatus="stas">
                	<div class="ft-box<c:if test="${!stas.first }"> none</c:if>">
                  		<div>
                    		<div class="flexslider event-kv">
                      			<ul class="slides">
                      				<c:forEach items="${project.newsImages }" var="newImage" begin="1">
                          			<li>
                              			<img src="${base }/resources/images/newsimage/${newImage.picUri }" />
                          			</li>
									</c:forEach>
                      			</ul>
                    		</div>
                    		<div class="ft-title">
                       			<p>${project.title }</p>
                        		<span>${project.author }&nbsp;<fmt:formatDate value="${project.createTime}" pattern="dd/MM/yyyy" /></span>
                    		</div>
						</div>
                  		<div class="ft-content">
                      		${project.content }
                    	</div>
                	</div>
                	</c:forEach>
              	</div>
          	</div>
        </div>

        <%@include file="/pages/common/footer.jsp"%>
    </div>

    
</body>
</html>