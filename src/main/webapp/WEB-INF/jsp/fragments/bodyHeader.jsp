<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<nav class="navbar navbar-dark bg-dark py-0">
    <div class="container">
        <a href="meals" class="navbar-brand"><img src="resources/images/icon-meal.png"> <spring:message code="app.title"/></a>
        <form class="form-inline my-2">
            <a class="btn btn-info mr-1" href="users"><spring:message code="user.title"/></a>
            <a class="btn btn-primary" href="logout">
                <span class="fa fa-sign-out"></span>
            </a>
        </form>
    </div>
</nav>
