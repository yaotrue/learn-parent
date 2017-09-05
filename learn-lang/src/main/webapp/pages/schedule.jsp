<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>峰会日程</title>
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
                <li><a href="${base }/">中英峰会</a></li>
                <li class="divider">&gt;</li>
                <li><a href="${base }/schedule.htm">峰会日程</a></li>
            </ul>
        </div>

         <div class="about-summit myaccount">
            <div class="tit">
                <div>
                   <span>&nbsp;</span>
                    <h5>峰会日程</h5>
                </div>
                <p>了解中英峰会会议活动的课题内容</p>
            </div>

        </div>
        <div class="myaccount-inner clearfix">
            <div class="myaccount-lf">
                <h5>近期峰会日程安排</h5>
                <ul>
                    <li><a href="#schedule1"><img src="${base }/resources/images/page/arrow-d.png">2017世界经济展望</a></li>
                    <li><a href="#schedule2"><img src="${base }/resources/images/page/arrow-d.png">中西教育的碰撞</a></li>
                    <li><a href="#schedule3"><img src="${base }/resources/images/page/arrow-d.png">国际社会对中国的影响</a></li>
                    <li><a href="#schedule4"><img src="${base }/resources/images/page/arrow-d.png">中国品牌走向世界</a></li>
                </ul>
            </div>
            <div class="myaccount-rt">
                <div >
                    <div class="myaccount-down team-down">
                       <div class="team-member clearfix">
                           <div class="team-cont-l" >
                              <div>
                                  <img class="result-img" init-src="" src="${base }/resources/images/project/schedulebanner01.png" width="400" height="300">
                              </div>
                              <div class="pages-img evens-pages-img">
                                  <ul>
                                      <li class="padd-right active">
                                          <img data-select="false" src="${base }/resources/images/project/17-mini1.jpg" data-src="${base }/resources/images/project/schedulebanner01.png">
                                      </li>
                                      <li class="padd-center">
                                          <img data-select="false" src="${base }/resources/images/project/17-mini2.jpg" data-src="${base }/resources/images/project/schedulebanner01-2.jpg" alt="">
                                      </li>
                                      <li class="padd-left">
                                          <img data-select="false" src="${base }/resources/images/project/17-mini3.jpg" data-src="${base }/resources/images/project/schedulebanner01-3.jpg" alt="">
                                      </li>
                                      <li class="padd-right">
                                          <img data-select="false" src="${base }/resources/images/project/17-mini4.jpg" data-src="${base }/resources/images/project/schedulebanner01-4.jpg" alt="">
                                      </li>
                                      <li class="padd-center">
                                          <img data-select="false" src="${base }/resources/images/project/17-mini5.jpg" data-src="${base }/resources/images/project/schedulebanner01-5.jpg" alt="">
                                      </li>
                                  </ul>
                              </div>
                            </div>
                           <div class="team-cont-r">
                                <div class="team-cont-wapper">
                                    <div>
                                       <h5 id="schedule1" class="name-ch">2017世界经济展望</h5>
                                       <div class="txt">
                                            <p>2016年年初以来，国际货币基金组织（IMF）数次下调全球GDP增长速度，如今年末将至，全球经济增速已被调整到3.1%，是金融危机爆发后8年以来最低的一次。以此作为背景，中国2016年年初设定GDP增长在6.5%到7%之间，而国家信息中心最新消息预计中国2016年全年GDP增长在6.7%左右。</p>
                                            <p>2016年，中国经济在总量增长和供给侧结构性调整取得了不错的成绩，但也面临国内外诸多的挑战。</p>
                                            <p>对于国内而言，我国经济面临较大的下行压力，经济稳定增长仍旧是现阶段第一目标；在金融领域，由于货币超发以及较低的利率水平，人们具有较强的持币观望的动机，对于刺激实体经济的投资欲望不强，反而投机性意愿强烈。因此，未来实体经济的投资可能持续萎靡不振而投机性经济活动可能会进一步滋生蔓延；在供给侧结构改革方面，去产能、去库存、去杠杆、降成本、补短板“三去一降一补”仍任重而道远。 过去多年粗放式的增长和产业政策的偏差造成了我国经济严重的供需结构性失衡：一方面，钢铁、煤炭、以及一些低端制造业出现了“有供给、无需求”的产能过剩现象；相对的，随着收入水平的提高，人民对产品和服务需求的品质不断提升，一些领域出现“有需求、无供给”的情况，只能依赖国际进口。在此背景下，我国出台了扩大总内需和促进供给侧结构调整的政策，通过去产能、促产业升级、鼓励创业创新来重新平衡供需结构。</p>
                                            <p>在国际上，特朗普入主白宫后，将会改变现今美国对外贸易的策略，中美贸易关系面临挑战；与此同时，外界普遍预测美联储在2017将有不少于两次的加息。这将对人民币汇率下行施加更大压力；在欧洲，随着英国“退欧”尘埃落定，欧盟许多国家也开始躁动不安。12月5日，意大利修宪公投失败，意大利总理下台。一直反对修宪的意大利极右翼“五星运动” 民望大增，可能在下次大选中上台执政。而他们执政后要做的第一件事，就是意大利脱欧。欧洲政治局势的不稳定将进一步打击中欧贸易，并将推高美元作为避险货币的汇率。</p>
                                            <p>在这样的背景下，伦敦中英峰会将会引领大家一起探索以下话题。</p>
                                            <p>中国企业的“死亡税率”究竟成不成立？“中国企业负税过重”是否真的存在？2017年作为实施“十三五”规划的重要一年，中国将如何实现供给侧结构性改革和深化的目标？科技在经济发展中发挥了怎样的积极作用？现今社会，我们享受到的各种免费或者低价的附加服务，是否意味着国家的实际经济增长率一直被低估？美联储的货币政策，又将会对全球的经济带来怎样的影响？</p>
                                            <p>2017年，注定是变革的一年。对于当今国内热议的经济议题，我们会在峰会当天，为大家请来四位重量级的演讲嘉宾，由他们来与各位共同探讨有关中国和国际的各类经济议题。</p>
                                            <p><span>Richard Cooper</span>
                                             <b>• 美国前副国务卿</b>
                                            <b>• 哈佛经济系教授</b>
                                            世界著名的国际经济问题专家，1958年获伦敦政治经济学院经济学硕士学位，1962年获哈佛大学博士学位，从1981年至今任教于哈佛大学经济系，学术成果丰硕。库珀教授曾在美国肯尼迪政府、卡特政府和克林顿政府中担任重要职务，曾任美国主管经济事务的副国务卿、美国政府经济顾问委员会高级经济师、美国波士顿联邦储备银行主席、耶鲁大学教务长等多项职务，在国际经济学术研究及经济事务分析处理方面均取得显著成就。
                                            </p>
                                            <p><span>Peter Lacy</span>
                                            <b>• 埃森哲战略全球董事总经理</b>
                                            <b>• 前任麦肯锡咨询公司高级顾问</b>
                                            埃森哲战略全球董事总经理,前任麦肯锡咨询公司高级顾问，专注于战略发展,提供开发、创新中心和收购并购等方面的建议。他是可持续发展方面的国际权威人士，曾与世界500强企业中的许多首席执行官和高级管理层一起共事，其中包括联合国、欧洲联盟和公共部门组织等。他主攻企业策略,并重点关注环境、社会、治理和道德问题。
                                            </p>
                                            <p><span>吴晨</span>
                                            <b>•《经济学人·全球商业评论》编辑主任</b>
                                            <b>• 曾任英国经济学人集团欧洲金融（亚太区）总编辑</b>
                                            毕业于加州大学圣迭戈分校。现任《经济学人·全球商业评论》编辑主任。此前他担任英国经济学人集团欧洲金融（亚太区）总编辑，负责监督亚洲和中国主要会议的研究和组织，以及企业金融，财政，银行和法规领域的关键问题的研究和报告等。
                                            </p>
                                            <p><span>Hamish McRae</span>
                                            <b>• 英国《独立报》经济评论人</b>
                                            <b>• 曾任英国经济学人集团欧洲金融（亚太区）总编辑</b>
                                            英国《独立报》经济评论人，英国《卫报》的财经主编。他创作的《2020年的世界：权力、文化与繁荣—展望未来》于1994年首次出版，随后被翻译成十几种语言。他是英国最著名的金融记者和评论家之一，曾在2006年英国媒体奖评选中获得年度商业和金融记者称号。
                                            </p>
                                       </div>
                                    </div>
                                    <p class="info-show events-info-show">
                                      <span>Hala Hanna 21/07/2017</span>
                                      <i class="icon-down icon-up"></i>
                                    </p>
                                </div>

                           </div>
                       </div>
                       <div class="team-member clearfix">
                           <div class="team-cont-l" >
                              <div>
                                  <img class="result-img" init-src="" src="${base }/resources/images/project/schedulebanner02.png" width="400" height="300">
                              </div>
                              <div class="pages-img evens-pages-img">
                                  <ul>
                                      <li class="padd-right active">
                                          <img data-select="false" src="${base }/resources/images/project/min-1.jpg" data-src="${base }/resources/images/project/schedulebanner02.png">
                                      </li>
                                      <li class="padd-center">
                                          <img data-select="false" src="${base }/resources/images/project/mini2.jpg" data-src="${base }/resources/images/project/schedulebanner02-2.jpg" alt="">
                                      </li>
                                      <li class="padd-left">
                                          <img data-select="false" src="${base }/resources/images/project/mini-3.jpg" data-src="${base }/resources/images/project/schedulebanner02-3.jpg" alt="">
                                      </li>
                                      <li class="padd-right">
                                          <img data-select="false" src="${base }/resources/images/project/mini-4.jpg" data-src="${base }/resources/images/project/schedulebanner02-4.jpg" alt="">
                                      </li>

                                  </ul>
                              </div>
                            </div>
                           <div class="team-cont-r">
                                <div class="team-cont-wapper">
                                    <div>
                                       <h5 id="schedule2" class="name-ch">中西教育的碰撞</h5>
                                       <div class="txt">
                                            <p>随着近几年出国留学的热潮不断推进，国际化教育越来越受到大众的青睐。随着出国留学人数的增多，“中国留学生”已经从稀有零散的个体日渐汇集成了一个庞大的群体。2015年出国留学人数首度突破50万人，其中赴英留学生数量占总数的34%。与此同时，中国成为美国、英国、澳大利亚、加拿大等多个国家的第一大国际生源国。2016年中国出国留学人数还将持续增长，预计还将持续好几年。他们牵动着自己的家庭，代表着中国的形象，甚至影响着留学目的国的经济发展。那么，中西方教育的本质区别存在于何处？随着中西方文化的不断交融，中国和英国的教育模式也悄然发生着变化。</p>
                                            <p>在中国，“素质教育”、“高效学习”的呼声越来越高，那么教育的高效性究竟体现在何处？应试教育和素质教育，哪一种更能迎合当今社会的需求？</p>
                                            <p>英国孔子学院不断兴起，从语言入手，用文化交融，受到国际社会普遍欢迎，迅速成为加快汉语走向世界、推动中华文化走出去的重要平台。这一现象背后，反映了英国社会怎样的教育理念和意识形态？孔子学院的兴起在日后又会带来怎样深远的影响？</p>
                                            <p>第一届伦敦中英峰会很荣幸地邀请到陈舒先生、Katharine Carruthers女士、以及Michael & Deborah Spens与您共同探讨以上议题，相信这几位拥有国际化教育文化背景的嘉宾，会为您带来许多深刻独到的见解。</p>
                                            <p>
                                              <span>陈舒 </span>
                                              <b>• 中国最年轻校长</b>
                                              <b>• 最年轻英国商业大奖获得者</b>
                                              陈舒先生12岁留学英国，入读Fettes College后考入英国伦敦大学学院，21岁回国筹办英豪剑桥国际高中，成为中国最年轻的校长。2010年，他开始在全国进行义务教育巡讲，推广先进教育理念，并接受了凤凰卫视鲁豫、胡一虎的采访。2010年，中国英国商会向他颁发了英国商业大奖，他成为了该奖项史上最年轻的获奖者。
                                             </p>
                                             <p><span>Katharine Carruthers</span>
                                                <b>• 英国G5大学伦敦大学学院副教务长</b>
                                                <b>• 孔子学院负责人</b>
                                              伦敦大学学院副教务长，主要研究兴趣集中在以中文作为外语的学习与教学、中英学校跨文化交际能力的概念、全球化及语言政策。同时，她也是（北京大学-伦敦大学学院合办）孔子学院负责人。
                                              </p>
                                              <p><span>Michael & Deborah Spens</span>
                                                <b>• 世界名校校长及校长夫人</b>
                                                <b>• 该校毕业生包括多名政治、商界领袖</b>
                                              英国顶尖私立高中世界名校费蒂斯中学Fettes College校长以及校长夫人，高中世界名校费蒂斯中学是全英国家喻户晓名牌中学，也是苏格兰A-Level成绩最好的独立学校。费蒂斯中学Fettes College毕业生的战绩辉煌，走出了英国前首相托尼布莱尔，前德意志银行亚太总裁等政府商界领袖。
                                              </p>
                                       </div>
                                   </div>
                                    <p class="info-show events-info-show">
                                        <span>Hala Hanna 21/07/2017</span>
                                        <i class="icon-down icon-up"></i>
                                    </p>
                                </div>
                           </div>
                       </div>
                       <div class="team-member clearfix">
                            <div class="team-cont-l" >
                              <div>
                                  <img class="result-img" init-src="" src="${base }/resources/images/project/schedulebanner03.png" width="400" height="300">
                              </div>
                              <div class="pages-img evens-pages-img">
                                  <ul>
                                      <li class="padd-right active">
                                          <img data-select="false" src="${base }/resources/images/project/int-mini1.jpg" data-src="${base }/resources/images/project/schedulebanner03.png">
                                      </li>
                                      <li class="padd-center">
                                          <img data-select="false" src="${base }/resources/images/project/int-mini2.jpg" data-src="${base }/resources/images/project/int-schedulebanner02.jpg" alt="">
                                      </li>
                                      <li class="padd-left">
                                          <img data-select="false" src="${base }/resources/images/project/int-mini3.jpg" data-src="${base }/resources/images/project/int-schedulebanner03.jpg" alt="">
                                      </li>
                                      <li class="padd-right">
                                          <img data-select="false" src="${base }/resources/images/project/int-mini4.jpg" data-src="${base }/resources/images/project/int-schedulebanner04.jpg" alt="">
                                      </li>

                                  </ul>
                              </div>
                            </div>

                           <div class="team-cont-r">
                                <div class="team-cont-wapper">
                                    <div>
                                       <h5 id="schedule3" class="name-ch">国际社会对中国的影响</h5>
                                       <div class="txt">
                                        <p>回顾刚刚过去的2016，国际议事日程日益复杂化与碎片化。技术进步、气候变化、金融风暴、恐怖主义、难民危机、跨国犯罪等事件无一不冲击着现有的国际形势。</p>
                                        <p>新任联合国秘书长古特雷斯在新年致辞中表示，在他上任联合国秘书长的第一天，感觉最沉重的一个问题，就是这个世界上有数百万民众正遭受战争的苦难和折磨。“战争不会带来赢家，和平才能带来我们人类共同追求的尊严与希望、进步和繁荣。” 他呼吁各国公民、政府、领导人努力使2017年成为克服分歧的和平之年。</p>
                                        <p>在欧美大国之间，政客们也面临着极端主义和民族分离主义的抬头，从英国公投支持脱欧， 到特朗普当选美国总统，再到俄罗斯在无视欧美政府的参与下成功协调了叙利亚内战的停战协议，同时伴随着恐怖主义对西方社会的不断挑衅，西方大国的国际战略正在经历着一次重要的转型。</p>
                                        <p>回到我们身处的亚洲，过去的一年也是风云变幻，从台湾开始，自2016年5月民进党上台执政后，由于蔡英文当局在承认“九二共识”等核心议题上持模糊立场，给两岸关系发展投下阴影。与此同时，日本首相安倍在2016年末访问珍珠港，向外界展示继续强化日美同盟的同时，还向俄罗斯总统送礼示好，做着“两手准备”，似乎都在为2017年安倍政权提交修宪问题做铺垫，最后再到中国今年在南海问题上的强硬手段，以及日益增长的海军势力外加上目前的航母编队的部署也让中美关系以及中国与亚洲邻国的关系更加复杂。由此可见，在东亚地区，中、日、韩之间的战略互信已经缺失，多边经济合作机制冗杂重叠，区域一体化进程止步不前，甚至可能倒退。</p>
                                        <p>美国台湾商会会长、英国在野党亚洲外交大臣、以及牛津大学中国现代政治历史教授，这三位国际关系专家将在2月4号的伦敦中英峰会上一同讨论2017年的世界格局，一起探索2017年中国的国际策略。</p>
                                        <p><span>Rupert Hammond-Chambers</span>
                                            <b>• 美台商业协会会长</b>
                                            <b>• 美国美中关系全国委员会成员</b>
                                            美台商业协会会长韩儒伯，同时还是美国美中关系全国委员会成员、保尔亚洲集团董事总经理，对于中美台三方关系有着自己独特的看法。他出生于苏格兰，1987年移民到美国，并在丹尼森大学获得文学学士学位。韩儒伯先生于1994年10月开始在美台商业理事会工作，致力于发展理事会作为其成员的战略伙伴作用，目标是将理事会定位为通过价值和卓越帮助亚洲地区美国公司的领导者。
                                        </p>
                                        <p><span>Catherine West MP</span>
                                          <b>• 英国在野党亚洲外交政策大臣</b>
                                          <b>• 成立UK-EU关系各党派议会组织</b>
                                          凯瑟琳 • 韦斯特女士1966年出生于悉尼。目前是英国在野党负责亚洲及太平洋外交政策的大臣。韦斯特议员同时会说五种语言，拥有来自伦敦大学亚非学院关于中国研究的硕士学位并曾在南京任教一年。2016年9月，凯瑟琳成立UK-EU关系各党派议会组织，试图将英国和欧盟之间的关系积极化。
                                        </p>
                                        <p><span>Rana Mitter</span>
                                        <b>• 牛津大学中国研究中心主任</b>
                                        <b>• 牛津大学现代中国政治与历史学教授</b>
                                        继费正清、史景迁之后西方“新一代中国通”，西方新一代中国抗战史研究权威，38岁即成为当时牛津大学最年轻的终身教授，现任牛津大学现代中国政治与历史学教授，圣十字学院院士。他在2007年创办的牛津大学中国抗日战争研究中心，2014年升格为牛津大学中国研究中心，成为西方汉学界的权威研究机构之一。他的主要作品包括《痛苦的革命》（A Bitter Revolution）、《被遗忘的盟友》(Forgotten Ally: China’s World War Two,1937-1945)。
                                        2016年世界政治中的一系列重大变化和事件，是否预示着人类历史的重大转折，冷战结束后确立的国际政治和经济的基本格局、秩序和规则，是否会发生质变，我们仍需进一步的观察， 希望大家可以在和嘉宾的讨论中，对这些关系祖国和世界未来的议题，得出自己的结论。
                                        </p>
                                       </div>
                                   </div>
                                    <p class="info-show events-info-show">
                                      <span>Hala Hanna 21/07/2017</span>
                                      <i class="icon-down icon-up"></i>
                                    </p>
                                </div>
                           </div>
                       </div>
                       <div class="team-member clearfix">
                          <div class="team-cont-l" >
                              <div>
                                  <img class="result-img" init-src="" src="${base }/resources/images/project/schedulebanner04.png" width="400" height="300">
                              </div>
                              <div class="pages-img evens-pages-img">
                                  <ul>
                                      <li class="padd-right active">
                                          <img data-select="false" src="${base }/resources/images/project/schedulebanner04-m1.jpg" data-src="${base }/resources/images/project/schedulebanner04.png">
                                      </li>
                                      <li class="padd-center">
                                          <img data-select="false" src="${base }/resources/images/project/china-schedulebanner02-m2.jpg" data-src="${base }/resources/images/project/china-schedulebanner02.jpg" alt="">
                                      </li>
                                      <li class="padd-left">
                                          <img data-select="false" src="${base }/resources/images/project/china-schedulebanner03-m3.jpg" data-src="${base }/resources/images/project/china-schedulebanner03.jpg" alt="">
                                      </li>
                                      <li class="padd-right">
                                          <img data-select="false" src="${base }/resources/images/project/china-schedulebanner04-m4.jpg" data-src="${base }/resources/images/project/china-schedulebanner04.jpg" alt="">
                                      </li>
                                      <li class="padd-center">
                                          <img data-select="false" src="${base }/resources/images/project/china-schedulebanner05-m5.jpg" data-src="${base }/resources/images/project/china-schedulebanner05.jpg" alt="">
                                      </li>

                                  </ul>
                              </div>
                            </div>
                           <div class="team-cont-r">
                                <div class="team-cont-wapper">
                                    <div>
                                       <h5  id="schedule4" class="name-ch">中国品牌走向世界</h5>
                                       <div class="txt">
                                            <p>当今经济是世界一体化的经济。全球经济一体化趋势在不断地加强，随着国际竞争的加剧，国际市场竞争已经跨越了产品竞争阶段， 进入了品牌竞争的时代。未来市场的竞争，将不是产品与产品之间的竞争，更多的将表现为品牌与品牌之间的竞争，一个国家是否拥有国际认可的品牌，已成为该国经济实力和国际竞争力的象征。</p>
                                            <p>改革开放以来，中国经济飞速发展，成为了“世界工厂”，中国的洗衣机、彩电、电冰箱、照相机、服装等众多商品销量居于世界第一位。但是，中国虽然是“制造大国”，可却不是“品牌大国”，因此，未来中国企业如何从“中国制造”走向“中国创造”的转变显得尤为重要。中国企业要在国际上立足，必须适应品牌竞争时代的要求，开展品牌营销，创出中国的世界名牌。只有通过知识创新、自主创新，加强自己的品牌管理，形成自己的优势品牌，在破涛汹涌的市场竞争面前，才会有自己的一片天空，更好地在建设经济强国的道路上贡献自己的力量。</p>
                                            <p>2016年，英国在退出欧盟后，重获对外政策的自由度，也必将在对其现有的对外策略进行调整。中英企业合作是否会借这个机会走的更远？</p>
                                            <p>而在大西洋彼岸，特朗普上台后将对美国贸易进行重大的改革，奥巴马时期提出的自由贸易协议TPP也注定被搁置，这是否意味着倡导着亚太自贸区FTAAP的中国将掌握亚洲的局势，奠定在亚太地区的领导地位呢？</p>
                                            <p>与此同时，中国企业在2016年前三个季度总共进行了金额高达674.4亿的收购并购项目。中国一举超越美国，成为全球跨境M&A最大收购国。是什么因素促进着中国企业在海外疯狂“买买买”呢？而Brexit又会对中英跨境M&A产生什么机遇呢？</p>
                                            <p>对此，中英峰会请到了罗刚先生、曹杰先生、金旭参赞以及David Lloyd先生，与大家分享中国企业在国际化的道路上所面临的机遇和挑战，以及对未来的愿景和规划。他们，是历经商海沉浮的企业家，是最具发言权的实干者，因此，他们必定能够以最真实的视角，为各位分享中国企业的国际发展之路。</p>
                                            <p><span>罗刚  </span>
                                            <b>• 现任华为公司英国首席执行官</b>
                                            <b>• 华为英国董事会执行董事</b>
                                            现任华为公司英国首席执行官，华为英国董事会执行董事，曾担任华为公司北欧地区首席执行官。在罗先生担任英国负责人这几年中，华为对英国经济的年均贡献超过三亿英镑。截至2014年，华为通过三个渠道在英国新增7386个就业岗位，如该公司在英国15个地区采购产品与服务，供销商更是遍布英国各地。2015年国家主席习近平于10月19-23日对英国进行国事访问时，还曾专程到华为英国分公司进行参观指导。
                                            </p>
                                            <p><span>曹杰 </span>
                                            <b>• 伦敦发展促进署亚太地区总监</b>
                                            <b>• 英中贸易协会董事会成员</b>
                                              伦敦发展促进署（伦敦市官方推广机构）亚太地区总监，英中贸易协会董事会成员。作为拥有超过二十年工作经验的专业人士，Jeff Cao曾给予许多世界级企业客户市场战略、竞争定位等方面的建议 。他的工作经验涵盖许多部门，尤其是零售、制药、快速消费品、电信和金融服务方面。
                                            </p>
                                            <p><span>金旭参赞</span>
                                            <b>• 现任中国驻英国大使馆商务公参</b>
                                            <b>• 曾任商务部美洲司大洋司副司长</b>
                                            现任中国驻英国大使馆商务公参，曾任商务部美洲司大洋司副司长，国际商务官员研修学院研究学院党委书记兼院长。2014年年底至今，赴英担任中国驻英大使馆经商参处公参一职。
                                            </p>
                                            <p><span>David Lloyd</span>
                                            <b>• 阿里巴巴集团业务发展总监</b>
                                            <b>• 曾任谷歌零售部门高级行业主管</b>
                                            阿里巴巴集团业务发展总监，主要负责发展阿里巴巴与英国、爱尔兰和北欧国家零售产业的业务合作关系。在此之前，他曾任职于谷歌，担任其零售部门高级行业主管，管理谷歌与英国时尚和家用零售公司的业务。
                                            </p>
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
            </div>
        </div>

        <%@include file="/pages/common/footer.jsp"%>
    </div>

    
</body>
</html>