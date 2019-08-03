<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Exercise solution</title>
</head>
<body>
<jsp:include page="/header.jsp"/>
<h4>Exercise: ${exercise.title}</h4>
<p>${exercise.description}</p>
<h3>Exercise's solution details</h3>

<div>
    <textarea rows="20" cols="100" readonly="true">${solution.description}</textarea>

</div>


<jsp:include page="/footer.jsp"/>
</body>
</html>
