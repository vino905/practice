<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login!!</title>
<%@include file="component/CS_JS.jsp" %>
</head>
<body>
<%@include file="component/navbar.jsp"%>
	<div class="row mt-5 ">

		<div class="container-fluid">
		 
		 <div class="col-md-6 offset-md-3">
		<div class="card">
		
			<%-- <%@include file="component/message.jsp"%> --%>
		
		<div class="card-body px-5 bg-primary">
<div class="alert alert-light alert-dismissible fade show" role="alert">
  <strong>Invalid Credintials!</strong> Please enter valid username and password
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
		<form method="post" style="color:white" action="loginprocess" >
	           <h3 class="text-center my-3">Login here!!</h3>
			
				<div class="form-group">
					<label for="email" class="form-label">User Email</label> 
					<input name= "email" type="email" class="form-control" placeholder="Enter email" aria-describedby="emailHelp">
				</div>
				
				<div class="form-group">
					<label for="password" class="form-label">User Password</label> 
					<input name="password" type="password" class="form-control" placeholder="Enter password" aria-describedby="passwordHelp"><br>
				</div>
				
				<a href="index" style="color:white" class="text-center d-block mb-2">if not registered click here</a>
				
			
				<div class="container text-center">				
				    <button class="btn btn-outline-light ">Submit</button>
				    <button class="btn btn-outline-warning ">Reset</button>
				
				</div>


			</form>
			
		</div>
		
		</div>
		</div>
		
		</div>

	</div>



</body>
</html>