<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Users</title>
</head>
<body>
<jsp:include page="/header.jsp"/>
<h2>Users</h2>
<table border="1">
    <th>Name</th>
    <th>Email</th>
    <th>Group id</th>
    <th></th>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.userGroupId}</td>
            <td> <a href="/edit.user?id=${user.id}">Edit</a> </td>
        </tr>

    </c:forEach>

</table>
<a href="/edit.user">Add</a>
<jsp:include page="/footer.jsp"/>
</body>
</html>
