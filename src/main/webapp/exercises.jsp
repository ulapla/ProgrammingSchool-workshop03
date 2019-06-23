<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Exercises</title>
</head>
<body>
<jsp:include page="/header.jsp"/>
<h2>Exercises</h2>
<table border="1">
    <th>Title</th>
    <th>Description</th>
    <th></th>
    <c:forEach var="exercise" items="${exercises}">
        <tr>
            <td>${exercise.title}</td>
            <td>${exercise.description}</td>
            <td> <a href="/edit.exercise?id=${exercise.id}">Edit</a> </td>

        </tr>

    </c:forEach>

</table>
<a href="/edit.exercise">Add</a>
<jsp:include page="/footer.jsp"/>
</body>
</html>
