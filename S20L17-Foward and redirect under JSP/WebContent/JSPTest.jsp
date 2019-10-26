<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Test</title>
</head>
<body>
It's from the Original Page
<%--
<jsp:forward page="JSPforward.jsp"></jsp:forward>
 --%>
 
 <% 
 //	response.sendRedirect("JSPredirect.jsp");

 // 	request.getRequestDispatcher("JSPforward.jsp").forward(request, response);
	    request.getRequestDispatcher("JSPforward.jsp").include(request,response);		 
 %><%-- RECEIVES REQUESTS FROM THE CLIENT AND SENDS THEM TO A RESOURCE (SUCH AS SERVLET/HTML FILE, JSP FILE..)
 
 		RequestDispatcher has two methods --> forward()-> forward request from a servlet||jps to another resource
 										  --> include()-> include the content of a resource in the response!
 										  
 										  
 								The main difference between them is that forward() method will close the output stream		  
 								after invocation and include() method won't.
 								
 								IN THE END INCLUDE TAKES THE CONTENT OF ANOTHER RESOURCE AND INCLUDES IT IN THE SERVLET
 								AND THE FORWARD WILL SEND THE REQUEST TO ANOTHER RESOURCE!!!		  
--%>
</body>
</html>