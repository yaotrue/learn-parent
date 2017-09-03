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
                <li><a href="${base }/">中英峰会</a></li>
                <li class="divider">&gt;</li>
                <li><a href="${base }/join-us.htm">加入我们</a></li>
            </ul>
        </div>
        <!-- 内容信息 -->
        <div class="summit-news model">
            <div class="tit">
                <h5>海阔凭鱼跃 &nbsp; 天高任鸟飞</h5>
            </div>
            <div class="news-box clearfix">
                <div class="jionus-news">
                    <p>2017年，伦敦中英峰会，带给了我们惊喜，给所有参与者留下了太多难忘的回忆；</p>
                    <p>2018年，伦敦中英峰会，筹备工作已然有条不紊地展开，所有人都期待又一次的突破；</p>
                    <p>我们，永远在路上。</p>
                    <p>中英峰会，做为已经在英国正式注册的非营利性公司，致力于探索中英两国黄金合作机会，汇集政治、经济、文化、教育、科技等各领域领袖及青年代表，与中英两国众多企业开展合作，搭建两国各领域交流的平台，最终成为促进中英两国交流合作的领航者，</p>
                    <p>现在，中英峰会除了定期举办年度交流会议外，还为中英两国合作企业提供咨询和对接等服务，并且有意在近期成立中英峰会慈善基金。</p>
                    <p>现在，我们需要对加入峰会工作感兴趣的你，和我们一起走下去，你有能力，我们有空间，回归匠心，精雕细琢，立根本职，精益求精，这是我们的态度。</p>
                </div>
                <div class="jionus-banner">
                    <img src="${base }/resources/images/page/ju-pic01.png" alt="">
                </div>
            </div>
            <div class="tit">
                <span>&nbsp;</span>
                <h5>招聘职位</h5>
            </div>
            <div class="news-box clearfix">
                <div class="jionus-box">
                    <div class="jionus-left">
                        <div class="pages-left-info events-pages-jionus">
                            <p>近期招聘职位</p>
                            <ul>
                                <li>
                                    <span>董事会</span>
                                    <a class="is-active"><img src="${base }/resources/images/page/arrow-d.png" alt="">
                                        助理（2名）
                                    </a>
                                </li>
                                <li>
                                    <span>市场部</span>
                                    <a ><img src="${base }/resources/images/page/arrow-d.png" alt="">
                                       中国区媒体联系（2名）
                                    </a>
                                    <a  ><img src="${base }/resources/images/page/arrow-d.png" alt="">
                                       网站及公共平台维护（2名）
                                    </a>
                                </li>
                                <li>
                                    <span>运营部</span>
                                    <a ><img src="${base }/resources/images/page/arrow-d.png" alt="">
                                       嘉宾及企业合作事务组（2名）
                                    </a>
                                </li>
                                <li>
                                    <span>活动部</span>
                                    <a  ><img src="${base }/resources/images/page/arrow-d.png" alt="">
                                       活动策划（2名）
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="jionus-right">
                        <div class="job-content">
                            <p class="job-classify">董事会<span>助理</span></p>
                            <div class="job-require1">
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span>工作内容</span>
                                </div>
                                <div>
                                    <p> 协助并参与董事的日常事务及行程安排；</p>
                                    <p>负责各类重要文件的起草、传递、催办工作；</p>
                                    <p>会议安排、通知及会议记录工作；</p>
                                    <p>负责中英峰会奖学金的运营工作；</p>
                                    <p>处理相关应急事务。</p>
                                </div>
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span>工作要求</span>
                                </div>
                                <div >
                                    <p>中英文能力突出，有熟练的英文口语和专业的英文书写能力；</p>
                                    <p>拥有一定的活动参与或组织经验；</p>
                                    <p>优秀的思考、研究和表达能力，富有战略眼光和创造力；</p>
                                    <p>能在压力较大的环境下工作，高效快速地处理多项事务。</p>
                                </div>
                            </div>
                        </div>
                        <div class="job-content none">
                            <p class="job-classify">市场部<span>中国区媒体联系</span></p>
                            <div class="job-require1">
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span>工作内容</span>
                                </div>
                                <div>
                                    <p> -执行峰会在华在英的媒体战略，提升峰会形象；</p>
                                    <p>-进行媒体的日常维护、发展；</p>
                                    <p>-协助峰会驻中国总代表与媒体的对接；</p>
                                    <p>-完成相关应急事务的处理。</p>
                                </div>
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span>工作要求</span>
                                </div>
                                <div >
                                    <p>-中英文能力突出，有专业出色的中文书写能力；</p>
                                    <p>-语言学、新闻学、传播学或者公共关系专业学士、硕士学位者优先；</p>
                                    <p>-拥有媒体公关领域经验。</p>
                                </div>
                            </div>
                        </div>
                        <div class="job-content none">
                            <p class="job-classify">市场部<span>网站维护及公共平台维护</span></p>
                            <div class="job-require1">
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span>工作内容</span>
                                </div>
                                <div>
                                    <p>-官方微信公众号文案编写；</p>
                                    <p>-官方Facebook及LinkenIn页面的维护；</p>
                                    <p>-官方网站的维护；</p>
                                    <p>-官方社交平台宣传图片设计。</p>
                                </div>
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span>工作要求</span>
                                </div>
                                <div >
                                    <p>-中英文能力突出，有熟练的英文口语和专业的英文书写能力；</p>
                                    <p>-拥有一定的文案编写及翻译经验；</p>
                                    <p>-拥有一定的网站维护及图片处理经验；</p>
                                    <p>-优秀的审美及设计能力。</p>
                                </div>
                            </div>
                        </div>
                        <div class="job-content none">
                            <p class="job-classify">运营部<span>嘉宾及企业合作事务组</span></p>
                            <div class="job-require1">
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span>工作内容</span>
                                </div>
                                <div>
                                    <p>-嘉宾和企业的具体合作事务，包括前期资料的收集、甄别、撰写，后期的联系、维护及了解合作伙伴的反馈等工作；</p>
                                    <p>-处理运营中的其他相关应急事务。</p>

                                </div>
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span>工作要求</span>
                                </div>
                                <div >
                                    <p>-中英文能力突出，有熟练的英文口语和专业的英文书写能力；</p>
                                    <p>-拥有活动组织经验和领导能力；</p>
                                    <p>-具有娴熟突出的人际交流能力；</p>
                                    <p>-能较好的辨识和评估中英两国经济、政治及教育等领域的事物；</p>
                                    <p>-能够运用多种平台搜集、辨识和整理资料。</p>
                                </div>
                            </div>
                        </div>
                        <div class="job-content none">
                            <p class="job-classify">活动部<span>活动策划</span></p>
                            <div class="job-require1">
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span>工作内容</span>
                                </div>
                                <div>
                                    <p>-为峰会各类活动的策划提供支持；</p>
                                    <p>-协助部门主管挑选、培训、监督峰会活动志愿者</p>
                                    <p>-峰会议程的设计、制定与推动：按时间表完成峰会相关活动的设计（峰会议程的拟定与推动）。</p>
                                </div>
                                <div class="job-title">
                                    <b>&nbsp;</b>
                                    <span>工作要求</span>
                                </div>
                                <div >
                                    <p>-拥有相关活动的工作经验；</p>
                                    <p>-有一定的创造力及活动协调能力；</p>
                                    <p>-较好团队服务意识，为峰会其他部门成员的工作提供支持。</p>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="news-box-max clearfix">
                <div class="apply-for-details">
                    <h5>- 申请详情 -</h5>
                    <div class="marg-min">
                        <p><span>&middot;</span>工作地点及时间不限</p>
                        <p><span>&middot;</span>招聘有效期 2017年6月起，所有职位一经录用即可马上入职</p>
                        <p><span>&middot;</span>请将个人CV发送至V.Qiu@sinobritishsummit.org, 在邮件主题中标注个人姓名及职位名称。</p>
                    </div>
                    <h5>- 加入峰会工作你可以获得什么 -</h5>
                    <div>
                        <p class="p-marg">中英峰会是刚刚注册的非盈利性公司，我们不能保证给予你很明确的工资，但是公司可以保证你一个自我提升的平台，一次和你共同前进的机会：</p>
                        <p><span>(1)</span>你将会切身加入到峰会筹办和公司运营工作中，负责对接各项事务，从中英政府部门到世界五百强企业，从英国皇室到世界名校校长，接触多方资源，推进多方合作，服务中英两国各类公私利益,为两国之间更好的共同发展贡献出自己的力量；</p>
                        <p><span>(2)</span>你将会体验不同国家文化交融的工作氛围，锻炼自己与非中国员工的共识能力；</p>
                        <p><span>(3)</span>你将会保持对中英两国各领域最新动态的了解，提升个人的洞察力与分析能力；</p>
                        <p><span>(4)</span>除了年度大型峰会的筹办工作，你将会参与中英企业双向对接工作，帮助企业开拓新的市场提升个人能力与积累人脉。</p>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="/pages/common/footer.jsp"%>
    </div>

    
</body>
</html>