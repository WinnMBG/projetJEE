<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Developpeur
  Date: 08/05/2023
  Time: 21:46
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
    crossorigin="anonymous">
    <title>Index</title>
</head>
<body>
    <div class="d-flex" style="gap: 20px">
        <a href="<c:url value="?lang=fr" />" class="btn btn-outline-secondary mt-2 ml-2"><spring:message code="application.francais"/></a>
        <a href="<c:url value="?lang=en" />" class="btn btn-outline-secondary mt-2"><spring:message code="application.english"/></a>
    </div>
    <h1 style="text-align: center"><spring:message code="application.title"/></h1>
    <div class="d-flex justify-content-center mt-4" style="gap: 20px">
        <a href="countries" class="btn btn-outline-secondary mt-2"><spring:message code="application.countries"/></a>
        <a href="cities" class="btn btn-outline-secondary mt-2"><spring:message code="application.cities"/></a>
    </div>
</body>
</html>
