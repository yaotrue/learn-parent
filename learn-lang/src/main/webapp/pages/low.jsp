<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>法律声明</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${base }/resources/css/common.css" />
    <link rel="stylesheet" type="text/css" href="${base }/resources/css/low.css">
</head>
<body>
    <%@include file="/pages/common/logo.jsp"%>

    <div id="main" class="content">
		<%@include file="/pages/common/navbar.jsp"%>

        <div class="about-summit">
            <div class="tit">
                <div>
                   <span>&nbsp;</span>
                    <h5><spring:message code="low.title"/></h5>
                </div>
            </div>
        </div>
        <!-- 说明 -->
        <div class="low-box">
            <div class="low-content">
                <div>
                    <p><spring:message code="low.content1"/></p>
                </div>
                <div>
                    <p class="title-p"><spring:message code="low.content2"/></p>
                    <p class="indent">
                        <spring:message code="low.content3"/>
                    </p>
                </div>
                <div>
                    <p class="title-p"><spring:message code="low.content4"/></p>
                    <p class="indent">
                       <spring:message code="low.content5"/>
                    </p>
                </div>
                <div>
                    <p class="title-p"><spring:message code="low.content6"/></p>
                    <p class="indent"><spring:message code="low.content7"/></p>
    　　            <p class="indent"><spring:message code="low.content8"/></p>
                    <p class="indent"><spring:message code="low.content9"/></p>
                    <p class="indent"><spring:message code="low.content10"/></p>
                    <p class="indent"><spring:message code="low.content11"/></p>
                    <p class="indent"><spring:message code="low.content12"/></p>
                </div>
                <div>
                    <p class="title-p"><spring:message code="low.content13"/></p>
                    <p class="indent"><spring:message code="low.content14"/></p>
                </div>
                <div>
                    <p class="title-p"><spring:message code="low.content15"/></p>
                    <p class="indent"><spring:message code="low.content16"/></p>
                </div>
                <div>
                    <p class="title-p"><spring:message code="low.content17"/></p>
                    <p class="indent"><spring:message code="low.content18"/></p>
                </div>
                <div>
                    <p class="title-p"><spring:message code="low.content19"/></p>
                    <p class="indent"><spring:message code="low.content20"/></p>
                </div>
                <div>
                    <p class="title-p"><spring:message code="low.content21"/></p>
                    <p class="indent"><spring:message code="low.content22"/></p>
                </div>　
                <div>
                    <p class="title-p"><spring:message code="low.content23"/></p>
                </div>

            </div>
        </div>

        <%@include file="/pages/common/footer.jsp"%>
    </div>

    
</body>
</html>