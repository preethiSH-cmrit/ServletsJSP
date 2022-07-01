<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Two numbers</title>
</head>
<head>
   <title> JSP query string </title>
  
</head>
<body bgcolor=#ccccff>
<h3> Add Numbers </h3>
<% if (request.getParameter("submit")==null) { %>
	<form method =get action=addNumber.jsp>
	<p><label>Number 1 </label>
	<input type=text name=num1 >
	</p>
	<p>
	<label> Number 2 </label>
	<input type=text name=num2 >
	</p>
	<p>
	<input type=submit name=submit value=ADD>
	</p>
</form>

<% }else { 

int n1 = Integer.parseInt(request.getParameter("num1"));
int n2 = Integer.parseInt(request.getParameter("num2"));


%>
<div style="width:100px; height=100px; background-color:#ccffcc">Answer is <%=n1+n2 %> </div>
<% } %>


</html>