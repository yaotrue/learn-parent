<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="/pages/common/common.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>summit</title>
    <meta name="baidu-site-verification" content="kSfkcKlKyh" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

    <link href="${base }/resources/css/main.css" rel="stylesheet" type="text/css" />
    <link href="${base }/resources/css/flexslider.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="${base }/resources/js/swiper/css/swiper.min.css" />
    <link rel="stylesheet" href="${base }/resources/css/common.css" />
    <link rel="stylesheet" href="${base }/resources/css/index.css" />
    <script src="${base }/resources/js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="${base }/resources/js/jquery.flexslider-min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${base }/resources/js/swiper/js/swiper.min.js"></script>
    <script src="${base }/resources/js/common.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function() {
             $('.flexslider').flexslider({
                 slideshowSpeed: 5000,
                 slideshow: true,
             });
             var mySwiper = new Swiper ('.swiper-container', {
                loop: true,
                autoplay: 5000,
                // 如果需要分页器
                pagination: '.swiper-pagination',
                slidesPerView: 4,
                slidesPerGroup: 4,
                paginaClickable: true,
                // 如果需要前进后退按钮
                nextButton: '.swiper-button-next',
                prevButton: '.swiper-button-prev',

            })
        });

    </script>
</head>
<body>
    <%@include file="/pages/common/logo.jsp"%>

	<div id="main" class="content">
    	<div class="banner-site">
			<%@include file="/pages/common/navbar.jsp"%>
	        <div class="flexslider event-kv">
	        	<ul class="slides">
					<c:forEach items="${headerlineNews }" var="headerlineNew">
	               	<li>
                        <a href="${bae }/headline-news.htm">
                        	<c:forEach items="${headerlineNew.newsImages }" var="newImage" begin="0" end="0">
                        	<img src="${base }/resources/images/newsimage/${newImage.picUri }" />
                        	</c:forEach>
                        </a>
                        <div class="txt-info">
                            <div>
                                <h4>${headerlineNew.title }</h4>
                                <p>${headerlineNew.intro }</p>
                            </div>
                        </div>
                    </li>
					</c:forEach>        
	           	</ul>
	       	</div>
		</div>

        <!-- 峰会新闻 -->
        <div class="summit-news model">
            <div class="tit">
                <span>&nbsp;</span>
                <h5><spring:message code="index.news.title"/></h5>
            </div>
            <ul>
            	<c:forEach items="${indexNews }" var="news" varStatus="stas">
            	<li<c:choose><c:when test="${stas.first }"> class="fir"</c:when><c:when test="${stas.last }"> class="thir"</c:when><c:otherwise> class="sec"</c:otherwise></c:choose>>
                    <div>
                       	<a href="${base }/news.htm">
                       		<c:forEach items="${news.newsImages }" var="newImage" begin="0" end="0">
		                   	<img src="${base }/resources/images/newsimage/${newImage.picUri }" />
							</c:forEach>
							<div>
	                            <h5>${news.title }</h5>
    	                        <p>${news.intro }</p>
							</div>
                        </a>
                       	<div class="author-info">
                            <span>${news.author }</span>
                            <span><fmt:formatDate value="${news.createTime}" pattern="dd/MM/yyyy" /></span>
                        </div>
                    </div>
                </li>
            	</c:forEach>
            </ul>
            <div class="view-more">
                <a href="${base }/news.htm"><spring:message code="index.viewmore"/></a>
            </div>
        </div>
        <!-- 专访博客 -->
        <div class="summit-blog model">
            <div class="tit">
                <span>&nbsp;</span>
                <h5><spring:message code="index.project.title"/></h5>
            </div>
            <ul>
            	<c:forEach items="${indexProject }" var="project" varStatus="stas">
            	<li<c:choose><c:when test="${stas.first }"> class="fir"</c:when><c:when test="${stas.last }"> class="thir"</c:when></c:choose>>
                    <div>
                       <a href="${base }/project.htm?a${project.id}">
                            <c:forEach items="${project.newsImages }" var="newImage" begin="0" end="0">
		                   	<img src="${base }/resources/images/newsimage/${newImage.picUri }" />
							</c:forEach>
                        </a>
                        <div class="detail">
                            <p>${project.title }</p>
                            <span>${project.author }</span>
                            <span><fmt:formatDate value="${project.createTime}" pattern="dd/MM/yyyy" /></span>
                        </div>
                    </div>
                </li>
                <c:if test="${stas.first }"><li class="sec">&nbsp;</li></c:if>
            	</c:forEach>
            </ul>
            <div class="view-more">
                <a href="${base }/project.htm"><spring:message code="index.viewmore"/></a>
            </div>
        </div>
        <!-- 峰会成员 -->
        <div class="summit-member">
            <h5 class="tit"><spring:message code="index.dsh"/></h5>
            <div class="member-con">
                <div class="member-up">
                    <ul>
                        <li>
                            <img src="${base }/resources/images/index/teampic-lzy.png" />
                            <p class="name"><spring:message code="index.dsh.lzy"/></p>
                            <p class="site">
                                <span><spring:message code="index.dsh.lzyzw1"/></span>
                                <span><spring:message code="index.dsh.lzyzw2"/></span>
                            </p>
                        </li>
                        <li>
                            <img src="${base }/resources/images/index/teampic-qty.png" />
                            <p class="name"><spring:message code="index.dsh.qty"/></p>
                            <p class="site">
                                <span><spring:message code="index.dsh.qtyzw1"/></span>
                                <span><spring:message code="index.dsh.qtyzw2"/></span>
                            </p>
                        </li>
                        <li>
                            <img src="${base }/resources/images/index/teampic-hugh.png" />
                            <p class="name"><spring:message code="index.dsh.hf"/></p>
                            <p class="site">
                                <span><spring:message code="index.dsh.hfzw1"/></span>
                                <span><spring:message code="index.dsh.hfzw2"/></span>
                            </p>
                        </li>
                        <li>
                            <img src="${base }/resources/images/index/teampic-duncan.png" />
                            <p class="name"><spring:message code="index.dsh.dm"/></p>
                            <p class="site">
                                <span><spring:message code="index.dsh.dmzw1"/></span>
                                <span><spring:message code="index.dsh.dmzw2"/></span>
                            </p>
                        </li>
                    </ul>
                </div>
                <div class="member-down">
                    <div class="con-lf">
                        <ul>
                           <li class="fir">
                                <h5 class="tit"><spring:message code="index.gw"/></h5>
                                <img src="${base }/resources/images/index/adviserpic-michie.png" />
                                <p class="name"><spring:message code="index.gw.am"/></p>
                                <p class="site"><spring:message code="index.gw.amsite"/></p>
                            </li>
                            <li class="sec">&nbsp;</li>
                        </ul>
                    </div>
                    <div class="con-rg">
                        <h5 class="tit"><spring:message code="index.rw"/></h5>
                        <ul>
                            <li>
                                <img src="${base }/resources/images/index/richard-cooper.jpg" />
                                <p class="name"><spring:message code="index.rw.rc"/></p>
                                <p class="site">
                                    <span><spring:message code="index.rw.rcsite"/></span>
                                </p>
                            </li>
                            <li>
                                <img src="${base }/resources/images//index/adviserpic-spens.png" />
                                <p class="name"><spring:message code="index.rw.ms"/></p>
                                <p class="site">
                                    <span><spring:message code="index.rw.mssite"/></span>
                                </p>
                            </li>
                        </ul>
                    </div>
                    <div class="view-more">
                        <a href="${base }/about-us.htm?a2" class="more-momber"><spring:message code="index.gwjbtdyl"/><img src="${base }/resources/images/index/arrow-d.png" /></a>
                    </div>
                </div>
            </div>

        </div>

        <!-- 合作机构 -->
        <div class="cooper-wapper">
            <div class="cooper">
                <h5><spring:message code="index.hzhb"/></h5>
                <div class="swiper-box">
                    <div class="swiper-container cooper-slide">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="fir">
                                    <img src="${base }/resources/images/index/p-logo-3b.jpg" />
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="fir">
                                    <img src="${base }/resources/images/index/p-logo-bgy.jpg" />
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="fir">
                                    <img src="${base }/resources/images/index/p-logo-CCG.jpg" />
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="fir">
                                    <img src="${base }/resources/images/index/p-logo-eu.png" />
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="fir">
                                    <img src="${base }/resources/images/index/p-logo-fs.png" />
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="fir">
                                    <img src="${base }/resources/images/index/p-logo-gh.png" />
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="fir">
                                     <img src="${base }/resources/images/index/p-logo-hw.png" />
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="fir">
                                   <img src="${base }/resources/images/index/p-logo-hwzk.png" />
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="fir">
                                    <img src="${base }/resources/images/index/p-logo-jr.jpg" />
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="fir">
                                    <img src="${base }/resources/images/index/p-logo-zy.jpg" />
                                </div>
                            </div>

                        </div>

                    </div>
                    <!-- 如果需要导航按钮 -->
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-button-next"></div>
                </div>

            </div>
        </div>

        <%@include file="/pages/common/footer.jsp"%>
    </div>

    
</body>
</html>