<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <title>Home</title>
</head>
<body>
<jsp:include page="/header.jsp"/>

</div>
<table border="1">
    <thead>
    <tr>
        <th>Id</th>
        <th>Created</th>
        <th>Updated</th>
        <th>Description</th>
        <th>Exercise Id</th>
        <th>User Id</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="solution" items="${solutions}">
        <tr>
            <th>${solution.id}</th>
            <td>${solution.created}</td>
            <td>${solution.updated}</td>
            <td>${solution.description}</td>
            <td>${solution.exerciseId}</td>
            <td>${solution.userId}</td>

        </tr>

    </c:forEach>
    </tbody>
</table>
</div>

<jsp:include page="/footer.jsp"/>

</body>
</html>