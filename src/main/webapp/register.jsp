<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><spring:message code="RegPage.title"/></title>

    <link href="${contextPath}/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">


</head>

<body>

<div class="container">

    <div class="col-md-offset-3 col-md-6">
        <form:form method="POST" modelAttribute="userForm" class="form-signin">
            <h2 class="form-signin-heading">
                <spring:message code="RegPage.header"/>
            </h2>
            <h4><spring:message code="RegPage.username"/></h4>
            <spring:bind path="username">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="username" class="form-control"
                                autofocus="true"></form:input>
                    <form:errors path="username"></form:errors>
                </div>
            </spring:bind>

            <h4><spring:message code="RegPage.pass"/></h4>
            <spring:bind path="password">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="password" class="form-control"></form:input>
                    <form:errors path="password"></form:errors>
                </div>
            </spring:bind>

            <h4><spring:message code="RegPage.pass2"/></h4>
            <spring:bind path="passwordConfirm">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="passwordConfirm" class="form-control"></form:input>
                    <form:errors path="passwordConfirm"></form:errors>
                </div>
            </spring:bind>

            <h4><spring:message code="RegPage.fio"/></h4>
            <spring:bind path="fio">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="fio" class="form-control"></form:input>
                    <form:errors path="fio"></form:errors>
                </div>
            </spring:bind>
            <button class="btn btn-lg btn-primary btn-block" type="submit">
                <spring:message code="RegPage.regButton"/>
            </button>
            <h4 class="text-center"><a href="${contextPath}/login"
                <spring:message code="RegPage.loginLink"/>
            </a></h4>

        </form:form>

    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="${contextPath}/resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</body>
</html>