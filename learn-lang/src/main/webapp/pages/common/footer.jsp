<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
                    <a href="${base }/join-us.htm"><img src="${base }/resources/images/index/icon-contactus.png" /><spring:message code="footer.contactus"/></a>
                </li>
            </ul>
        </div>
    </div>
    <div class="fot-botm">
        <p>© 2017 Sino-British Summit 中英峰会</p>
        <a href="${base }/policy.htm">隐私政策</a>|<a href="${base }/low.htm">法律声明</a>
    </div>
</div>
