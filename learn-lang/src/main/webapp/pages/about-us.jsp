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
                <li><a href="${base }/">中英峰会</a></li>
                <li class="divider">&gt;</li>
                <li><a href="${base }/about-us.htm">关于我们</a></li>
            </ul>
        </div>

        <div class="about-summit myaccount">
            <div class="tit">
                <div>
                   <span>&nbsp;</span>
                    <h5>关于中英峰会</h5>
                </div>
                <p>中英峰会特点、使命以及团队介绍</p>
            </div>
            <div class="myaccount-inner clearfix">
                <div class="myaccount-lf">
                    <h5>关于我们</h5>
                    <ul>
                        <li class="current"><a><img src="${base }/resources/images/page/arrow-d.png" alt="">我们的使命</a></li>
                        <li><a><img src="${base }/resources/images/page/arrow-d.png" alt="">我们的特点</a></li>
                        <li><a><img src="${base }/resources/images/page/arrow-d.png" alt="">领导团队</a></li>
                    </ul>
                </div>
                <div class="myaccount-rt">
                    <div>
                        <h5 class="headline">
                            <p>我们的使命</p>
                            <span>促进中英两国各界之间的无限交流与往来</span>
                        </h5>
                        <div class="myaccount-down">
                            <div>
                                <p>1978年，百废待兴的中华民族走上了改革开放的发展道路，从此这条东方巨龙得以展翅腾飞，创造出一个又一个经济奇迹，中国人民富裕起来，每个人的生活、学习和工作都发生了深刻变化；时至今日，在中国国际化的发展道路中，中英两国在经贸、教育及科技创新等各方面展开了密切合作，并且也取得了一定的成
                                果。</p>

                                <p>然而，我们不难发现，中英之间的巨大文化差异还是造成了两国对彼此的不理解，更成为了两国进一步沟通和合作的阻碍。 在这样的大环境和背景下，一个真正促进中英两国各界交流、能让中英两国社会不同群体之间自由对话的中立平台——中英峰会诞生了。</p>
                                <p>中英峰会诞生于2016年，是一家非政府、非营利性、致力于推崇文化和商业投资交流的公司，总部设在英国伦敦。峰会是一个中立组织，不介入任何国家或政治利益，峰会坚持最高的组织标准，致力于促进中英两国各界之间的无限交流与往来。</p>
                                <p>在我们看来，只有凝聚各领域奋战在第一线的企业家与专家学者，将理论与实践结合，才能真正获得我们想要的结果。</p>

                            </div>
                        </div>
                    </div>
                    <div class="none">
                        <h5 class="headline">
                            <p>我们的特点</p>
                            <span>中英峰会是切实推动中英两国各界交流的“中立对话平台”</span>
                        </h5>
                        <div class="myaccount-down trait-down">
                            <div class="fir">
                                <p><img src="${base }/resources/images/about-us/neu.png" ></p>
                                <div>
                                    <h5>中立性</h5>
                                    <p>作为非营利性公司，我们的峰会不追求任何商业性质的利益，我们将以公正的态度，去探索中英两国发生的各类事件，去挖掘一切合作的机遇，去解决我们面对的一切挑战。</p>
                                </div>
                            </div>
                            <div class="sec">
                                <p><img src="${base }/resources/images/about-us/div.png" ></p>
                                <div>
                                    <h5>综合性</h5>
                                    <p>我们邀请各界的演讲嘉宾，也吸引来各领域的参会观众，探索当下中英两国最热门话题，只有中英两国的声音同时出现，才能真正消除双方的种种不理解，携手应对当下的各种挑战。</p>
                                </div>
                            </div>
                            <div class="thir">
                                <p><img src="${base }/resources/images/about-us/sus.png" ></p>
                                <div>
                                    <h5>持续性</h5>
                                    <p>我们的峰会作为非营利性的公司，有着稳定持续的管理团队，我们放眼于未来，不求眼前的结果是否成功是否失败，我们致力于长久以来推动中英两国的沟通与切实合作。</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="none">
                        <h5 class="headline">
                            <p>领导团队</p>
                            <span>
                                	峰会顾问团成员由杰出的商界、政界、学界及青年领袖担任；
                            </span>
                            <span>董事会成员也由中英两国的优秀人才担任。</span>
                        </h5>
                        <div class="myaccount-down team-down">
                           <h6>顾问团成员</h6>
                           <div class="team-member clearfix">
                               <div class="team-cont-l"><img src="${base }/resources/images/about-us/adviserpic-michie.png" width="400" height="300" /></div>
                               <div class="team-cont-r">
                                    <div class="team-cont-wapper">
                                        <div>

                                           <h5 class="name-ch">
                                            <span class="name">Alistair Michie</span>
                                           英国东亚委员会秘书长麦启安</h5>
                                           <div class="txt">
                                                <p>麦启安先生自 2014 年起担任中国国家外国专家局外国专家 建议咨询委员会顾问,是五位首席顾问中的一员。在此职务 上,麦先生曾 4 次主笔建言报告,向国务院和国务院总理李 克强就国家政策建言献策。</p>
                                                <p>2013 年,麦先生被授予中国政府“友谊奖”。此奖是为表彰在 中国现代化建设中做出贡献的外国专家而设立的最高荣誉奖项。自 2013 年起,麦先生曾多次向中国人民外交学会会长杨文昌 先生提供建议。2015 年 3 月,在杨文昌会长的邀请下,麦先生陪同由三位前中 国资深大使组成的公共外交代表团前往英国,考察英国及欧洲政治局势。</p>
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

                                           <h5 class="name-ch"><span class="name">Henry Wang</span>gate国际有限公司总裁</h5>
                                           <div class="txt">
                                                <p>EurIng. Henry K. H. Wang是一名具有国际水准的顾问、作家和演说家，拥有丰富的全球高端商业经验。他还是位于香港的精品咨询兼投资公司Gate国际有限公司的总裁，同时在全球多家公司、各大咨询公司和国际机构担任董事一职。他经常在全球顶尖高校和商学院发表演讲，并致力于研究国有企业的管理。</p>
                                                <p>他是英国皇家艺术学院院士和英国化学工程学院院士，曾受邀加入英国气候变化咨询委员会和中国碳论坛咨询委员会。他还是经合组织商业能源与环境委员会副主席。曾任中国欧盟和英国商会副会长。还担任壳牌中国和沙特基础工业公司驻利雅得的前任董事。他在全球多家上市公司和国有企业担任董事一职。</p>
                                                <p>他还在全球范围内出版多部书籍，发表技术和管理方面的论文。他于2013年出版首部著作《与中国巨头营商管理成功经验谈》，得到各大研究机构的大力推荐。2016年出版了第二部著作《新兴经济体能源市场：发展战略》。他还受邀在全球顶级研究机构发表演说。他撰写的关于谈判管理的论文被选为2015年度英国五佳管理论文之一。他受一家顶级出版商的委托，撰写一本关于商业谈判的新书，于2017年出版。他还持有多项有关新工艺发明的国际专利。</p>
                                                <p>他还受邀在多个重要的国际会议上发言，并接受国际媒体的采访。全球各大高校和商学院也邀请他演讲授课。他毕业于伦敦帝国学院和伦敦大学学院。他还在沃顿商学院和清华大学参加过高级管理课程。</p>
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

                                           <h5 class="name-ch"><span class="name">Alexander Chen</span>博实乐教育集团副总裁</h5>
                                           <div class="txt">
                                                <p>陈舒先生目前担任博实乐教育集团副总裁。陈舒先生12岁留学英国，入读 fettes college 之后考入英国伦敦大学学院,21岁回国筹办英豪剑桥国际高中,成为中国最年轻的校长。2010年，他开始在全国进行义务教育巡讲，推广先进教育理念，并接受了凤凰卫视鲁豫、胡一虎的采访。他现已走遍中国17个省市，授课197场超过50万人次。更曾受邀为中共中央组织部、全国政协、中共中央统战部、新华社 、人民日报社，团结出版社、中国出版集团、民革中央委员会、明盟中央委员会、九三学社中央委员会、全国文联、全国妇联、英国总领事馆、中国欧盟商会、广东英国商会演讲，并引起强烈反响。2010年，中国英国商会向他颁发了英国商业大奖，他成为了该奖项史上最年轻的获奖者。</p>
                                           </div>
                                       </div>
                                        <p class="info-show events-info-show">
                                             <i class="icon-down icon-up"></i>
                                        </p>
                                    </div>
                               </div>
                           </div>
                           <h6 class="mgt100">董事会成员</h6>
                           <div class="team-pic clearfix">
                           		<div class="fir">
                           			<a><img src="${base }/resources/images/about-us/teampic-lzy.png"/></a>
                           			<div>
                           				<h5>李宗洋</h5>
                           				<p>峰会总策划</p>
										              <p>董事会主席</p>
                           			</div>
                           		</div>
                           		<div class="sec">
                           			<a><img src="${base }/resources/images/about-us/teampic-qty.png"/></a>
                           			<div>
                           				<h5>仇天宇</h5>
                           				<p>峰会活动负责人</p>
										              <p>董事会副主席</p>
                           			</div>
                           		</div>
                           		<div class="fir">
                           			<a><img src="${base }/resources/images/about-us/teampic-hugh.png"/></a>
                           			<div>
                           				<h5>Hugh Findlay</h5>
                           				<p>政府联络总监</p>
										              <p>峰会董事会董事</p>
                           			</div>
                           		</div>
                           		<div class="sec">
                           			<a><img src="${base }/resources/images/about-us/teampic-duncan.png"/></a>
                           			<div>
                           				<h5>Duncan McEwan</h5>
                           				<p>峰会发展总监</p>
										              <p>峰会董事会董事</p>
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
                    <h5>联系我们</h5>
                </div>
                <div class="contact-con">
                    <div class="fir">
                        <h5>中英峰会伦敦总部</h5>
                        <p>
                            <span class="fir">地址：</span>
                            <span class="sec">68 New Dover RoadCanterbury,KentCT1 3LQ</span>
                        </p>
                        <p>
                            <span class="fir">电话：</span>
                            <span class="sec">0044-02077029128</span>
                        </p>
                        <p>
                            <span class="fir">邮编：</span>
                            <span class="sec">WC West Central London</span>
                        </p>
                        <div class="botm-email">
                            <div class="fir">
                                <p>
                                    <span class="fir">活动咨询联系邮箱：</span>
                                    <span class="sec">V.Qiu@sinobritishsummit.org</span>
                                </p>
                            </div>
                            <div class="sec">
                                <p>
                                    <span class="fir">赞助咨询联系邮箱：</span>
                                    <span class="sec">R.Li@sinobritishsummit.org</span>
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