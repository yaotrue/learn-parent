<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<body>
	<h2>Hello World!<spring:message code="test.resources"/></h2>
	
	<c:forEach items="${i18nLangs }" var="i18nLang">
	<a href="${pageContext.request.contextPath }/?locale=${i18nLang.key }">${i18nLang.value }</a>
	</c:forEach>
</body>
</html>
