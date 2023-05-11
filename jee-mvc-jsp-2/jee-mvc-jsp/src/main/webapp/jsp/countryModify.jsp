<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 	CSS (w3css) de la Page -->
    <link rel="stylesheet" href="<c:url value="css/w3.css" />"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
    <title>Countries Add/Modify JSP</title>

</head>
<body>
<div>
    <a class="w3-button" href="<c:url value="/" />"><spring:message code="application.back"/></a>
    <a href="<c:url value="?lang=fr" />" class="w3-button"><spring:message code="application.francais"/></a>
    <a href="<c:url value="?lang=en" />" class="w3-button"><spring:message code="application.english"/></a>
</div>
<div class="w3-container">
    <form name="countryForm" action="countryModify" method="POST">
        <table class="mx-auto">
            <tr>
                <td><spring:message code="ad.count-id"/></td>
                <td><input type="number" name="id" readonly value="${country.id}"/></td>
            </tr>
            <tr>
                <td ><spring:message code="ad.count-name"/></td>
                <td><input type="text" name="country" value="${country.country}"/></td>
            </tr>
            <th><input type="submit" value="<spring:message code="btn.submit"/>" class="w3-button"/></th>
            <th><input type="reset" value="<spring:message code="btn.clear"/>" class="w3-button"/></th>
        </table>
    </form>
</div>
</body>
</html>
