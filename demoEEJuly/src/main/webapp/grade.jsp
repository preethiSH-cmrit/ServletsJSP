<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grade Demo</title>
<%! char grade = 'B'; %>

</head>

<body>
<!-- change grade in query string -->
<%
String param  = request.getParameter("grade");
if (param !=null)
	  grade= param.charAt(0);
	%>
<p>
<a href="grade.jsp?grade=A">Grade A</a> |
<a href="grade.jsp?grade=B">Grade B</a> |
<a href="grade.jsp?grade=C">Grade C</a> |
<a href="grade.jsp?grade=D">Grade D</a> |
<a href="grade.jsp?grade=E">Grade E</a>
</p>
<div style="width: 250px; background-color:#ffccff">
<%if (grade == 'A' || grade =='B' || grade =='C'){ %>
	<p style="color:blue"> YOU PASSED! </p>
	
<%} else{ %>
	<p style="color:red"> You failed! </p>
	
<% }
switch(grade){
	case 'A':
	%>
<p>You got an A grade. Awesome!</p>
	<%break;
	case 'B':%>
	<p>You got  B grade. Good Work!</p>
	<% break;
case 'C':%>
	<p>You got a C grade. Good Effort!</p>
	<%break; 
default:%>
<p>You got an F grade. Put in more effort next time!</p>
<%		
}
%>
</body>
</html>