<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="nav-bar">
    <ul>
        <li class="current"><a href="${pageContext.request.contextPath }/"><spring:message code="navbar.index"/></a></li>
        <li><a href="${pageContext.request.contextPath }/"><spring:message code="navbar.news"/></a></li>
        <li><a href="${pageContext.request.contextPath }/"><spring:message code="navbar.project"/></a></li>
        <li><a href="${pageContext.request.contextPath }/"><spring:message code="navbar.richeng"/></a></li>
        <li><a href="${pageContext.request.contextPath }/"><spring:message code="navbar.aboutus"/></a></li>
        <li><a href="${pageContext.request.contextPath }/"><spring:message code="navbar.joinus"/></a></li>
    </ul>
</div>
