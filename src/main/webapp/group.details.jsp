<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Group details</title>
</head>
<body>
<jsp:include page="/header.jsp"/>
<h2>Group name: ${group.name}</h2>
<div>
    <h3>Users of this group:</h3>
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th></th>
        </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td><a href="/user.details?id=${user.id}">details</a></td>
        </tr>

    </c:forEach>
    </table>
</div>

<jsp:include page="/footer.jsp"/>
</body>
</html>
