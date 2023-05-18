
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New User</title>
<%@include file="component/CS_JS.jsp"%>

</head>
<body>
	<%@include file="component/navbar.jsp"%>

	

		
		 
		 
		
	
		
		<div class="row mt-5 ">

		<div class="container-fluid">
		 
		 <div class="col-md-6 offset-md-3">
		
	
		
		<div class="card">
		
		
		
		
		<%-- <img  class="img-fluid" alt="Responsive image"src="<c:url value="img/menu.png" />"> --%>
		
		<div class="card-body bg-primary px-5" >
		<form method="post" style="color:white" action="Register" >
                <h4 class="text-center my-3">Register here!!</h4>
				<div class="form-group " >
					<label for="name" class="form-label">User Name</label> 
					<input name= "username" type="text" class="form-control" placeholder="Enter name" aria-describedby="nameHelp">
				</div>
				
				<div class="form-group">
					<label for="email" class="form-label">User Email</label> 
					<input name= "useremail" type="email" class="form-control" placeholder="Enter email" aria-describedby="emailHelp">
				</div>
				
				
				<c:if test="${p_length_and_s_char_error==true}">
		<div class="alert alert-light alert-dismissible fade show" role="alert">
  <strong>Minimum password Size Must Be 8 </strong> 
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
</c:if>
				
				<div class="form-group ">
					<label for="password" class="form-label">User Password</label> 
					<input name="userpassword" type="password" class="form-control" placeholder="Enter password" aria-describedby="passwordHelp">
				</div>
				
				<c:if test="${password_error==true}">
		<div class="alert alert-light alert-dismissible fade show" role="alert">
  <strong>Invalid Password ! </strong> Please enter Same password in  Confirm password field
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
</c:if>
				
				<div class="form-group" >
					<label for="phone" class="form-label">User confirm password</label> 
					<input name="userconfirmpassword" type="password" class="form-control" placeholder="Enter confirm password " aria-describedby="passwordHelp">
				</div>
				
				
				
				
				
				
				
<a href="login" style="color:white" class="text-center d-block mb-2">Already have account Please Login</a>
				<div class="container text-center">				
				    <button class="btn btn-outline-light">Register</button>
				    <button class="btn btn-outline-warning">Reset</button>
				
				</div>

			</form>
		
		</div>
	
		</div>

</div>		
			
	
			</div>

</div>	

	


</body>
</html>