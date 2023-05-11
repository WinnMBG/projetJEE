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
    <title>City Informations</title>

</head>

<body onload="init();">

<%--<jsp:include page="header.jsp"></jsp:include>--%>

<div class="w3-container">
    <div class="mt-2">
        <a class="btn btn-outline-secondary mx-auto" href="/jee-mvc-jsp/cities"><spring:message code="application.back"/></a>
        <a href="<c:url value="?lang=fr" />" class="btn btn-outline-secondary"><spring:message code="application.francais"/></a>
        <a href="<c:url value="?lang=en" />" class="btn btn-outline-secondary"><spring:message code="application.english"/></a>
        <h2 style="text-align: center"><spring:message code="application.city"/></h2>
    </div>
    <br>
<div class="d-flex flex-column align-items-center" style="gap: 20px">
    <div>
        <table class="mx-auto">
            <tbody>
            <tr>
                <th scope="row">Id</th>
                <td>${city.id}</td>
            </tr>
            <tr>
                <th scope="row">Name</th>
                <td>${city.city}</td>
            </tr>
            <tr>
                <th scope="row"><spring:message code="application.country"/></th>
                <td>${city.country.country}</td>
            </tr>
            <tr>
                <th scope="row">MAJ</th>
                <td>${city.lastUpdate}</td>
            </tr>
            </tbody>
        </table>
    </div>
    <div>
        <form action="jee-mvc-jsp/city/${city.id}" method="post" enctype="multipart/form-data">
            <input type="file" name="image" id="upload" hidden/>
            <label for="upload">Ajouter une photo</label>
            <input type="submit" class="btn btn-outline-secondary">
        </form>
    </div>
</div>
</div>
</body>
<!-- JavaScript resources dataTables + jQuery -->

</html>
