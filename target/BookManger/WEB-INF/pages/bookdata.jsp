<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>BookData</title>

</head>
<body>
<h1>Book Details</h1>
<c:if test="${!empty listBooks}">
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">name</th>
            <th width="120">published</th>
            <th width="120">genre</th>
            <th width="120">rating</th>
        </tr>
        <c:forEach items="${listBooks}" var="book">
            <tr>
                <td>${book.id}</td>
                <td>${book.name}</td>
                <td>${book.published}</td>
                <td>${book.genre}</td>
                <td>${book.rating}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>