<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="ru">
<head>
    <title>Users</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<%--<section>--%>
<%--    <h3>${user}</h3>--%>

<%--    <table border="1" cellpadding="8" cellspacing="0">--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--            <th>Name"/></th>--%>
<%--            <th>Email"/></th>--%>
<%--            <th>Roles"/></th>--%>
<%--            <th>Active"/></th>--%>
<%--            <th>Registered"/></th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <c:forEach items="${users}" var="user">--%>
<%--            <jsp:useBean id="user" scope="page" type="ru.javawebinar.topjava.model.User"/>--%>
<%--            <tr>--%>
<%--                <td><c:out value="${user.name}"/></td>--%>
<%--                <td><a href="mailto:${user.email}">${user.email}</a></td>--%>
<%--                <td>${user.roles}</td>--%>
<%--                <td><%=user.isEnabled()%>--%>
<%--                </td>--%>
<%--                <td><fmt:formatDate value="${user.registered}" pattern="dd-MM-yyyy"/></td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--    </table>--%>
<%--</section>--%>
<hr>
<h2>Users</h2>
</body>
</html>