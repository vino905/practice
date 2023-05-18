
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page isELIgnored="false" %>   
    
<!DOCTYPE html>
<html>
<head>
<%@include file="component/CS_JS.jsp" %>
</head>
<body>
<%@include file="component/navbar.jsp"%>


<%-- <h1>${result[0].producdesc}</h1> --%>
<%-- <img src="<c:url value=" --%>

<%-- <h1>${result[0].pphotos}</h1>

<p>    </p>
 <h3>${msg}</h3>
<h1>${result[0].producdesc}</h1>  --%>


<%-- <c:forEach var="product" items="${result}">
    <h1>${product.pphotos}</h1>
    <img alt="profile" src="<c:url value="/resources/img/${product.pphotos}"/>"/>
    <h3>${product.producdesc}</h3>
</c:forEach> --%>



<div class="row mt-3 mx-2">
<div class="col-md-12">
                
            <div class="row" mt-4>
            
         
               <div class="col-md-12">
               <div class="card-group">
<c:forEach var="product" items="${result}">
<div class="col-md-3">
	<div class="card" style="width: 18rem;">
  <img width=240px height=240px src="<c:url value="/resources/img/${product.pphotos}" />" class="card-img-top" alt="...">
  <div class="card-body">
    <h3 class="card-title">${product.productname}</h3>
    <h4 class="card-text">${product.productbrand}</h5>
    <p class="card-text">${product.producdesc}</p>
    <br>
    
  </div>
	

	  
</div>
</div>
     </c:forEach> 
   </div> 
	 </div> 				
</div>
</div>	
</div>	
	
</body>
</html>









