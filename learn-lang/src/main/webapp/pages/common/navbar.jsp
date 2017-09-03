<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="nav-bar">
	<div class="nav-bar-bg">
    	<ul>
        	<li<c:if test="${navbar eq 'index' }"> class="current"</c:if>><a href="${base }/"><spring:message code="navbar.index"/></a></li>
	        <li<c:if test="${navbar eq 'news' }"> class="current"</c:if>><a href="${base }/news.htm"><spring:message code="navbar.news"/></a></li>
	        <li<c:if test="${navbar eq 'project' }"> class="current"</c:if>><a href="${base }/project.htm"><spring:message code="navbar.project"/></a></li>
	        <li<c:if test="${navbar eq 'schedule' }"> class="current"</c:if>><a href="${base }/schedule.htm"><spring:message code="navbar.richeng"/></a></li>
	        <li<c:if test="${navbar eq 'aboutus' }"> class="current"</c:if>><a href="${base }/about-us.htm"><spring:message code="navbar.aboutus"/></a></li>
	        <li<c:if test="${navbar eq 'joinus' }"> class="current"</c:if>><a href="${base }/join-us.htm"><spring:message code="navbar.joinus"/></a></li>
        </ul>
    </div>
</div>