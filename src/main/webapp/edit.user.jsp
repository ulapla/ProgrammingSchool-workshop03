<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Edit/Add user</title>
</head>
<body>
<jsp:include page="/header.jsp"/>
<div >

    <form action="/edit.user" method="post">
        <div>
            <c:if test="${id != null}">
                <div>
                    <div><h3>Edit user</h3></div>
                </div>
                <table>
                    <tbody>
                    <tr>
                        <td>name:</td>
                        <td>
                            <input name="name" value="${user.name}">
                        </td>
                    </tr>
                    <tr>
                        <td>email:</td>
                        <td>
                            <input  name="email" value="${user.email}">
                        </td>
                    </tr>
                    <tr>
                        <td>user group id:</td>
                        <td>
                            <input  name="userGroupId" value="${user.userGroupId}">
                            <input type="hidden" name="id" value="${user.id}">
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div>
                    <button type="submit">Submit</button>
                </div>
            </c:if>
            <c:if test="${id == null}">
                <div>
                    <div><h3>Add exercise</h3></div>
                </div>
                <table>
                    <tbody>
                    <tr>
                        <td>name:</td>
                        <td>
                            <input name="name">
                        </td>
                    </tr>
                    <tr>
                        <td>email:</td>
                        <td>
                            <input  name="email">
                        </td>
                    </tr>
                    <tr>
                        <td>user group id:</td>
                        <td>
                            <input  name="userGroupId">
                        </td>
                    </tr>
                    <tr>
                        <td>password:</td>
                        <td>
                            <input  name="password">
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div>
                    <button type="submit">Submit</button>
                </div>
            </c:if>
        </div>
    </form>
</div>
<jsp:include page="/footer.jsp"/>

</body>
</html>
