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
                    <!-- 关于我们 -->
                    <div >
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
                    <!-- 我们的特点 -->
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
                    <!-- 领导团队 -->
                    <div class="none">
                        <h5 class="headline">
                            <p>领导团队</p>
                            <span>
                                	峰会顾问团成员由杰出的商界、政界、学界及青年领袖担任；
                            </span>
                            <span>董事会成员也由中英两国的优秀人才担任。</span>
                        </h5>
                        <div class="about-team events-about-team">
                            <ul>
                              <li class="active">顾问团成员</li>
                              <li>董事会成员</li>
                              <li>峰会人物</li>
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
                           </div>
                           <!-- 董事会成员 -->
                           <div class="about-team-content none ">
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
                           <!-- 峰会人物 -->
                           <div class="about-team-content none">
                                <div class="team-member clearfix">
                                   <div class="team-cont-l"><img src="${base }/resources/images/about-us/001.png" width="400" height="300" /></div>
                                   <div class="team-cont-r">
                                        <div class="team-cont-wapper">
                                            <div>

                                               <h5 class="name-ch">
                                                <span class="name">Katherine Carruthers</span>
                                               伦敦大学学院副教务长</h5>
                                               <div class="txt">
                                                    <p>伦敦大学学院副教务长，（北京大学-伦敦大学学院合办）孔子学院负责人。她的主要研究兴趣集中在以中文作为外语的学习与教学、中英学校跨文化交际能力的概念、全球化及语言政策。 英国伦敦大学孔子学院于2013年5月17日正式揭牌成立，得到了中国国家汉办的大力支持。伦敦大学教育研究院院长克里斯·哈斯本教授表示，研究院已经开设了汉语教师基础培训课程，能够和北京大学及中国国家汉办共同提高英国中小学汉语教学质量，改善教学广度和深度，令人非常兴奋。伦敦大学教育研究院一直与中国高教界保持着密切关系，英国伦敦大学孔子学院的成立更加深了双方的交流。
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

                                               <h5 class="name-ch"><span class="name">吴晨</span>现任《经济学人·全球商业评论》编辑主任</h5>
                                               <div class="txt">
                                                    <p>曾任任英国经济学人集团欧洲金融（亚太区）总编辑、经济学人集团旗下 《财务总监》杂志主编。</p>
                                                    <p>《经济学人·全球商业评论》是《经济学人》杂志（The Economist）推出的第一份中文版电子刊物（App），精选商业、金融、经济与科技领域内的深度报道与分析。此前他担任英国经济学人集团欧洲金融（亚太区）总编辑，负责监督亚洲和中国主要会议的研究和组织，以及企业金融，财政，银行和法规领域的关键问题的研究和报告等。2005年至2009年， 他担任经济学人集团旗下 《财务总监》杂志主编。负责《财务总监》（CFO China）杂志的采编与活动，如“崛起的财务总监”系列峰会。《财务总监》杂志是隶属于经济学人集团的CFO杂志旗下中文月刊，涵盖财务管理领域最新管理思想与实践，同时也关注中国财务管理领域的最佳实践与最新案例。《财务总监》杂志是向财务管理者介绍海外经验与本土实践的综合性财务管理刊物。</p>
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

                                               <h5 class="name-ch"><span class="name">陈舒</span>英豪剑桥国际高中校长</h5>
                                               <div class="txt">
                                                    <p>陈舒先生12岁留学英国，入读 fettes college 之后考入英国伦敦大学学院,21岁回国筹办英豪剑桥国际高中,成为中国最年轻的校长。</p>
                                                    <p>2010年，他开始在全国进行义务教育巡讲，推广先进教育理念，并接受了凤凰卫视鲁豫、胡一虎的采访。他现已走遍中国17个省市，授课197场超过50万人次。更曾受邀为中共中央组织部、全国政协、中共中央统战部、新华社 、人民日报社，团结出版社、中国出版集团、民革中央委员会、明盟中央委员会、九三学社中央委员会、全国文联、全国妇联、英国总领事馆、中国欧盟商会、广东英国商会演讲，并引起强烈反响。2010年，中国英国商会向他颁发了英国商业大奖，他成为了该奖项史上最年轻的获奖者。</p>
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

                                               <h5 class="name-ch"><span class="name">Richard Cooper</span>美国前副国务卿</h5>
                                               <div class="txt">
                                                    <p>哈佛经济系教授，世界著名的国际经济问题专家，曾在美国肯尼迪政府、卡特政府和克林顿政府中担任重要职务，曾任美国主管经济事务的副国务卿、美国政府经济顾问委员会高级经济师、美国波士顿联邦储备银行主席、耶鲁大学教务长等多项职务。</p>
                                                    <p>库珀教授1958年获伦敦政治经济学院经济学硕士学位，1962年获哈佛大学博士学位，从1981年至今任教于哈佛大学经济系，学术成果丰硕。库珀教授曾在美国肯尼迪政府、卡特政府和克林顿政府中担任重要职务，曾任美国主管经济事务的副国务卿、美国政府经济顾问委员会高级经济师、美国波士顿联邦储备银行主席、耶鲁大学教务长等多项职务，在国际经济学术研究及经济事务分析处理方面均取得显著成就。</p>
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

                                               <h5 class="name-ch"><span class="name">王化斌</span>中国银行伦敦分行副总经理</h5>
                                               <div class="txt">
                                                    <p>曾任企业银行贸易融资部负责人，以及国际贸易服务部的发展规划部门负责人</p>
                                                    <p>王化斌先生自2011三月起担任中国银行伦敦分行副总经理，负责企业与金融机构关系管理，企业银行业务发展和企业财务部门行政管理，包括企业银行业务，EMEA财团中心，贸易融资和现金管理。在此之前，他在中国银行总行任职超过十年，所担任的职位包括企业银行贸易融资部负责人，以及国际贸易服务部的发展规划部门负责人</p>
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

                                               <h5 class="name-ch"><span class="name">Catherine West MP</span>英国在野党亚洲及太平洋外交政策大臣</h5>
                                               <div class="txt">
                                                    <p>凯瑟琳 • 韦斯特女士1966年出生于悉尼，澳大利亚。目前是英国在野党负责亚洲及太平洋外交政策的大臣。韦斯特议员同时会说五种语言，拥有来自伦敦大学亚非学院关于中国研究的硕士学位并曾在南京任教一年。</p>
                                                    <p>在2016年脱欧公投活动中，凯瑟琳争取英国留欧，认为如果他们保持欧盟内部，“英国将会更强大，更繁荣、更安全、更安宁”。凯瑟琳所在的选区成为英国留欧票数第四高的选区。2016年9月,凯瑟琳成立UK-EU关系各党派议会组织,试图将英国和欧盟之间的关系积极化。</p>
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

                                               <h5 class="name-ch"><span class="name">Peter Lacy</span>埃森哲战略全球董事总经理</h5>
                                               <div class="txt">
                                                    <p>前任麦肯锡咨询公司高级顾问，他专注于战略发展,提供开发、创新中心和收购并购等方面的建议。他是可持续发展方面的国际权威人士，具体包括循环经济，利益相关者管理和医药、矿业、能源和消费品等行业的信任问题。</p>
                                                    <p>他曾与世界500强企业中的许多首席执行官和高级管理层一起共事，其中包括联合国、欧洲联盟和公共部门组织等。他主攻企业策略,并重点关注环境、社会、治理和道德问题。在进军咨询行业之前，他还曾有过几年互联网行业的从业经验。</p>
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

                                               <h5 class="name-ch"><span class="name">Rupert Hammond-Chambers</span>美台商业协会会长</h5>
                                               <div class="txt">
                                                <p>曾为美国美中关系全国委员会成员、保尔亚洲集团董事总经理。</p>
                                                <p>美台商业协会会长韩儒伯，同时还曾为美国美中关系全国委员会成员、保尔亚洲集团董事总经理，对于中美台三方关系有着自己独特的看法。他出生于苏格兰，1987年移民到美国，并在丹尼森大学获得文学学士学位。作为1991年的新毕业生，他在高级电信公司（ATC）工作，负责管理在加勒比和拉丁美洲有商业利益的客户。1993年4月，他加入了安全政策中心—华盛顿哥伦比亚特区国防和外交政策智囊团，担任发展经理。此中心通过刺激和通报国家和国际政策辩论，特别是涉及对美国安全有影响的区域，国防，经济，金融和技术发展的政策辩论，实现其目标。韩儒伯先生于1994年10月开始在美台商业理事会工作。1998年3月，他晋升为理事会副主席，2000年11月当选为理事会主席。由于美国，台湾和中国之间的贸易关系继续发展，他致力于发展理事会作为其成员的战略伙伴作用，目标是将理事会定位为通过价值和卓越帮助亚洲地区美国公司的领导者。
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

                                               <h5 class="name-ch"><span class="name">Hamish McRae</span>英国《独立报》经济评论人</h5>
                                               <div class="txt">
                                                    <p>他创作的《2020年的世界：权力、文化与繁荣—展望未来》于1994年首次出版，随后被翻译成十几种语言。他是英国最著名的金融记者和评论家之一，曾在2006年英国媒体奖评选中获得年度商业和金融记者称号。Hamish McRae的工作重点在于世界经济的卓越，经济权力向亚洲的转变，以及技术如何与人力资本相结合以转变竞争优势。作为一名未来主义者、作者和经验丰富的主讲人，他擅长简明清晰地阐述复杂的经济问题。同时，他也是一名国际领先的新兴市场领域的专业人士。</p>
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

                                               <h5 class="name-ch"><span class="name">Michael & Deborah Spens</span>英国顶尖私立高中世界名校费蒂斯中学 Fettes College校长以及校长夫人</h5>
                                               <div class="txt">
                                                    <p>高中世界名校费蒂斯中学是全英国家喻户晓名牌中学,也是苏格兰A-Level成绩最好的独立学校。费蒂斯中学Fettes College毕业生的战绩辉煌 走出了英国前首相托尼布莱尔，前德意志银行亚太总裁等政府商界领袖</p>
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

                                               <h5 class="name-ch"><span class="name">曹杰</span>London & Partners伦敦发展促进署（伦敦市官方推广机构）亚太地区总监英中贸易协会董事会成员。</h5>
                                               <div class="txt">
                                                    <p>作为拥有超过二十年工作经验的专业人士,Jeff Cao曾给予许多世界级企业客户市场战略、竞争定位等方面的建议 。他的工作经验涵盖许多部门,尤其是零售、制药、快速消费品、电信和金融服务方面。在加入伦敦发展促进署之前,Jeff Cao曾担任伦敦一家管理咨询公司战略顾问。在此之前,他曾是一位中国投资银行家 。</p>
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

                                               <h5 class="name-ch"><span class="name">罗刚</span>华为公司英国首席执行官 <br>华为英国董事会执行董事</h5>
                                               <div class="txt">
                                                    <p>曾担任华为公司北欧地区首席执行官。在罗先生担任英国负责人这几年中，华为对英国经济的年均贡献超过三亿英镑。截至2014年，华为通过三个渠道在英国新增7386个就业岗位，如该公司在英国15个地区采购产品与服务，供销商更是遍布英国各地。2015年国家主席习近平于10月19-23日对英国进行国事访问时，还曾专程到华为英国分公司进行参观指导。</p>
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

                                               <h5 class="name-ch"><span class="name">金旭参赞</span>现任中国驻英国大使馆商务公参</h5>
                                               <div class="txt">
                                                <p>曾任中国驻旧金山总领事馆商务参赞。</p>
                                                <p>1998年，金旭参赞在哈佛大学商学院高级管理项目进修，2000年至2001年，他曾任中国驻旧金山总领事馆商务参赞。此后，他还曾任商务部美洲司大洋司副司长，中共商务部党校副校长、国家商务部国际商务官员研修学院党委书记兼院长、国家商务部培训中心主任。2014年年底至今，赴英担任中国驻英大使馆经商参处公参一职。
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

                                               <h5 class="name-ch"><span class="name">John Adrian Pienaar</span>BBC政治副主编 <br>BBC Radio 5 Live上Pienaar’s Politics的栏目主持人。
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

                                               <h5 class="name-ch"><span class="name">Rana Mitter</span>牛津大学 中国研究中心主任 <br>牛津大学 中国现代历史与政治教授</h5>
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

                                               <h5 class="name-ch"><span class="name">David Lloyd</span>阿里巴巴集团<br>英国及北欧商业发展总监</h5>
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