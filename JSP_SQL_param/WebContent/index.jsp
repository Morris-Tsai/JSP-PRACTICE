<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/test?useSSL=false&serverTimezone=CST"
user="root" password="10219873"/>
<sql:update dataSource="${db }" var="count">
INSERT INTO Students VALUES(150,'rey','Hu',25);


</sql:update>
<sql:query dataSource="${db }" var="rs">
SELECT*from Students;

</sql:query>
<table border="2" width="100%" class="table table-dark table-striped">
<tr>
<th>Student ID</th>
<th>First Name</th>
<th>Last Name</th>
<th>Age</th>
</tr>
<c:forEach var="table" items="${rs.rows }">
<tr>
<td><c:out value="${table.id }"/></td>
<td><c:out value="${table.First_Name }"/></td>
<td><c:out value="${table.Last_Name }"/></td>
<td><c:out value="${table.Age }"/></td>
</tr>
</c:forEach>

</table>
</body>
</html>