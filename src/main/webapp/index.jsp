<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <title>Home</title>
</head>
<body>
<jsp:include page="/header.jsp"/>
<br>
</div>
<h3>Recent solutions</h3>
<table border="1">
    <thead>
    <tr>
        <th>Exercise</th>
        <th>User</th>
        <th>Created</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="solution" items="${solutions}">
        <tr>
            <td>${exerciseDao.read(solution.exerciseId).getTitle()}</td>
            <td>${userDao.read(solution.userId).getName()}</td>
            <td>${solution.created}</td>
            <td> <a href="/exercise.solution?id=${solution.id}">Details</a> </td>

        </tr>

    </c:forEach>
    </tbody>
</table>
</div>

<jsp:include page="/footer.jsp"/>

</body>
</html>