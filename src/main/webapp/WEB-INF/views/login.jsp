<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>	    
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
		
		<%-- <c:if test="${login_success==true}">
		<div class="alert alert-light alert-dismissible fade show" role="alert">
  <strong>User Registered Successfully </strong> Please Login Here
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
</c:if> --%>
		<%-- <c:if test="${login_error==true}">
		<div class="alert alert-light alert-dismissible fade show" role="alert">
  <strong>Invalid UserName Or Password </strong> Please Enter Valid Credentials to login
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
</c:if> --%>
			<%-- <%@include file="component/message.jsp"%> --%>
		
		<div class="card-body px-5 bg-primary">
		<!-- <form method="post" style="color:white" action="loginprocess" >
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


			</form> -->
			
			
			
			<form method="post" style="color:white" action="loginprocess" >
  <div class="form-row">
    <div class="col-md-4 mb-3">
      <label for="validationServer01">First name</label>
      <input type="text" class="form-control is-valid" id="validationServer01" placeholder="First name" value="Mark" required>
      
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationServer02">Last name</label>
      <input type="text" class="form-control is-valid" id="validationServer02" placeholder="Last name" value="Otto" required>
      
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationServerUsername">Username</label>
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text" id="inputGroupPrepend3">@</span>
        </div>
        <input type="text" class="form-control is-invalid" id="validationServerUsername" placeholder="Username" aria-describedby="inputGroupPrepend3" required>
        <div class="invalid-feedback">
          Please choose a username.
        </div>
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationServer03">City</label>
      <input type="text" class="form-control is-invalid" id="validationServer03" placeholder="City" required>
      <div class="invalid-feedback">
        Please provide a valid city.
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationServer04">State</label>
      <input type="text" class="form-control is-invalid" id="validationServer04" placeholder="State" required>
      <div class="invalid-feedback">
        Please provide a valid state.
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationServer05">Zip</label>
      <input type="text" class="form-control is-invalid" id="validationServer05" placeholder="Zip" required>
      <div class="invalid-feedback">
        Please provide a valid zip.
      </div>
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input is-invalid" type="checkbox" value="" id="invalidCheck3" required>
      <label class="form-check-label" for="invalidCheck3">
        Agree to terms and conditions
      </label>
      <div class="invalid-feedback">
        You must agree before submitting.
      </div>
    </div>
  </div>
  <button class="btn btn-primary" type="submit">Submit form</button>
</form>
			
		</div>
		
		</div>
		</div>
		
		</div>

	</div>
  
			

</body>
</html>