<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Groups</title>
</head>
<body>
<jsp:include page="/header.jsp"/>
<h2>Groups</h2>
<table border="1">
    <th>Name</th>
    <th></th>
    <c:forEach var="group" items="${groups}">
        <tr>
            <td>${group.name}</td>
            <td> <a href="/edit.group?id=${group.id}">Edit</a> </td>

        </tr>

    </c:forEach>

</table>
<a href="/edit.group">Add</a>
<jsp:include page="/footer.jsp"/>
</body>
</html>
