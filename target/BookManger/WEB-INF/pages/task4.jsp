<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>

<html>
<head>
    <title>Title</title>

</head>
<body>

<h1>Genre List</h1>
<%
    int  data=0;
    String genre = "";

    Connection conn= null;

    Statement st;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/aaaa","root","Jackson75063");


        String query = "SELECT book.genre, COUNT(*) AS counter FROM book  GROUP BY genre";

        st = conn.createStatement();
        ResultSet rs = st.executeQuery(query);

        while(rs.next())
        {
            data = rs.getInt("counter");
            genre = rs.getString("genre");

            out.println(genre+ " : " + data +"<br/>" );
        }

    }
    catch (Exception e) {
        e.printStackTrace();
    }
%>

</body>
</html>
