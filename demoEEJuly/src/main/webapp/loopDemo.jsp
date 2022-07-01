<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Looop demo </title>
<style>
	table,th,td {border: 1px solid black;border-collapse:collapse; padding:5px;}
</style>
<%! char grades[] = {'A','B','C','F'}; %>
</head>
<body>
<h1> Loop demo</h1>
	<table>
		<%for(int i=0;i<grades.length;i++){ %>
		<tr><th>Grade <%=grades[i] %></th></tr>
		<%} %>
	</table>

</body>
</html>