<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>about-us</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

<link rel="stylesheet" href="${base }/resources/css/common.css" />
<link rel="stylesheet" href="${base }/resources/css/about-us.css">

<script src="${base }/resources/js/jquery-1.7.2.min.js"
	type="text/javascript"></script>
<script src="${base }/resources/js/common.js" type="text/javascript"></script>
<script src="${base }/resources/js/aboutus.js" type="text/javascript"></script>
</head>
<body>
	<%@include file="/pages/common/logo.jsp"%>

	<div id="main" class="content">
		<div class="banner-site">
			<%@include file="/pages/common/navbar.jsp"%>
			<!-- banner -->
			<div class="banner">
				<img src="${base }/resources/images/about-us/banner.png" />
			</div>
		</div>

		<!-- 面包屑 -->
        <div class="breadcrumb">
            <ul class="list-inline">
                <li><a href="${base }/"><spring:message code="mbx.index"/></a></li>
                <li class="divider">&gt;</li>
                <li><a href="${base }/about-us.htm"><spring:message code="aboutus.mbx.gywm"/></a></li>
            </ul>
        </div>

        <div class="about-summit myaccount">
            <div class="tit">
                <div>
                   <span>&nbsp;</span>
                    <h5><spring:message code="aboutus.mbx.gywm"/></h5>
                </div>
                <p><spring:message code="aboutus.jianjie"/></p>
            </div>
            <div class="myaccount-inner clearfix">
                <div class="myaccount-lf">
                    <h5><spring:message code="aboutus.mbx.gywm"/></h5>
                    <ul>
                        <li class="current"><a><img src="${base }/resources/images/page/arrow-d.png" alt=""><spring:message code="aboutus.wmdsm"/></a></li>
                        <li><a><img src="${base }/resources/images/page/arrow-d.png" alt=""><spring:message code="aboutus.wmdtd"/></a></li>
                        <li><a><img src="${base }/resources/images/page/arrow-d.png" alt=""><spring:message code="aboutus.ldtd"/></a></li>
                    </ul>
                </div>
                <div class="myaccount-rt">
                    <!-- 关于我们 -->
                    <div >
                        <h5 class="headline">
                            <p><spring:message code="aboutus.wmdsm"/></p>
                            <span><spring:message code="aboutus.smjj"/></span>
                        </h5>
                        <div class="myaccount-down">
                            <div>
                                <p><spring:message code="aboutus.smjj1"/></p>

                                <p><spring:message code="aboutus.smjj2"/></p>
                                <p><spring:message code="aboutus.smjj3"/></p>
                                <p><spring:message code="aboutus.smjj4"/></p>

                            </div>
                        </div>
                    </div>
                    <!-- 我们的特点 -->
                    <div class="none">
                        <h5 class="headline">
                            <p><spring:message code="aboutus.wmdtd"/></p>
                            <span><spring:message code="aboutus.wmdtdjj"/></span>
                        </h5>
                        <div class="myaccount-down trait-down">
                            <div class="fir">
                                <p><img src="${base }/resources/images/about-us/neu.png" ></p>
                                <div>
                                    <h5><spring:message code="aboutus.wmdtdjj1"/></h5>
                                    <p><spring:message code="aboutus.wmdtdjj2"/></p>
                                </div>
                            </div>
                            <div class="sec">
                                <p><img src="${base }/resources/images/about-us/div.png" ></p>
                                <div>
                                    <h5><spring:message code="aboutus.wmdtdjj3"/></h5>
                                    <p><spring:message code="aboutus.wmdtdjj4"/></p>
                                </div>
                            </div>
                            <div class="thir">
                                <p><img src="${base }/resources/images/about-us/sus.png" ></p>
                                <div>
                                    <h5><spring:message code="aboutus.wmdtdjj5"/></h5>
                                    <p><spring:message code="aboutus.wmdtdjj6"/></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 领导团队 -->
                    <div class="none">
                        <h5 class="headline">
                            <p><spring:message code="aboutus.ldtd"/></p>
                            <span>
                                	<spring:message code="aboutus.ldtdjj"/>
                            </span>
                            <span><spring:message code="aboutus.ldtdjj1"/></span>
                        </h5>
                        <div class="about-team events-about-team">
                            <ul>
                              <li class="active"><spring:message code="index.gw"/></li>
                              <li><spring:message code="index.dsh"/></li>
                              <li><spring:message code="index.rw"/></li>
                            </ul>
                        </div>
                        <div class="myaccount-down team-down">
                           <!-- 顾问团成员 -->
                           <div class="about-team-content">
                                <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/adviserpic-michie.png" width="400" height="300" /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               <h5 class="name-ch">
                                                <span class="name"><spring:message code="index.gw.am"/></span>
                                               	<spring:message code="index.gw.amsite"/></h5>
                                               <div class="txt">
                                                    <p><spring:message code="aboutus.gwjj1"/></p>
                                                    <p><spring:message code="aboutus.gwjj2"/></p>
                                               </div>
                                           </div>
                                            <p class="info-show events-info-show">
                                              <i class="icon-down icon-up"></i>
                                            </p>
                                        </div>
                                   </div>
                               </div>
                               <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/adviserpic-henry.jpg"  /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               	<h5 class="name-ch">
                                               		<span class="name"><spring:message code="aboutus.gw.hw"/></span>
                                               		<spring:message code="aboutus.gw.hwjj1"/>
                                               	</h5>
                                               <div class="txt">
                                                    <p><spring:message code="aboutus.gw.hwjj2"/></p>
                                                    <p><spring:message code="aboutus.gw.hwjj3"/></p>
                                                    <p><spring:message code="aboutus.gw.hwjj4"/></p>
                                                    <p><spring:message code="aboutus.gw.hwjj5"/></p>
                                               </div>
                                           </div>
                                            <p class="info-show events-info-show">
                                                 <i class="icon-down icon-up"></i>
                                            </p>
                                        </div>
                                   </div>
                               </div>
                               <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/adviserpic-Alexander.jpg" /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               	<h5 class="name-ch">
                                               		<span class="name">
                                               		<spring:message code="aboutus.gw.ac"/>
                                               		</span>
                                               		<spring:message code="aboutus.gw.acjj1"/>
                                               	</h5>
                                               	<div class="txt">
                                                    <p><spring:message code="aboutus.gw.acjj2"/></p>
                                               	</div>
                                           </div>
                                            <p class="info-show events-info-show">
                                                 <i class="icon-down icon-up"></i>
                                            </p>
                                        </div>
                                   </div>
                               </div>
                           </div>
                           <!-- 董事会成员 -->
                           <div class="about-team-content none ">
                               <div class="team-pic clearfix">
                               		<div class="fir">
                               			<a><img src="${base }/resources/images/about-us/teampic-lzy.png"/></a>
                               			<div>
                               				<h5><spring:message code="index.dsh.lzy"/></h5>
    										<p><spring:message code="index.dsh.lzyzw1"/></p>
                                			<p><spring:message code="index.dsh.lzyzw2"/></p>
                               			</div>
                               		</div>
                               		<div class="sec">
                               			<a><img src="${base }/resources/images/about-us/teampic-qty.png"/></a>
                               			<div>
                               				<h5><spring:message code="index.dsh.qty"/></h5>
                               				<p><spring:message code="index.dsh.qtyzw1"/></p>
                                			<p><spring:message code="index.dsh.qtyzw2"/></p>
                               			</div>
                               		</div>
                               		<div class="fir">
                               			<a><img src="${base }/resources/images/about-us/teampic-hugh.png"/></a>
                               			<div>
                               				<h5><spring:message code="index.dsh.hf"/></h5>
    										<p><spring:message code="index.dsh.hfzw1"/></p>
                                			<p><spring:message code="index.dsh.hfzw2"/></p>
                               			</div>
                               		</div>
                               		<div class="sec">
                               			<a><img src="${base }/resources/images/about-us/teampic-duncan.png"/></a>
                               			<div>
                               				<h5><spring:message code="index.dsh.dm"/></h5>
    										<p><spring:message code="index.dsh.dmzw1"/></p>
                               				<p><spring:message code="index.dsh.dmzw2"/></p>
                               			</div>
                               		</div>
                               </div>
                           </div>
                           <!-- 峰会人物 -->
                           <div class="about-team-content none">
                                <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/001.png" width="400" height="300" /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               	<h5 class="name-ch">
                                                <span class="name"><spring:message code="aboutus.rw.kc"/></span>
                                               	<spring:message code="aboutus.rw.kc.zw"/>
                                               	</h5>
                                               <div class="txt">
                                                    <p><spring:message code="aboutus.rw.kc.jj"/>
                                                    </p>
                                               </div>
                                           </div>
                                            <p class="info-show events-info-show">
                                              <i class="icon-down icon-up "></i>
                                            </p>
                                        </div>
                                   </div>
                               </div>
                               <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/002.png" /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               <h5 class="name-ch">
                                               		<span class="name"><spring:message code="aboutus.rw.wc"/></span>
                                               		<spring:message code="aboutus.rw.wc.zw"/>
                                               	</h5>
                                               <div class="txt">
                                                    <p><spring:message code="aboutus.rw.wc.jj1"/></p>
                                                    <p><spring:message code="aboutus.rw.wc.jj2"/></p>
                                               </div>
                                           </div>
                                            <p class="info-show events-info-show">
                                                 <i class="icon-down icon-up"></i>
                                            </p>
                                        </div>
                                   </div>
                               </div>
                               <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/003.png" /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               	<h5 class="name-ch">
                                               		<span class="name"><spring:message code="aboutus.rw.cs"/></span>
                                               		<spring:message code="aboutus.rw.cs.zw"/>
                                               	</h5>
                                               <div class="txt">
                                                    <p><spring:message code="aboutus.rw.cs.jj1"/></p>
                                                    <p><spring:message code="aboutus.rw.cs.jj2"/></p>
                                               </div>
                                           </div>
                                            <p class="info-show events-info-show">
                                                 <i class="icon-down icon-up"></i>
                                            </p>
                                        </div>
                                   </div>
                               </div>
                               <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/004.png" /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               <h5 class="name-ch">
                                               		<span class="name">
                                               		<spring:message code="index.rw.rc"/></span>
                                               		<spring:message code="index.rw.rcsite"/>
                                               	</h5>
                                               <div class="txt">
                                                    <p><spring:message code="aboutus.rw.rc.jj1"/></p>
                                                    <p><spring:message code="aboutus.rw.rc.jj2"/></p>
                                               </div>
                                           </div>
                                            <p class="info-show events-info-show">
                                                 <i class="icon-down icon-up"></i>
                                            </p>
                                        </div>
                                   </div>
                               </div>
                               <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/005.png" /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               <h5 class="name-ch">
                                               	<span class="name"><spring:message code="aboutus.rw.whb"/></span>
                                               	<spring:message code="aboutus.rw.whb.zw"/>
                                               	</h5>
                                               <div class="txt">
                                                    <p><spring:message code="aboutus.rw.whb.jj1"/></p>
                                                    <p><spring:message code="aboutus.rw.whb.jj2"/></p>
                                               </div>
                                           </div>
                                            <p class="info-show events-info-show">
                                                 <i class="icon-down icon-up"></i>
                                            </p>
                                        </div>
                                   </div>
                               </div>
                               <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/006.png" /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               <h5 class="name-ch">
                                               <span class="name"><spring:message code="aboutus.rw.cwm"/></span>
                                               <spring:message code="aboutus.rw.cwm.zw"/>
                                               </h5>
                                               <div class="txt">
                                                    <p><spring:message code="aboutus.rw.cwm.jj1"/></p>
                                                    <p><spring:message code="aboutus.rw.cwm.jj2"/></p>
                                               </div>
                                           </div>
                                            <p class="info-show events-info-show">
                                                 <i class="icon-down icon-up"></i>
                                            </p>
                                        </div>
                                   </div>
                               </div>
                               <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/007.png" /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               <h5 class="name-ch">
                                               <span class="name">
                                               <spring:message code="aboutus.rw.pl"/></span>
                                               <spring:message code="aboutus.rw.pl.zw"/></h5>
                                               <div class="txt">
                                                    <p><spring:message code="aboutus.rw.pl.jj1"/></p>
                                                    <p><spring:message code="aboutus.rw.pl.jj2"/></p>
                                               </div>
                                           </div>
                                            <p class="info-show events-info-show">
                                                 <i class="icon-down icon-up"></i>
                                            </p>
                                        </div>
                                   </div>
                               </div>
                               <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/008.png" /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               <h5 class="name-ch"><span class="name">
                                               <spring:message code="aboutus.rw.rhc"/></span>
                                               <spring:message code="aboutus.rw.rhc.zw"/></h5>
                                               <div class="txt">
                                                <p><spring:message code="aboutus.rw.rhc.jj1"/></p>
                                                <p><spring:message code="aboutus.rw.rhc.jj2"/>
                                                </p>
                                               </div>
                                           </div>
                                            <p class="info-show events-info-show">
                                                 <i class="icon-down icon-up"></i>
                                            </p>
                                        </div>
                                   </div>
                               </div>
                               <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/009.png" /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               <h5 class="name-ch"><span class="name">
                                               <spring:message code="aboutus.rw.hm"/></span>
                                               <spring:message code="aboutus.rw.hm.zw"/></h5>
                                               <div class="txt">
                                                    <p><spring:message code="aboutus.rw.hm.jj1"/></p>
                                               </div>
                                           </div>
                                            <p class="info-show events-info-show">
                                                 <i class="icon-down icon-up"></i>
                                            </p>
                                        </div>
                                   </div>
                               </div>
                               <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/010.png" /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               <h5 class="name-ch"><span class="name">
                                               <spring:message code="aboutus.rw.mcds"/></span>
                                               <spring:message code="aboutus.rw.mcds.zq"/></h5>
                                               <div class="txt">
                                                    <p><spring:message code="aboutus.rw.mcds.jj"/></p>
                                               </div>
                                           </div>
                                            <p class="info-show events-info-show">
                                                 <i class="icon-down icon-up"></i>
                                            </p>
                                        </div>
                                   </div>
                               </div>
                               <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/011.png" /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               <h5 class="name-ch"><span class="name">
                                               <spring:message code="aboutus.rw.cj"/></span>
                                               <spring:message code="aboutus.rw.cj.zw"/></h5>
                                               <div class="txt">
                                                    <p><spring:message code="aaboutus.rw.cj.jj"/></p>
                                               </div>
                                           </div>
                                            <p class="info-show events-info-show">
                                                 <i class="icon-down icon-up"></i>
                                            </p>
                                        </div>
                                   </div>
                               </div>
                               <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/012.png" /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               <h5 class="name-ch"><span class="name">
                                               <spring:message code="aboutus.rw.lg"/></span>
                                               <spring:message code="aboutus.rw.lgzw1"/><br>
                                               <spring:message code="aboutus.rw.lgzw2"/></h5>
                                               <div class="txt">
                                                    <p><spring:message code="aboutus.rw.lgjj"/></p>
                                               </div>
                                           </div>
                                            <p class="info-show events-info-show">
                                                 <i class="icon-down icon-up"></i>
                                            </p>
                                        </div>
                                   </div>
                               </div>
                               <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/013.png" /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               <h5 class="name-ch"><span class="name">
                                               <spring:message code="aboutus.rw.jxcz"/></span>
                                               <spring:message code="aboutus.rw.jxczzw"/></h5>
                                               <div class="txt">
                                                <p><spring:message code="aboutus.rw.jxczjj1"/></p>
                                                <p><spring:message code="aboutus.rw.jxczjj2"/>
                                                </p>
                                               </div>
                                           </div>
                                            <p class="info-show events-info-show">
                                                 <i class="icon-down icon-up"></i>
                                            </p>
                                        </div>
                                   </div>
                               </div>
                               <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/014.png" /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               <h5 class="name-ch"><span class="name">
                                               <spring:message code="aboutus.rw.jap"/></span>
                                               <spring:message code="aboutus.rw.japzw1"/><br>
                                               <spring:message code="aboutus.rw.japzw2"/>
												</h5>
                                               <div class="txt">
                                                    <p></p>
                                               </div>
                                           </div>
                                            <p class="info-show events-info-show">
                                                 <i class="icon-down icon-up none"></i>
                                            </p>
                                        </div>
                                   </div>
                               </div>
                               <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/015.png" /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               <h5 class="name-ch"><span class="name">
                                               <spring:message code="aboutus.rw.rm"/></span>
                                               <spring:message code="aboutus.rw.rmzw1"/><br>
                                               <spring:message code="aboutus.rw.rmzw2"/></h5>
                                               <div class="txt">
                                                    <p></p>
                                               </div>
                                           </div>
                                            <p class="info-show events-info-show">
                                                 <i class="icon-down icon-up none"></i>
                                            </p>
                                        </div>
                                   </div>
                               </div>
                               <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/016.png" /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               <h5 class="name-ch"><span class="name">
                                               <spring:message code="aboutus.rw.dl"/></span>
                                               <spring:message code="aboutus.rw.dlzw1"/><br>
                                               <spring:message code="aboutus.rw.dlzw2"/></h5>
                                               <div class="txt">
                                                    <p></p>
                                               </div>
                                           </div>
                                            <p class="info-show events-info-show">
                                                 <i class="icon-down icon-up none"></i>
                                            </p>
                                        </div>
                                   </div>
                               </div>
                           </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="contact-us">
                <div class="tit">
                   <span>&nbsp;</span>
                    <h5><spring:message code="footer.contactus"/></h5>
                </div>
                <div class="contact-con">
                    <div class="fir">
                        <h5><spring:message code="aboutus.zyfhzb"/></h5>
                        <p>
                            <span class="fir"><spring:message code="aboutus.dztitle"/></span>
                            <span class="sec"><spring:message code="aboutus.dz"/></span>
                        </p>
                        <p>
                            <span class="fir"><spring:message code="aboutus.dhtitle"/></span>
                            <span class="sec"><spring:message code="aboutus.dh"/></span>
                        </p>
                        <p>
                            <span class="fir"><spring:message code="aboutus.ybtitle"/></span>
                            <span class="sec"><spring:message code="aboutus.yb"/></span>
                        </p>
                        <div class="botm-email">
                            <div class="fir">
                                <p>
                                    <span class="fir"><spring:message code="aboutus.hdyxtitle"/></span>
                                    <span class="sec"><spring:message code="aboutus.hdyx"/></span>
                                </p>
                            </div>
                            <div class="sec">
                                <p>
                                    <span class="fir"><spring:message code="aboutus.zzyxtitle"/></span>
                                    <span class="sec"><spring:message code="aboutus.zzyx"/></span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

			<%@include file="/pages/common/footer.jsp"%>
		</div>
</body>
</html>