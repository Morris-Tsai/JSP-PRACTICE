<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
String num1=request.getParameter("n1");
String num2=request.getParameter("n2");
int a = Integer.parseInt(num1);
int b = Integer.parseInt(num2);
int c=a/b;
out.print("division of number is:"+c);
%>
</body>
</html>