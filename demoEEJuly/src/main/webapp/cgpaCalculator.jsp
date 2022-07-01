<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CGPA calculator</title>
<%! double CalcPercentage(double cgpa){
		double per;	
		per = (cgpa-0.75)*10;
		return per;
}
double CalcPercentage(ArrayList<Double> sgpa, ArrayList<Integer> credits){
	double per;
		double cgpa;
		double n=0.0,d=0.0;
		for(int i = 0; i<sgpa.size(); i++){
			n+=sgpa.get(i)*credits.get(i);
			d+=credits.get(i);
		}
		cgpa = n/d;
		per = (cgpa-0.75)*10;
	return per;
}

%>
</head>
<body>
<p>
<%! double cgpa=8.2; %>
CGPA <%=cgpa %> is equivalent to <%=CalcPercentage(cgpa) %> %
<%! ArrayList<Double> sgpa = new ArrayList<Double>();
	ArrayList<Integer> credits = new ArrayList<Integer>();
	%>
<% Collections.addAll(sgpa,7.2,8.2,8.5);
   Collections.addAll(credits, 24,28,20);
   %>  
 </p>
 
 <p>  
SGPA <%=sgpa.toString() %> and credits <%=credits.toString() %> is equivalent to  <%=CalcPercentage(sgpa, credits) %>
%</p>  

</body>
</html>