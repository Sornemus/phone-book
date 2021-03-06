<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><spring:message code="HomePage.title"/></title>

    <link href="${contextPath}/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">



</head>
<body>
<div class="container">

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h2><spring:message code="HomePage.welcome"/>${pageContext.request.userPrincipal.name}</h2>

        <h4><a onclick="document.forms['logoutForm'].submit()">
            <spring:message code="HomePage.logoutLink"/>
        </a></h4>
        <h4><a href="${contextPath}/viewdata">
            <spring:message code="HomePage.phonebookLink"/>
        </a></h4>
    </c:if>

</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</body>
</html>