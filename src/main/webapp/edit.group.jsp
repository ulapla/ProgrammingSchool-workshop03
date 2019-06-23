<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Edit/Add group</title>
</head>
<body>
<jsp:include page="/header.jsp"/>
<div >

    <form action="/edit.group" method="post">
        <div>
            <c:if test="${id != null}">
                <div>
                    <div><h3>Edit group</h3></div>
                </div>
                <table>
                    <tbody>
                    <tr>
                        <td>name:</td>
                        <td>
                            <input name="name" value="${group.name}">
                            <input type="hidden" name="id" value="${group.id}">
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
                    <div><h3>Add group</h3></div>
                </div>
                <table>
                    <tbody>
                    <tr>
                        <td>name:</td>
                        <td>
                            <input name="name">

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
