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

    <title><spring:message code="AddrecordPage.title"/></title>

    <link href="${contextPath}/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">


</head>

<body>


<div class="container">

    <div class="col-md-offset-2 col-md-8">
        <form:form method="POST" modelAttribute="recordForm" class="form-signin">
            <h2 class="form-signin-heading"><spring:message code="AddrecordPage.header"/></h2>

            <h4><spring:message code="AddrecordPage.surname"/></h4>
            <spring:bind path="surname">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="surname" class="form-control" autofocus="true"></form:input>
                    <form:errors path="surname"></form:errors>
                </div>
            </spring:bind>

            <h4><spring:message code="AddrecordPage.name"/></h4>
            <spring:bind path="name">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="name" class="form-control"></form:input>
                    <form:errors path="name"></form:errors>
                </div>
            </spring:bind>

            <h4><spring:message code="AddrecordPage.patronymic"/></h4>
            <spring:bind path="patronymic">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="patronymic" class="form-control"></form:input>
                    <form:errors path="patronymic"></form:errors>
                </div>
            </spring:bind>

            <h4><spring:message code="AddrecordPage.mobilePhone"/></h4>
            <spring:bind path="mobilePhone">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="mobilePhone" class="form-control"></form:input>
                    <form:errors path="mobilePhone"></form:errors>
                </div>
            </spring:bind>

            <h4><spring:message code="AddrecordPage.homePhone"/></h4>
            <spring:bind path="homePhone">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="homePhone" class="form-control"></form:input>
                    <form:errors path="homePhone"></form:errors>
                </div>
            </spring:bind>

            <h4><spring:message code="AddrecordPage.address"/></h4>
            <spring:bind path="address">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="address" class="form-control"></form:input>
                    <form:errors path="address"></form:errors>
                </div>
            </spring:bind>

            <h4><spring:message code="AddrecordPage.email"/></h4>
            <spring:bind path="email">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="email" class="form-control"></form:input>
                    <form:errors path="email"></form:errors>
                </div>
            </spring:bind>


            <button class="btn btn-lg btn-primary btn-block" type="submit">
                <spring:message code="AddrecordPage.addButton"/>
            </button>
            <h4 class="text-center"><a href="${contextPath}/viewdata">
                <spring:message code="AddrecordPage.cancelButton"/>
            </a></h4>

        </form:form>

    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="${contextPath}/resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</body>
</html>