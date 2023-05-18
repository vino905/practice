<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>       
<!DOCTYPE html>
<html>
<head>
<%@include file="component/CS_JS.jsp" %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="component/navbar.jsp"%>

<h1>User Edded successfull</h1>
<h1>${name}</h1>
	<c:choose>
        	   <c:when test="${key==true}">
        	 
        
      </c:when >
      <c:otherwise>
        	   
      
      </c:otherwise>
      </c:choose>
</body>
</html>