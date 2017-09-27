<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>往期新闻</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <!-- 公共样式 -->
    <link href="${base }/resources/css/main.css" rel="stylesheet" type="text/css" />
    <link href="${base }/resources/css/flexslider.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="${base }/resources/css/common.css" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="${base }/resources/css/news-page.css">
    <!-- 公共js -->
    <script src="${base }/resources/js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="${base }/resources/js/jquery.flexslider-min.js" type="text/javascript"></script>
    <script src="${base }/resources/js/common.js" type="text/javascript" charset="utf-8"></script>
    <script src="${base }/resources/js/news-page.js" type="text/javascript"></script>
</head>
<body>
    <%@include file="/pages/common/logo.jsp"%>

    <div id="main" class="content">
    	<div class="banner-site">
			<%@include file="/pages/common/navbar.jsp"%>
	        <!-- 内容 -->
            <div class="page-img">
                <img src="${base }/resources/images/page/kv-news.png" alt="">
            </div>
		</div>

        <!-- 面包屑 -->
        <div class="breadcrumb">
            <ul class="list-inline">
                <li><a href="${base }/"><spring:message code="mbx.index"/></a></li>
                <li class="divider">&gt;</li>
                <li><a href="${base }/recent-news.htm"><spring:message code="mbx.news"/></a></li>
            </ul>
        </div>
        <!-- 内容信息 -->
        <div class="summit-news model">
            <div class="tit">
                <span>&nbsp;</span>
                <h5><spring:message code="mbx.news"/></h5>
                <p><spring:message code="news.jianjie"/></p>
            </div>
            <div class="news-box clearfix">
                <div class="pages-left">
                    <div class="pages-left-info events-pages-new">
                    	<div >
                            <a href="${base }/news.htm"><spring:message code="news.fhjqxwzl"/> <img src="${base }/resources/images/index/arrow-d.png" alt=""></a>
                        </div>
                        <ul>
                        	<c:forEach items="${allNews }" var="news" varStatus="stas">
                            <li><a  href="#page${stas.index+1 }"><img src="${base }/resources/images/page/arrow-d.png" alt="">${news.title }</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <div class="pages-right ">
                    <div>
                    	<c:forEach items="${allNews }" var="news" varStatus="stas">
                        <div class="news-1 clearfix">
                            <div class="pages-cont-l">
                                <div>
                                	<c:choose>
                                	<c:when test="${news.type == 4 }">
                                	<c:forEach items="${news.newsImages }" var="newImage" begin="1" end="1">
                                  	<img class="result-img" init-src="" src="${base }/resources/images/newsimage/${newImage.picUri }">
									</c:forEach> 
                                	</c:when>
                                	<c:otherwise>
                                	<c:forEach items="${news.newsImages }" var="newImage" begin="0" end="0">
                                  	<img class="result-img" init-src="" src="${base }/resources/images/newsimage/${newImage.picUri }">
									</c:forEach> 
                                	</c:otherwise>
                                	</c:choose>
                                </div>
                                <div class="pages-img evens-pages-img">
                                    <ul>
                                    	<c:choose>
                                    	<c:when test="${news.type == 4 }"><%--头条新闻 从第二张图片开始显示 --%>
                                    	<%-- <c:forEach items="${news.newsImages }" var="newImage" varStatus="imgstas" begin="1">
                                      	<li class="<c:choose><c:when test="${imgstas.first }">padd-right</c:when><c:when test="${imgstas.last }">padd-center</c:when></c:choose><c:if test="${imgstas.first }"> active</c:if>">
                                        	<img data-select="false" src="${base }/resources/images/newsimage/${newImage.picUri }" data-src="${base }/resources/images/newsimage/${newImage.picUri }">
                                      	</li>
										</c:forEach> --%>
                                    	</c:when>
                                    	<c:otherwise>
       			                        <c:forEach items="${news.newsImages }" var="newImage" varStatus="imgstas">
                                      	<li class="
                                      	<c:choose><c:when test="${imgstas.index == 0 or imgstas.index == 3 or imgstas.index == 6 or imgstas.index == 9 }">padd-right</c:when>
                                      	<c:when test="${imgstas.index == 1 or imgstas.index == 4 or imgstas.index == 7 or imgstas.index == 10 }">padd-center</c:when>
                                      	<c:when test="${imgstas.index == 2 or imgstas.index == 5 or imgstas.index == 8 or imgstas.index == 11 }">padd-left</c:when>
                                      	</c:choose>
                                      	<c:if test="${imgstas.first }"> active</c:if>">
                                        	<img data-select="false" src="${base }/resources/images/newsimage/${newImage.picUri }" data-src="${base }/resources/images/newsimage/${newImage.picUri }">
                                      	</li>
										</c:forEach>
                                    	</c:otherwise>
                                    	</c:choose>
										<%--样式能不能统一一下，不好做判断 --%>
                                    </ul>
                                </div>
                            </div>
                            <div class="pages-cont-r">
                                <div class="pages-teme">
                                    <div>
                                        <h5 id="page${stas.index+1 }">${news.title }</h5>
                                        <div>
                                            ${news.content }
                                        </div>
                                    </div>
                                     <p class="info-show events-info-show">
                                         <span><%-- ${news.author }&nbsp;<fmt:formatDate value="${news.createTime}" pattern="dd/MM/yyyy" /> --%></span>
                                         <i class="icon-down icon-up"></i>
                                     </p>
                                 </div>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="/pages/common/footer.jsp"%>
    </div>

    
</body>
</html>