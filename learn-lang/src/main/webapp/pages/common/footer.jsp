<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- footer -->
<div class="footer">
    <div class="back-top event-top">
        <img src="${base }/resources/images/index/top.png" height="40" />
    </div>
    <div class="con">
        <span>&nbsp;</span>
        <div class="detial">
            <ul>
                <li>
                    <a href="${base }/news.htm"><img src="${base }/resources/images/index/icon-news.png" /><spring:message code="navbar.news"/>
                    </a>
                </li>
                <li>
                    <a href="${base }/project.htm"><img src="${base }/resources/images/index/icon-campaign.png" /><spring:message code="navbar.project"/></a>
                </li>
                <li>
                    <a href="${base }/schedule.htm"><img src="${base }/resources/images/index/icon-date.png" /><spring:message code="navbar.richeng"/></a>
                </li>
                <li>
                    <a href="${base }/about-us.htm"><img src="${base }/resources/images/index/icon-aboutus.png" /><spring:message code="navbar.aboutus"/></a>
                </li>
                <li class="m0">
                    <a href="${base }/join-us.htm"><img src="${base }/resources/images/index/icon-contactus.png" /><spring:message code="navbar.joinus"/></a>
                </li>
            </ul>
        </div>
    </div>
    <div class="fot-botm">
        <p><spring:message code="footer.cqsy"/></p>
        <a href="${base }/policy.htm" title=""><spring:message code="footer.yszc"/></a>|<a href="${base }/low.htm" title=""><spring:message code="footer.flsm"/></a>
    </div>
</div>

<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?b888988ce6cddb080888c919f482c5e8";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>