<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- logo -->
<div class="logo">
    <a href="${base }/"><img src="${base }/resources/images/index/symbols-logo.png" /></a>
    <div class="switch-language">
        <c:forEach items="${i18nLangs }" var="i18nLang" varStatus="status">
       	<a href="${base }/?locale=${i18nLang.key }"
       	 class="langu<c:if test="${currentLang.key eq i18nLang.key }"> current</c:if>">
       	${i18nLang.value }
       	</a>
		<c:if test="${!status.last }">
		<span>|</span>
		</c:if>
		</c:forEach>
    </div>
    <div class="switch-email">
        <a href="https://web.exchangemail.hk/owa/auth/logon.aspx?replaceCurrent=1&reason=3&url=https%3a%2f%2fweb.exchangemail.hk%2fowa%2fauth%2flogon.aspx%3furl%3dhttps%253a%252f%252fweb.exchangemail.hk%252fowa%23replaceCurrent%3d1"><img src="${base }/resources/images/index/email.png" alt=""><spring:message code="logo.emaillogin"/></a>
    </div>
</div>