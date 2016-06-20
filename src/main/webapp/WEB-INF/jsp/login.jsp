<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true"%>
<%@ page import="org.springframework.security.web.csrf.CsrfToken" %>

<%--<c:set var="contextPath" value="${pageContext.request.contextPath}"/>--%>

<%--<mvc:resources location="/resources/web/" mapping="/resources/**" />--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Log in</title>
    <%--<link href="${contextPath}/resources/css/bootstrap.css" rel="stylesheet">--%>
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

<h2 class="text-center">Log in</h2>

<p class="text-center">You can use: zzz@localhost / zzz</p>

<br/>
<c:if test="${error.isPresent()}">
    <h5 class="text-center"><span style="color: red; font-weight: bold"><spring:message code="signIn.failed"/></span></h5>
</c:if>
<br/>
<br/>
<form:errors path="login"/>
<form role="form" action="/login" method="post" class="form-signin">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

    <div class="form-group">
        <label for="email">Email address</label>
        <input class="form-control" type="email" name="email" id="email" required autofocus/>
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input class="form-control" type="password" name="password" id="password" required/>
    </div>
    <div class="form-group">
        <label for="remember-me">Remember me</label>
        <input type="checkbox" name="remember-me" id="remember-me"/>
    </div>
    <button type="submit" class="btn btn-lg btn-primary btn-block">Sign in</button>
</form>
</div>
</body>
</html>