<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Create a new user</title>
    <%--<link href="css/bootstrap.css" rel="stylesheet">--%>
    <%--<link href="css/common.css" rel="stylesheet">--%>
</head>
<body>
<div class="container">
<nav role="navigation">
    <ul>
        <li><a href="/">Home</a></li>
    </ul>
</nav>

<h2 class="text-center">Create a new user</h2>

<%--<form role="form" name="form" action="" method="post">--%>
<form:form method="post" commandName="form" class="form-signin">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

    <div class="form-group">
        <form:errors path="email" cssStyle="color: red; font-weight: bold"/>
        <br/>
        <label for="email">Email address</label>

        <%--<input type="email" name="email" id="email" value="${form.email}" required autofocus/>--%>

        <form:input path="email" required="true" autofocus="true" class="form-control" type="text"/>
    </div>

    <div class="form-group">
        <form:errors path="password" cssStyle="color: red; font-weight: bold"/>
        <br/>
        <label for="password">Password</label>
        <%--<input type="password" name="password" id="password" required/>--%>
        <form:input path="password" required="true" class="form-control" type="password"/>
    </div>

    <div class="form-group">
        <form:errors path="passwordRepeated" cssStyle="color: red; font-weight: bold"/>
        <br/>
        <label for="passwordRepeated">Repeat</label>
        <%--<input type="password" name="passwordRepeated" id="passwordRepeated" required/>--%>
        <form:input path="passwordRepeated" required="true" class="form-control" type="password"/>
    </div>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Save</button>
</form:form>

<%--<spring:hasBindErrors name="form">--%>
    <%--<c:forEach var="error" items="${errors.allErrors}">--%>
        <%--<font color="red"><b><spring:message message="${error}" /></b></font>--%>
        <%--<br />--%>
    <%--</c:forEach>--%>
<%--</spring:hasBindErrors>--%>
</div>
</body>
</html>