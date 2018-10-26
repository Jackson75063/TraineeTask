<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>AuthorData</title>

</head>
<body>
<h1>Author Details</h1>
<c:if test="${!empty authorList}">
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">name</th>
            <th width="120">gender</th>
            <th width="120">born</th>
        </tr>
        <c:forEach items="${authorList}" var="book">
            <tr>
                <td>${book.id}</td>
                <td>${book.name}</td>
                <td>${book.gender}</td>
                <td>${book.born}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>