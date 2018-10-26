<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false" %>
<html>
<head>
    <title>Books Page</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            overflow: hidden;
            word-break: normal;
            border: 1px solid #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            overflow: hidden;
            word-break: normal;
            border: 1px solid #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

    </style>
</head>
<body>
<a href="../../index.jsp">Back to main menu</a>

<br/>
<br/>

<h1>Book List</h1>

<c:if test="${!empty listAuthors}">
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">name</th>
            <th width="120">gender</th>
            <th width="120">born</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${listAuthors}" var="author">
            <tr>
                <td>${author.id}</td>
                <td>${author.name}</td>
                <td>${author.gender}</td>
                <td>${author.born}</td>

                <td><a href="<c:url value='#'/>">Edit</a></td>
                <td><a href="<c:url value='/removeA/${author.id}'/>">Delete</a></td>
                <%--<td><a href="<c:url value='/removeA/${author.id}'/>">Delete</a></td>--%>
            </tr>
        </c:forEach>
    </table>
</c:if>


<h1>Add a Book</h1>

<c:url var="addAction" value="/authors/add"/>

<form:form action="${addAction}" commandName="author">
    <table>
        <c:if test="${!empty author.name}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="id" readonly="true" size="8" disabled="true"/>
                    <%--<form:hidden path="id"/>--%>
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="name">
                    <spring:message text="name"/>
                </form:label>
            </td>
            <td>
                <form:input path="name"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="gender">
                    <spring:message text="gender"/>
                </form:label>
            </td>
            <td>
                <form:input path="gender"/>
            </td>
        </tr>

        <tr>
            <td>
                <form:label path="born">
                    <spring:message text="born"/>
                </form:label>
            </td>
            <td>
                <form:input path="born"/>
            </td>
        </tr>



        <td colspan="2">
            <c:if test="${!empty author.name}">
                <input type="submit"
                       value="<spring:message text="Edit AAA"/>"/>
            </c:if>
            <c:if test="${empty author.name}">
                <input type="submit"
                       value="<spring:message text="Add AAA"/>"/>
            </c:if>
        </td>

    </table>
</form:form>
</body>
</html>
