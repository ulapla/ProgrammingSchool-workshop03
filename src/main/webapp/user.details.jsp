<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>User details</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<div>
    <h3>User: ${user.name}</h3>
    <p>Name: ${user.name}</p>
    <p>Email: ${user.email}</p>

</div>
<div>
    <h3>User's solutions:</h3>
    <table border="1">
        <tr>
            <th>Exercise title</th>
            <th>Created</th>
            <th></th>
        </tr>
        <c:forEach var="solution" items="${solutions}">
        <tr>
                <td>${exerciseDao.read(solution.exerciseId).getTitle()}</td>
                <td>${solution.created}</td>
                <td><a href="exercise.solution?id=${solution.id}">details</a></td>
        </tr>
        </c:forEach>

    </table>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
