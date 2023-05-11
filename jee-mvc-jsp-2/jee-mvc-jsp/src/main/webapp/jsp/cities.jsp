<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
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
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css" />

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <title>Countries JSP</title>

</head>

<body onload="init();">

<%--<jsp:include page="header.jsp"></jsp:include>--%>

<div class="w3-container">
    <div>
        <a href="<c:url value="?lang=fr" />" class="w3-button"><spring:message code="application.francais"/></a>
        <a href="<c:url value="?lang=en" />" class="w3-button"><spring:message code="application.english"/></a>
        <h2 style="text-align: center">Sakila - <spring:message code="application.city"/></h2>
    </div>
    <br>
    <a class="w3-button" href="<c:url value="/" />"><spring:message code="application.back"/></a>

    <div class="w3-container w3-center">
        <a class="w3-button mb-4" href="<c:url value="/" />"><spring:message code="application.new"/></a>
        <table id="appTable" class="w3-centered w3-table-all">
            <thead>
            <tr class="w3-light-grey">
                <th><spring:message code="application.id"/></th>
                <th><spring:message code="application.city"/></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${cities}" var="elem">
                <tr>
                    <th scope="row">${elem.id}</th>
                    <td class="d-flex" style="gap: 100px">${elem.city} <span><a class="btn btn-outline-secondary" href="city/${elem.id}"><spring:message code="city.see"/></a></span></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<script>
    function init() {
        let location = "static/langages/<spring:message code="app.tabLang"/>"
        $(document).ready(function () {
            $('#appTable').DataTable({
                "bInfo": true, //Dont display info e.g. "Showing 1 to 4 of 4 entries"
                "paging": false,//Dont want paging
                "bPaginate": false,//Dont want paging
                "processing": true,
                language: {
                    url: location
                }
            });
        });
    }
</script>
</body>
<!-- JavaScript resources dataTables + jQuery -->

</html>
