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
</div>
