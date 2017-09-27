<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <title>加入我们</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <!-- 公共样式 -->
    <link href="${base }/resources/css/main.css" rel="stylesheet" type="text/css" />
    <link href="${base }/resources/css/flexslider.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="${base }/resources/css/common.css" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="${base }/resources/css/joinus-page.css">
    <!-- 公共js -->
    <script src="${base }/resources/js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="${base }/resources/js/jquery.flexslider-min.js" type="text/javascript"></script>
    <script src="${base }/resources/js/common.js" type="text/javascript" ></script>
    <script src="${base }/resources/js/joinus-page.js" type="text/javascript" ></script>
</head>
<body>
    <%@include file="/pages/common/logo.jsp"%>

    <div id="main" class="content">
    	<div class="banner-site">
			<%@include file="/pages/common/navbar.jsp"%>
	        <!-- 内容 -->
            <div class="page-img">
                <img src="${base }/resources/images/page/banner.jpg" alt="">
            </div>
		</div>

        <!-- 面包屑 -->
        <div class="breadcrumb">
            <ul class="list-inline">
                <li><a href="${base }/"><spring:message code="mbx.index"/></a></li>
                <li class="divider">&gt;</li>
                <li><a href="${base }/join-us.htm"><spring:message code="mbx.joinus"/></a></li>
            </ul>
        </div>
        <!-- 内容信息 -->
        <div class="summit-news model">
            <div class="tit">
                <h5><spring:message code="joinus.yjh"/></h5>
            </div>
            <div class="news-box clearfix">
                <div class="jionus-news">
                    <p><spring:message code="joinus.jj1"/></p>
                    <p><spring:message code="joinus.jj2"/></p>
                    <p><spring:message code="joinus.jj3"/></p>
                    <p><spring:message code="joinus.jj4"/></p>
                    <p><spring:message code="joinus.jj5"/></p>
                    <p><spring:message code="joinus.jj6"/></p>
                </div>
                <div class="jionus-banner">
                    <img src="${base }/resources/images/page/ju-pic01.png" alt="">
                </div>
            </div>
            <div class="tit">
                <span>&nbsp;</span>
                <h5><spring:message code="joinus.zpzw"/></h5>
            </div>
            <div class="news-box clearfix">
                <div class="jionus-box">
                    <div class="jionus-left">
                        <div class="pages-left-info events-pages-jionus">
                            <p><spring:message code="joinus.jqzpzw"/></p>
                            <ul>
                                <li>
                                    <span><spring:message code="joinus.dsh"/></span>
                                    <a class="is-active"><img src="${base }/resources/images/page/arrow-d.png" alt="">
                                       <spring:message code="joinus.zl"/><spring:message code="joinus.2m"/>
                                    </a>
                                </li>
                                <li>
                                    <span><spring:message code="joinus.scb"/></span>
                                    <a ><img src="${base }/resources/images/page/arrow-d.png" alt="">
                                       <spring:message code="joinus.mtlx"/><spring:message code="joinus.2m"/>
                                    </a>
                                    <a  ><img src="${base }/resources/images/page/arrow-d.png" alt="">
                                       <spring:message code="joinus.ptwh"/>
                                    </a>
                                </li>
                                <li>
                                    <span><spring:message code="joinus.yyb"/></span>
                                    <a ><img src="${base }/resources/images/page/arrow-d.png" alt="">
                                      <spring:message code="joinus.swz"/><spring:message code="joinus.2m"/>
                                    </a>
                                </li>
                                <li>
                                    <span><spring:message code="joinus.hdb"/></span>
                                    <a  ><img src="${base }/resources/images/page/arrow-d.png" alt="">
                                      <spring:message code="joinus.hdch"/><spring:message code="joinus.2m"/>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="jionus-right">
                        <div class="job-content">
                            <p class="job-classify">
                            <spring:message code="joinus.dsh"/>
                            <span><spring:message code="joinus.zl"/></span>
                            </p>
                            <div class="job-require1">
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span><spring:message code="joinus.gznr"/></span>
                                </div>
                                <div>
                                    <p><spring:message code="joinus.zlgznr1"/></p>
                                    <p><spring:message code="joinus.zlgznr2"/></p>
                                    <p><spring:message code="joinus.zlgznr3"/></p>
                                    <p><spring:message code="joinus.zlgznr4"/></p>
                                    <p><spring:message code="joinus.zlgznr5"/></p>
                                </div>
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span><spring:message code="joinus.gzyq"/></span>
                                </div>
                                <div >
                                    <p><spring:message code="joinus.zlgzyq1"/></p>
                                    <p><spring:message code="joinus.zlgzyq2"/></p>
                                    <p><spring:message code="joinus.zlgzyq3"/></p>
                                    <p><spring:message code="joinus.zlgzyq4"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="job-content none">
                            <p class="job-classify"><spring:message code="joinus.scb"/><span><spring:message code="joinus.mtlx"/></span></p>
                            <div class="job-require1">
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span><spring:message code="joinus.gznr"/></span>
                                </div>
                                <div>
                                    <p><spring:message code="joinus.mtlxgznr1"/></p>
                                    <p><spring:message code="joinus.mtlxgznr2"/></p>
                                    <p><spring:message code="joinus.mtlxgznr3"/></p>
                                    <p><spring:message code="joinus.mtlxgznr4"/></p>
                                </div>
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span><spring:message code="joinus.gzyq"/></span>
                                </div>
                                <div >
                                    <p><spring:message code="joinus.mtlxgzyq1"/></p>
                                    <p><spring:message code="joinus.mtlxgzyq2"/></p>
                                    <p><spring:message code="joinus.mtlxgzyq3"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="job-content none">
                            <p class="job-classify"><spring:message code="joinus.scb"/><span><spring:message code="joinus.ptwh"/></span></p>
                            <div class="job-require1">
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span><spring:message code="joinus.gznr"/></span>
                                </div>
                                <div>
                                    <p><spring:message code="joinus.ptwhgznr1"/></p>
                                    <p><spring:message code="joinus.ptwhgznr2"/></p>
                                    <p><spring:message code="joinus.ptwhgznr3"/></p>
                                    <p><spring:message code="joinus.ptwhgznr4"/></p>
                                </div>
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span><spring:message code="joinus.gzyq"/></span>
                                </div>
                                <div >
                                    <p><spring:message code="joinus.ptwhgzyq1"/></p>
                                    <p><spring:message code="joinus.ptwhgzyq2"/></p>
                                    <p><spring:message code="joinus.ptwhgzyq3"/></p>
                                    <p><spring:message code="joinus.ptwhgzyq4"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="job-content none">
                            <p class="job-classify"><spring:message code="joinus.yyb"/><span><spring:message code="joinus.swz"/></span></p>
                            <div class="job-require1">
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span><spring:message code="joinus.gznr"/></span>
                                </div>
                                <div>
                                    <p><spring:message code="joinus.swzgznr1"/></p>
                                    <p><spring:message code="joinus.swzgznr2"/></p>

                                </div>
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span><spring:message code="joinus.gzyq"/></span>
                                </div>
                                <div >
                                    <p><spring:message code="joinus.swzgzyq1"/></p>
                                    <p><spring:message code="joinus.swzgzyq2"/></p>
                                    <p><spring:message code="joinus.swzgzyq3"/></p>
                                    <p><spring:message code="joinus.swzgzyq4"/></p>
                                    <p><spring:message code="joinus.swzgzyq5"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="job-content none">
                            <p class="job-classify"><spring:message code="joinus.hdb"/><span><spring:message code="joinus.hdch"/></span></p>
                            <div class="job-require1">
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span><spring:message code="joinus.gznr"/></span>
                                </div>
                                <div>
                                    <p><spring:message code="joinus.hdchgznr1"/></p>
                                    <p><spring:message code="joinus.hdchgznr2"/></p>
                                    <p><spring:message code="joinus.hdchgznr3"/></p>
                                </div>
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span><spring:message code="joinus.gzyq"/></span>
                                </div>
                                <div >
                                    <p><spring:message code="joinus.hdchgzyq1"/></p>
                                    <p><spring:message code="joinus.hdchgzyq2"/></p>
                                    <p><spring:message code="joinus.hdchgzyq3"/></p>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="news-box-max clearfix">
                <div class="apply-for-details">
                    <h5><spring:message code="joinus.sqxq"/></h5>
                    <div class="marg-min">
                        <p><span>&middot;</span><spring:message code="joinus.sqxq1"/></p>
                        <p><span>&middot;</span><spring:message code="joinus.sqxq2"/></p>
                        <p><span>&middot;</span><spring:message code="joinus.sqxq3"/></p>
                    </div>
                    <h5><spring:message code="joinus.hdsm"/></h5>
                    <div>
                        <p class="p-marg"><spring:message code="joinus.hdsm1"/></p>
                        <p><span>(1)</span><spring:message code="joinus.hdsm2"/></p>
                        <p><span>(2)</span><spring:message code="joinus.hdsm3"/></p>
                        <p><span>(3)</span><spring:message code="joinus.hdsm4"/></p>
                        <p><span>(4)</span><spring:message code="joinus.hdsm5"/></p>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="/pages/common/footer.jsp"%>
    </div>

    
</body>
</html>