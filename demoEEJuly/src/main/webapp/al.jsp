 <%@ page import="java.util.*" %>
<html>
<head>
   <title> Arraylist in JSP </title>
  
</head>
<body bgcolor=#ccccff>
<p>
<%!  ArrayList<String> al  = new ArrayList<String>(); %>
<%  Collections.addAll(al, "red","green","blue"); %>

<br>
<%=al %>
<%  out.println("Hello");  %>
  </p>
  
  <ul>
  <% for (String s: al) { %>
     <li>  <%=s %>  </li>
  <%  }  %>
  </ul>
<% if (request.getParameter("submit")==null) { %>
<form method =get action=al.jsp>
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
<h3>Session demo</h3>
<% session.setAttribute("Level","Admin"); %>

<div style="width:100px;margin: 10px; height=100px; background-color:#ccffcc">Session Attribute 
<%=session.getAttribute("Level")%> </div>

<h3>Cookie demo</h3>
<%
String myCookieName = "level";
String myCookieValue = "Admin";
Cookie c = new Cookie(myCookieName, myCookieValue); 
response.addCookie(c); 
String cname,cvalue;
Cookie[] cookies = request.getCookies();
for(int i=0; i<cookies.length; i++) { 
	cname = cookies[i].getName(); 
	cvalue = cookies[i].getValue(); 
	if (myCookieName.equals(cname)){ %>
		<p><b> Cookie Name : <%=cname %> </b></p>
		<p><b> Cookie value : <%=cvalue %> </b></p> 
	<% break; 
	}
}

%>
</body>
</html>