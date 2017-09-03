<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>峰会新闻</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

    <link rel="stylesheet" href="${base }/resources/css/common.css" />
    <link rel="stylesheet" href="${base }/resources/css/schedule.css">
    <script src="${base }/resources/js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="${base }/resources/js/common.js" type="text/javascript"></script>
    <script src="${base }/resources/js/schedule.js" type="text/javascript"></script>
    
    <meta charset="utf-8">
    <title>峰会新闻</title>
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
                <li><a href="/">中英峰会</a></li>
                <li class="divider">&gt;</li>
                <li><a href="/">峰会新闻</a></li>
            </ul>
        </div>
        <!-- 内容信息 -->
        <div class="summit-news model">
            <div class="tit">
                <span>&nbsp;</span>
                <h5>峰会新闻</h5>
                <p>第一时间了解中英峰会最新资讯信息</p>
            </div>
            <div class="news-box clearfix">
                <div class="pages-left">
                    <div class="pages-left-info events-pages-new">
                        <p>近期新闻纵览</p>
                        <ul>
                            <li><a  href="#page1"><img src="${base }/resources/images/page/arrow-d.png" alt="">
                                博实乐教育集团与费得斯公学成功签约
                            </a></li>
                            <li><a href="#page2""><img src="${base }/resources/images/page/arrow-d.png" alt="">
                                麦启安出任中英峰会荣誉主席
                            </a></li>
                            <li><a  href="#page3"><img src="${base }/resources/images/page/arrow-d.png" alt="">
                                峰会创始人会面新东方董事长俞敏洪
                            </a></li>
                            <li><a  href="#page4"><img src="${base }/resources/images/page/arrow-d.png" alt="">
                                   中英峰会董事会见大曼彻斯特市长Andy Burnham
                            </a></li>
                            <li><a  href="#page5"><img src="${base }/resources/images/page/arrow-d.png" alt="">
                                江苏省外事办特别报道
                            </a></li>
                        </ul>
                    </div>
                </div>
                <div class="pages-right ">
                    <div class="news-1 clearfix">
                        <div class="pages-cont-l">
                            <div>
                                <img class="result-img" init-src="" src="${base }/resources/images/page/newsbanner.png" alt="">
                            </div>
                            <div class="pages-img evens-pages-img">
                                <ul>
                                    <li class="padd-right active">
                                        <img data-select="false" src="${base }/resources/images/page/newsbanner-mini.png" data-src="${base }/resources/images/page/newsbanner.png">
                                    </li>
                                    <li class="padd-center">
                                        <img data-select="false" src="${base }/resources/images/page/newsbanner-mini1.jpg" data-src="${base }/resources/images/page/newsbanner-l.png" alt="">
                                    </li>
                                    <li class="padd-left">
                                        <img data-select="false" src="${base }/resources/images/page/newsbanner-mini2.jpg" data-src="${base }/resources/images/page/newsbanner-2.png" alt="">
                                    </li>
                                    <li>
                                        <img data-select="false" src="${base }/resources/images/page/newsbanner-mini3.jpg" data-src="${base }/resources/images/page/newsbanner-3.png" alt="">
                                    </li>

                                </ul>
                            </div>
                        </div>
                        <div class="pages-cont-r">
                            <div>
                                <h5 id="page1">中英教育新动态——博实乐教育集团与费得斯公学成功签约</h5>
                                <div>
                                    <p>近日，中国博实乐教育集团与英国“四大公学”之一费得斯公学成功举行了合作签约仪式，博实乐教育集团总裁何军立、副总裁陈舒、费得斯公学校董Bruce Dingwall、John Lang及校长Michael Spens作为双方的主要代表参加了本次签约仪式，峰会创始人李宗洋也作为特别嘉宾有幸见证了这一伟大的时刻。</p>

                                    <p>其中，博实乐集团副总裁陈舒先生及费得斯公学校长Michael Spens均曾于今年二月受邀参加中英峰会的教育分论坛，并在当天的活动中共同探索了中西方教育文化理念、跨文化教学等问题，也强调了中英两国教育优势互补的必要性。半年后的今天，他们把想法落实到了实际行动上，这与峰会的核心理念相当，真正促成了中英文化交流融合后的产物。</p>

                                    <p>“这是中英两国教育界一次完美的交流与融合。”—— 英国政府表示非常愿意看到更多拥有国际视野的英国教育者，把英国高质量的教育资源带到世界的每一个角落， 就像费得斯一样。博实乐与费得斯合作办学，把英国领先的教育理念带到发展迅速的中国，英国同时可以汲取中国优秀的教育精华。相信费得斯公学中国校区可以产生旗舰效应，促使中英国际教育共同进步。</p>

                                    <p><span>关于博实乐</span>
                                    中国最大的K12学校运营集团，于2017年5月18日成功登陆美国纽交所，成为中国教育集团赴美上市最大的IPO。依然不满足于现时发展速度的博实乐，为进一步扩大规模与提高全
                                    球信誉度，开始迈开了全球寻找优质合作伙伴的步伐，而全球战略新起点始于欧洲英国。</p>

                                    <p><span>关于费得斯公学</span>
                                    与伊顿公学并列英国“四大公学”之一，被称为“北方的伊顿”（同时，伊顿则被称为“南方的费得斯”）。已有140余年历史的费得斯公学拥有经验丰富且专业卓越的师资力量，也是众多各行各业精英的诞生地，知名校友包括英国前首相Tony Blair、“广告教父”David Ogilvy、2015年诺贝尔经济学奖得主Angus Deaton及奥斯卡金像奖最佳女配角获得者Tilda Swinton。</p>

                                </div>
                            </div>
                             <p class="info-show events-info-show">
                                 <span>Hala Hanna 21/07/2017</span>
                                 <i class="icon-down icon-up"></i>
                             </p>
                        </div>
                    </div>
                    <div class="news-1 clearfix">
                        <div class="pages-cont-l">
                            <div>
                                <img class="result-img" init-src="" src="${base }/resources/images/page/max-newsbanner1.jpg" alt="">
                            </div>
                            <div class="pages-img evens-pages-img">
                                <ul>
                                    <li class="padd-right active">
                                        <img data-select="false" src="${base }/resources/images/page/min-newsbanner1.jpg" data-src="${base }/resources/images/page/max-newsbanner1.jpg">
                                    </li>
                                    <li class="padd-center">
                                        <img data-select="false" src="${base }/resources/images/page/min-newsbanner2.jpg" data-src="${base }/resources/images/page/max-newsbanner2.jpg" alt="">
                                    </li>
                                    <li class="padd-left">
                                        <img data-select="false" src="${base }/resources/images/page/min-newsbanner3.jpg" data-src="${base }/resources/images/page/max-newsbanner3.jpg" alt="">
                                    </li>


                                </ul>
                            </div>
                        </div>
                        <div class="pages-cont-r">
                            <div>
                                <h5  id="page2">中国政府友谊奖得主麦启安出任中英峰会荣誉主席</h5>
                                <div>
                                    <p>7月24日，中国政府友谊奖得主、中国国务院总理顾问麦启安先生（Alistair Michie）正式出任中英峰会荣誉主席。此前，麦先生曾与中英峰会创始人李宗洋有过多次会谈，并对峰会给予了高度的肯定与赞赏。</p>
                                    <p>麦先生自2014年起担任中国国家外国专家局外国专家建议咨询委员会顾问，并曾4次主笔建言报告，向国务院和国务院总理就国家政策建言献策。以表彰其对中国现代化建设的杰出贡献，麦先生还于2013年被授予中国政府“友谊奖”，此奖是为该领域而设立的最高奖项。</p>
                                    <p>此外，麦先生曾多次向中国人民外交学会会长提供建议，并于2015年3月受其邀请，陪同中国公共外交代表团前往英国，考察英国及欧洲政治局势。同时，麦先生也是英国东亚委员会的秘书长，此委员会致力于为中英两国商界精英及前政要构建有效的沟通平台，为增进两国的交流和理解服务。</p>

                                </div>
                            </div>
                            <p class="info-show events-info-show">
                                 <span>Hala Hanna 21/07/2017</span>
                                 <i class="icon-down icon-up"></i>
                             </p>
                        </div>
                    </div>
                    <div class="news-1 clearfix">
                        <div class="pages-cont-l">
                            <div>
                                <img class="result-img" init-src="" src="${base }/resources/images/page/yhm-newsbanner1.jpg" alt="">
                            </div>
                            <!-- <div class="pages-img evens-pages-img">
                                <ul>
                                    <li class="padd-right active">
                                        <img data-select="false" src="${base }/resources/images/page/yhmin-newsbanner1.jpg" data-src="${base }/resources/images/page/yhm-newsbanner1.jpg">
                                    </li>
                                </ul>
                            </div> -->
                        </div>
                        <div class="pages-cont-r">
                            <div>
                                <h5  id="page3">峰会创始人李宗洋、仇天宇会面新东方董事长俞敏洪</h5>
                                <div>
                                    <p>6月26日，中英峰会创始人李宗洋、仇天宇在北京新东方总部与新东方教育集团董事长、洪泰基金联合创始人俞敏洪先生亲切会面。</p>
                                    <p>俞敏洪先生1993年创立北京新东方学校。2012年获得“中国最具影响力的50位商界领袖”称号。2014年与他人联合创立洪泰基金。俞敏洪先生多年以来一直致力于中国青少年的教育与成长，新东方也因此不断发展壮大，现已成为中国规模最大、最具影响力的民营教育品牌和行业领导者。</p>
                                    <p>在本次会面中，李宗洋向俞敏洪先生介绍了中英峰会的成立初衷、发展使命及第一届中英峰会的开展情况，仇天宇则重点介绍了近期峰会与江苏省外事办公室合作的进展情况。俞敏洪先生认真聆听并高度评价峰会在搭建中英两国交流平台中的作用。俞敏洪先生还指出，峰会把促进中英交流真正落实到实际行动中，并推出合作产物，是一件造福两国企业和人民的事情。有感于李宗洋和仇天宇的推动作用，俞敏洪先生鼓励更多的年轻人走出国门，努力拼搏，在力所能及的范围内发挥所长。</p>
                                     <p>此外，本次会面还谈及了新东方目前的战略规划。俞敏洪先生表达了希望进军英国市场的愿望，双方就未来合作的可能性进行了充分讨论。我们中英峰会愿意为新东方旗下的公司开拓英国市场贡献一份力量，也希望更多的中国企业能参与到这个过程中来，早日实现国际化。</p>
                                </div>
                            </div>
                             <p class="info-show events-info-show">
                                 <span>Hala Hanna 21/07/2017</span>
                                 <i class="icon-down icon-up"></i>
                             </p>
                        </div>
                    </div>
                    <div class="news-1 clearfix">
                        <div class="pages-cont-l">
                            <div>
                                <img class="result-img" init-src="" src="${base }/resources/images/page/dm-newsbanner1.jpg" alt="">
                            </div>
                            <div class="pages-img evens-pages-img">
                                <ul>
                                    <li class="padd-right active">
                                        <img data-select="false" src="${base }/resources/images/page/dmin-newsbanner1.jpg" data-src="${base }/resources/images/page/dm-newsbanner1.jpg">
                                    </li>
                                    <li class="padd-center">
                                        <img data-select="false" src="${base }/resources/images/page/dmin-newsbanner2.jpg" data-src="${base }/resources/images/page/dm-newsbanner2.jpg" alt="">
                                    </li>


                                </ul>
                            </div>
                        </div>
                        <div class="pages-cont-r">
                            <div>
                                <h5  id="page4">峰会董事会主席李宗洋及政府联络总监Hugh Findlay会见大曼彻斯特市长Andy Burnham</h5>
                                <div>
                                    <p>近日，中英峰会董事会主席李宗洋及政府联络总监Hugh Findlay在曼彻斯特会见了大曼彻斯特地区市长Andy Burnham。</p>
                                    <p>
                                        李宗洋及Hugh Findlay会见Andy Burnham
                                        从左至右依次是：李宗洋、Andy Burnham、Hugh Findlay</p>
                                    <p>Andy Burnham自2001年起，成为英国国会议员。2017年5月就任大曼彻斯特地区市长，归属英国工党。</p>
                                    <p>本次会面中，李宗洋和Hugh Findlay向Andy Burnham介绍了中英峰会的成立初衷、发展历史以及第一届中英峰会的开展情况，并就峰会关注的相关重要政治、经贸、教育议题展开了讨论。Andy Burnham充分肯定了中英峰会为促进中英两国关系所做出的贡献，并给予了高度赞赏。</p>
                                    <p>此外，三人在会晤中还讨论了曼彻斯特与中国企业的合作，包括通信、交通、科技、文化娱乐等方面，尤其是习近平主席访问曼彻斯特后，海南航开通中国大陆到曼彻斯特的首条直飞航线、中国财团对城市足球集团（OFG）价值4亿美元的投资、华为与曼彻斯特大学对石墨烯研究的合作等。Andy Burnham在感谢中国对曼彻斯特的支持之余，希望今后能借助中英峰会这个平台，让曼彻斯特在世界舞台上再次大放异彩。中英峰会主席李宗洋表示将积极配合市长的工作，双方携力，为中英两国在更多领域达成合作而努力。</p>
                                </div>
                            </div>
                             <p class="info-show events-info-show">
                                 <span>Hala Hanna 21/07/2017</span>
                                 <i class="icon-down icon-up"></i>
                             </p>
                        </div>
                    </div>
                    <div class="news-1 clearfix">
                        <div class="pages-cont-l">
                            <div>
                                <img class="result-img" init-src="" src="${base }/resources/images/page/js-newsbanner01.jpg" alt="">
                            </div>
                            <div class="pages-img evens-pages-img">
                                <ul>
                                    <li class="padd-right active">
                                        <img data-select="false" src="${base }/resources/images/page/jsmin-newsbanner01.jpg" data-src="${base }/resources/images/page/js-newsbanner01.jpg">
                                    </li>
                                    <li class="padd-center">
                                        <img data-select="false" src="${base }/resources/images/page/jsmin-newsbanner02.jpg" data-src="${base }/resources/images/page/js-newsbanner02.jpg" alt="">
                                    </li>
                                    <li class="padd-left">
                                        <img data-select="false" src="${base }/resources/images/page/jsmin-newsbanner03.jpg" data-src="${base }/resources/images/page/js-newsbanner03.jpg" alt="">
                                    </li>


                                </ul>
                            </div>
                        </div>
                        <div class="pages-cont-r">
                            <div>
                                <h5  id="page5">江苏省外事办特别报道</h5>
                                <div>
                                    <p>由第四届江苏省青年友好使者仇天宇组织的第一届伦敦中英峰会于2017年2月4日在伦敦四季酒店成功举行。作为伦敦中英峰会的创始人之一，仇天宇说：“我们希望通过峰会，为中英两国搭建起沟通和合作的网络，努力消除两国存在的交流屏障，造福两国企业和人民，这是我最大的愿望和行动的指南。”  </p>
                                    <p>峰会由“2017全球经济展望”、“中西教育的碰撞”、“国际社会对中国的影响”、“中国经济走向世界”四个板块组成。</p>
                                    <p>BBC政治副主编John Adrian Pienaar主持峰会，美国前副国务卿、哈佛经济系教授Richard Cooper、中国驻英国大使馆商务公参金旭、英国国会议员Catherine West、伦敦发展促进署亚太地区总监曹杰、华为公司英国首席执行官罗刚等参加峰会讨论。</p>
                                    <h6>第一届伦敦中英峰会媒体报道</h6>
                                    <p>中英伦敦峰会于2016年在伦敦成立。成立之初，作为一个非政府间、非营利性的民间组织，通过汇聚政界、商界、教育界等重要领袖，初步搭建了沟通的网络。</p>
                                    <p>仇天宇介绍，为了更精细地服务于中英两国间需要沟通对话的群体及企业，他们注册为非营利性公司，针对两国各行各业的热门问题开展积极的讨论，开诚布公，力图成为一个为中西方各领域提供对接服务的领航者，造福各界。他表示只有汇聚各个领域的企业家和专业的教授学者，将理论与实践结合，才能取得进步。</p>
                                    <p>中英峰会具有以下特点：</p>
                                    <div class="js-tedian">
                                        <p><b>&middot;</b>公正性：不讨论任何意识形态上的问题，但会以公正的态度，去探索中英两国发生的各类事件，挖掘一切合作的机遇，迎接可能的一切挑战。</p>
                                        <p><b>&middot;</b>综合性：邀请来自中英两国各界的演讲嘉宾，也欢迎对两国发展有兴趣的所有观众参与进来，共同探索两国当下最热门的话题，聆听中英两国的声音。</p>
                                        <p><b>&middot;</b>持久性：有稳定的管理团队，放眼未来，不以眼前的成果判定成败。持久沟通，不断努力。</p>
                                        <p><b>&middot;</b>务实性：除了每年的峰会这样的大型交流活动，组织者们每年都在为真正促进中英两国沟通而跑动，从政府到企业再到个人，组织者们会真正催生出中英交流后的产物，从而在实际意义上造福两国各界。</p>

                                    </div>
                                    <p>第二届中英峰会将于2018年3月2日至4日在伦敦瑰丽酒店举行，主题为“电子时代新发展”，会议将从教育、金融、科技及生活方式等领域来探索电子时代下的新机遇及新挑战。届时将会有更庞大的嘉宾团队前来现场，共同为大家献上一场商谈盛宴。</p>
                                    <h6>请查收来自伦敦中英峰会的邀请函</h6>
                                    <p>通过第一届峰会的积累，伦敦中英峰会的组织者已与华为英国区分部、碧桂园、新东方教育科技集团、深圳飞尚实业集团、上海中延实业集团等国内外知名企业达成商务往来关系，切实开拓了新的机遇，促成了企业合作。目前，在江浙范围内，也有多家纺织贸易集团通过中英峰会逐步走入英国市场，他们欢迎更多的企业家及各界人士加入伦敦中英峰会，共同讨论当下热题，应对未来挑战，为企业发展注入全新的活力。</p>
                                    <p>伦敦中英峰会的组织者们承诺，作为一家非营利性公司，不通过峰会谋取任何个人商业利益，意在真正意义上造福两国各界群体。除收取正常的门票费来承担场地费用外，不收取任何其他参会费用。另外，中英峰会的商务合作及赞助合作正在积极进行中，欢迎联系洽谈。</p>
                                    <p>任何咨询也可联系峰会活动部门负责人仇天宇(Vincent)，邮箱V.Qiu@sinobritishsummit.org。</p>
                                    <p class="p-right">——伦敦中英峰会</p>
                                    <h6>关于江苏青年友好使者</h6>
                                    <p>这是一个专门为江苏青年友好使者打造的非政府宣传交流平台，一座联通江苏与世界的友谊之桥，一扇展示青年风采的亮丽之窗。这里凝聚江苏新青年的力量，荟萃最有趣的资讯分享，是讲好中国故事，唱响江苏声音的文化阵地。</p>

                                </div>
                            </div>
                             <p class="info-show events-info-show">
                                 <span>Hala Hanna 21/07/2017</span>
                                 <i class="icon-down icon-up"></i>
                             </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="/pages/common/footer.jsp"%>
    </div>

    
</body>
</html>