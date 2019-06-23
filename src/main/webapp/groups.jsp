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
        <td> <a href="/group.details?id=${group.id}">Details</a> </td>

    </tr>

</c:forEach>

</table>
<jsp:include page="/footer.jsp"/>
</body>
</html>
