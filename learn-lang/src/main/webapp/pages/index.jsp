<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
    <link rel="stylesheet" href="${base }/resources/css/common.css" />
    <link rel="stylesheet" href="${base }/resources/css/index.css" />
    <script src="${base }/resources/js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="${base }/resources/js/jquery.flexslider-min.js" type="text/javascript"></script>
    <script src="${base }/resources/js/common.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function() {
             $('.flexslider').flexslider({
                 slideshowSpeed: 3000,
                 slideshow: true,
             });
             $('.cooper-slide').flexslider({
                animation: "slide",
                slideshow: true,
				slideshowSpeed:5000
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
					<c:forEach items="${indexKv }" var="kv">
					<li>
						<c:forEach items="${kv.newsImages }" var="newImage" begin="0" end="0">
	                   	<img src="${base }/resources/images/newsimage/${newImage.picUri }" />
						</c:forEach>
	                   <div class="txt-info">
	                       <div>
	                           <h4>${kv.title }</h4>
	                           <p>${kv.content }</p>  
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
                <h5>峰会新闻</h5>
            </div>
            <ul>
            	<c:forEach items="${indexNews }" var="news" varStatus="stas">
            	<li<c:choose><c:when test="${stas.first }"> class="fir"</c:when><c:when test="${stas.last }"> class="thir"</c:when><c:otherwise> class="sec"</c:otherwise></c:choose>>
                    <div>
                       	<a href="${base }/news.htm">
                       		<c:forEach items="${news.newsImages }" var="newImage" begin="0" end="0">
		                   	<img src="${base }/resources/images/newsimage/${newImage.picUri }" />
							</c:forEach>
                            <h5>${news.title }</h5>
                            <p>${news.content }</p>
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
                <a href="${base }/news.htm">查看更多</a>
            </div>
        </div>
        <!-- 专访博客 -->
        <div class="summit-blog model">
            <div class="tit">
                <span>&nbsp;</span>
                <h5>峰会项目</h5>
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
                <a href="${base }/project.htm">查看更多</a>
            </div>
        </div>
        <!-- 峰会成员 -->
        <div class="summit-member">
            <h5 class="tit">峰会人物</h5>
            <div class="member-con">
                <div class="member-up">
                    <ul>
                        <li>
                            <img src="${base }/resources/images/index/teampic-lzy.png" />
                            <p class="name">李宗洋</p>
                            <p class="site">
                                <span>峰会总策划</span>
                                <span>董事会主席</span>
                            </p>
                        </li>
                        <li>
                            <img src="${base }/resources/images/index/teampic-qty.png" />
                            <p class="name">仇天宇</p>
                            <p class="site">
                                <span>峰会活动负责人</span>
                                <span>董事会副主席</span>
                            </p>
                        </li>
                        <li>
                            <img src="${base }/resources/images/index/teampic-hugh.png" />
                            <p class="name">Hugh Findlay</p>
                            <p class="site">
                                <span>政府联络总监</span>
                                <span>峰会董事会董事</span>
                            </p>
                        </li>
                        <li>
                            <img src="${base }/resources/images/index/teampic-duncan.png" />
                            <p class="name">Duncan McEwan</p>
                            <p class="site">
                                <span>峰会发展总监</span>
                                <span>峰会董事会董事</span>
                            </p>
                        </li>
                    </ul>
                </div>
                <div class="member-down">
                    <div class="con-lf">
                        <ul>
                           <li class="fir">
                                <h5 class="tit">峰会顾问</h5>
                                <img src="${base }/resources/images/index/adviserpic-michie.png" />
                                <p class="name">Alistair Michie</p>
                                <p class="site">英国东亚委员会秘书长麦启安</p>
                            </li>
                            <li class="sec">&nbsp;</li>
                        </ul>
                    </div>
                    <div class="con-rg">
                        <h5 class="tit">峰会嘉宾</h5>
                        <ul>
                            <li>
                                <img src="${base }/resources/images/index/richard-cooper.jpg" />
                                <p class="name">Richard Cooper</p>
                                <p class="site">
                                    <span>美国前副国务卿</span>
                                </p>
                            </li>
                            <li>
                                <img src="${base }/resources/images//index/adviserpic-spens.png" />
                                <p class="name">Michael Spens</p>
                                <p class="site">
                                    <span>现任校长</span>
                                </p>
                            </li>
                        </ul>
                    </div>
                    <div class="view-more">
                        <a href="${base }/about-us.htm?a2" class="more-momber">中英峰会 | 顾问、嘉宾、执行团队一览<img src="${base }/resources/images/index/arrow-d.png" /></a>
                    </div>
                </div>
            </div>

        </div>

        <!-- 合作机构 -->
        <div class="cooper-wapper">
            <div class="cooper">
                <h5>合作机构</h5>
                <div class="cooper-slide">
                    <ul class="slides">
                        <li>
                            <div class="fir">
                                <img src="${base }/resources/images/index/p-logo-bs.png" />
                            </div>
                            <div class="sec">
                                <img src="${base }/resources/images/index/p-logo-eu.png" />
                            </div>
                            <div class="thir">
                                <img src="${base }/resources/images/index/p-logo-fs.png" />
                            </div>
                            <div class="fou">
                                <img src="${base }/resources/images/index/p-logo-yr.png" />
                            </div>
                        </li>
                        <li>
                            <div class="fir">
                                <img src="${base }/resources/images/index/p-logo-fc.png" />
                            </div>
                            <div class="sec">
                                <img src="${base }/resources/images/index/p-logo-gh.png" />
                            </div>
                            <div class="thir">
                                <img src="${base }/resources/images/index/p-logo-hwzk.png" />
                            </div>
                            <div class="fou">
                                <img src="${base }/resources/images/index/p-logo-hw.png" />
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <%@include file="/pages/common/footer.jsp"%>
    </div>

    
</body>
</html>