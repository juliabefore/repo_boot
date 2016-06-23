<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--<%@ page session="true"%>--%>
<%@ page import="org.springframework.security.web.csrf.CsrfToken" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Log in</title>

    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/common.css">
</head>
<body>
<div class="container">
    <h2 class="text-center">Log in</h2>
<table width="90%">
    <tr>
        <td valign="top" align="left" width="15%">
            <nav role="navigation">
                <ul>
                    <li><a href="/">Home</a></li>
                </ul>
            </nav>
        </td>

        <td valign="top" align="center" width="80%">
            <p class="text-center">You can use: zzz@localhost / zzz</p>

            <br/>
                <c:if test="${error.isPresent()}">
                    <h5 class="text-center"><span style="color: red; font-weight: bold"><spring:message code="signIn.failed"/></span></h5>
                </c:if>
            <br/>
            <br/>
        </td>
        <td valign="top" align="right" width="15%">
            Here will be smth
        </td>
    </tr>
</table>

<form:errors path="login"/>
<form role="form" action="/login" method="post" class="form-signin">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

    <div class="form-group">
        <label for="email">Email address</label>
        <input class="form-control" type="email" name="email" id="email" required autofocus placeholder="Email"/>
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input class="form-control" type="password" name="password" id="password" required placeholder="Password"/>
    </div>
    <div class="form-group">
        <label for="remember-me">Remember me</label>
        <input type="checkbox" name="remember-me" id="remember-me"/>
    </div>
    <button type="submit" class="btn btn-lg btn-primary btn-block">Sign in</button>
</form>

</div>
<!-- /container -->
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>--%>
<%--&lt;%&ndash;<script src="static/js/bootstrap.min.js"></script>&ndash;%&gt;--%>
<%--<script src="${contextPath}/resources/js/bootstrap.min.js"></script>--%>
</body>
</html>