<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title><spring:message code="mbx.rc"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

    <link rel="stylesheet" href="${base }/resources/css/common.css" />
    <link rel="stylesheet" href="${base }/resources/css/schedule.css">
    <script src="${base }/resources/js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="${base }/resources/js/common.js" type="text/javascript"></script>
    <script src="${base }/resources/js/schedule.js" type="text/javascript"></script>
</head>
<body>
    <%@include file="/pages/common/logo.jsp"%>
		
    <div id="main" class="content">
    	<div class="banner-site">
			<%@include file="/pages/common/navbar.jsp"%>
	        <!-- banner -->
            <div class="banner">
                <img src="${base }/resources/images/project/KV-schedule.png" />
            </div>
		</div>

        <!-- 面包屑 -->
        <div class="breadcrumb">
            <ul class="list-inline">
                <li><a href="${base }/"><spring:message code="mbx.index"/></a></li>
                <li class="divider">&gt;</li>
                <li><a href="${base }/schedule.htm"><spring:message code="mbx.rc"/></a></li>
            </ul>
        </div>

        <div class="about-summit myaccount">
            <div class="tit">
                <div>
                   <span>&nbsp;</span>
                    <h5><spring:message code="mbx.rc"/></h5>
                </div>
                <p><spring:message code="schedule.jianjie"/></p>
            </div>

        </div>	
        <div class="myaccount-inner clearfix">
            <div class="myaccount-lf">
                <h5><spring:message code="schedule.jqap"/></h5>
                <ul>
                	<c:forEach items="${allSchedule }" var="schedule" varStatus="stas">
                    	<li><a href="#schedule${stas.index+1 }"><img src="${base }/resources/images/page/arrow-d.png">${schedule.title }</a></li>
					</c:forEach> 
                </ul>
            </div>
            <div class="myaccount-rt">
                <div>
                    <div class="myaccount-down team-down">
                    	<c:forEach items="${allSchedule }" var="schedule" varStatus="stas">
                    	<div class="team-member clearfix">
                           	<div class="team-cont-l" >
                              	<div>
								  	<c:forEach items="${schedule.newsImages }" var="newImage" begin="0" end="0">
                                  	<img class="result-img" init-src="" src="${base }/resources/images/newsimage/${newImage.picUri }" width="400" height="300">
									</c:forEach>                     	
                              	</div>
                              	<div class="pages-img evens-pages-img">
                                	<ul>
                                  		<c:forEach items="${schedule.newsImages }" var="newImage" varStatus="imgstas">
                                      	<li class="
                                      	<c:choose><c:when test="${imgstas.index == 0 or imgstas.index == 3 or imgstas.index == 6 or imgstas.index == 9 }">padd-right</c:when>
                                      	<c:when test="${imgstas.index == 1 or imgstas.index == 4 or imgstas.index == 7 or imgstas.index == 10 }">padd-center</c:when>
                                      	<c:when test="${imgstas.index == 2 or imgstas.index == 5 or imgstas.index == 8 or imgstas.index == 11 }">padd-left</c:when>
                                      	</c:choose>
                                      	<c:if test="${imgstas.first }"> active</c:if>">
                                        	<img data-select="false" src="${base }/resources/images/newsimage/${newImage.picUri }" data-src="${base }/resources/images/newsimage/${newImage.picUri }">
                                      	</li>
										</c:forEach> 
										<%--样式能不能统一一下，不好做判断 --%>
                                  	</ul>
                              	</div>
							</div>
                           	<div class="team-cont-r">
                                <div class="team-cont-wapper">
                                    <div>
                                       <h5 id="schedule${stas.index+1 }" class="name-ch">${schedule.title }</h5>
                                       <div class="txt">
                                            ${schedule.content }
                                       </div>
                                    </div>
                                    <p class="info-show events-info-show">
                                      <span>${schedule.author }&nbsp;<fmt:formatDate value="${schedule.createTime}" pattern="dd/MM/yyyy" /></span>
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