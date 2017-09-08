<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
	               <li>
	                   <img src="${base }/resources/images/index/kv.jpg" />
	                   <div class="txt-info">
	                       <div>
	                           <h4>世界风云变化 中国如何应对</h4>
	                           <p>第一届伦敦中英峰会举行，中外专家共论中国机遇与挑战</p>  
	                       </div>
	                   </div>
	               </li>
	               <li>
	                   <img src="${base }/resources/images/index/kv-2.jpg" />
	                   <div class="txt-info">
	                       <div>
	                           <h4>世界能源-Gate 国际有限公司总裁专访</h4>
	                           <p>壳牌中国前董事、精品资讯兼投资公司Gate国际有限公司总裁EurIng. Henry K. H. Wang专访</p>  
	                       </div>
	                   </div>
	               </li>
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
                <li class="fir">
                    <div>
                       <a href="${base }/news.htm">
                            <img src="${base }/resources/images/index/newsbanner01.jpg" />
                            <h5>江苏省外事办特别报道——第一届伦敦中英峰在伦敦四季酒店成功举行</h5>
                            <p>由第四届江苏省青年友好使者仇天宇组织的第
                            一届伦敦中英峰会于2017年2月4日在伦敦四季酒店成功举行。</p>
                        </a>
                       <!--  <div class="author-info">
                            <span>Hala Hanna </span>
                            <span>21/07/2017</span>
                        </div> -->
                    </div>
                </li>
                <li class="sec">
                    <div>
                       <a href="${base }/news.htm?a3">
                            <img src="${base }/resources/images/index/newsbanner02.jpg" />
                            <h5>峰会董事会主席及政府联络总监会见大曼彻斯特市长Andy Burnham</h5>
                            <p>近日，中英峰会董事会主席李宗洋及政府联络总监Hugh Findlay在曼彻斯特会见了大曼彻斯特地区市长Andy Burnham。</p>
                        </a>
                        <!-- <div class="author-info">
                            <span>Hala Hanna </span>
                            <span>21/07/2017</span>
                        </div> -->
                    </div>
                </li>
                <li class="thir">
                    <div>
                       <a href="${base }/news.htm">
                            <img src="${base }/resources/images/index/newsbanner03.jpg" />
                            <h5>中英教育新动态——博实乐教育集团与费得斯公学成功签约</h5>
                            <p>近日，中国博实乐教育集团与英国“四大公学”之一费得斯公学成功举行了合作签约仪式。</p>
                        </a>
                        <!-- <div class="author-info">
                            <span>Hala Hanna </span>
                            <span>21/07/2017</span>
                        </div> -->
                    </div>
                </li>
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
                <li class="fir">
                    <div>
                       <a href="${base }/project.htm?a1">
                            <img src="${base }/resources/images/index/blogbanner01.png" />
                        </a>
                        <div class="detail">
                            <p> 世界能源—壳牌中国前董事Gate国际有限公司总裁专访</p>
                            <!-- <span>Hala Hanna </span>
                            <span>21/07/2017</span> -->
                        </div>
                    </div>
                </li>
                <li class="sec">&nbsp;</li>
                <li class="thir">
                    <div>
                       <a href="${base }/project.htm?a2">
                            <img src="${base }/resources/images/index/360-s.png" />
                        </a>
                        <div class="detail">
                            <p>360海外广告部总经理专访—品牌定位与海外战略</p>
                            <!-- <span>Hala Hanna </span>
                            <span>21/07/2017</span> -->
                        </div>
                    </div>
                </li>
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