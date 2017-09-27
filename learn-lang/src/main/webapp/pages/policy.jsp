<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>隐私政策</title>
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
                    <h5><spring:message code="policy.title"/></h5>
                </div>
            </div>
        </div>
        <!-- 说明 -->
        <div class="low-box">
            <div class="low-content">
                <div>
                    <p> <spring:message code="policy.content1"/></p>
                </div>
                <div>
                    <p class="title-p"><spring:message code="policy.content2"/></p>
                    <p class="indent">
                        <spring:message code="policy.content3"/>
                    </p>
                </div>
                <div>
                    <p class="title-p"><spring:message code="policy.content4"/></p>
                    <p class="indent">
                      <spring:message code="policy.content5"/> 
                    </p>
                </div>
                <div>
                    <p class="title-p"><spring:message code="policy.content6"/></p>
                    <p class="indent"><spring:message code="policy.content7"/> </p>
                </div>
                <div>
                    <p class="title-p"><spring:message code="policy.content8"/></p>
                    <p class="indent"><spring:message code="policy.content9"/></p>
                </div>
                <div>
                    <p class="title-p"><spring:message code="policy.content10"/></p>
                    <p class="indent"><spring:message code="policy.content11"/></p>
                    <p class="indent"><spring:message code="policy.content12"/></p>
                </div>
                <div>
                    <p class="title-p"><spring:message code="policy.content13"/></p>
                    <p class="indent"><spring:message code="policy.content14"/></p>
                </div>
                <div>
                    <p class="title-p"><spring:message code="policy.content15"/></p>
                    <p class="indent"><spring:message code="policy.content16"/></p>
                </div>
                <div>
                    <p class="title-p"><spring:message code="policy.content17"/></p>

                </div>　

            </div>
        </div>

        <%@include file="/pages/common/footer.jsp"%>
    </div>

    
</body>
</html>