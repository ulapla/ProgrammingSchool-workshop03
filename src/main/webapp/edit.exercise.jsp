<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Edit/Add exercise</title>
</head>
<body>
<jsp:include page="/header.jsp"/>
<div >

    <form action="/edit.exercise" method="post">
        <div>
            <c:if test="${id != null}">
            <div>
                <div><h3>Edit exercise</h3></div>
            </div>
            <table>
                <tbody>
                <tr>
                    <td>title:</td>
                    <td>
                        <input name="title" value="${exercise.title}">
                    </td>
                </tr>
                <tr>
                    <td>description:</td>
                    <td>
                        <input  name="description" value="${exercise.description}">
                        <input type="hidden" name="id" value="${exercise.id}">
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
                        <td>title:</td>
                        <td>
                            <input name="title" >
                        </td>
                    </tr>
                    <tr>
                        <td>description:</td>
                        <td>
                            <input  name="description" >
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
