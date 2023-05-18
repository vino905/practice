<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="component/CS_JS.jsp"%>


 <%@page isELIgnored="false" %>   
</head>
<body>
<%String name=(String)request.getAttribute("filename"); %>
    
	<%@include file="component/navbar.jsp"%>
				 
    

	<div class="row mt-5 ">

		<div class="container-fluid">

			<div class="col-md-6 offset-md-3">


				<div class="card-body px-5 bg-primary" >
				 
    <form action="uploadimage" method="post" enctype="multipart/form-data">
    <div class="container p-5">
    <h1>upload image</h1>
   select image <input type="file" name="profile" class="form-control-file" /><br>
    
    <button class="btn btn-outline-success">upload</button>
    
    </div>
    </form>
    
    <c:if test="${product_added_s==true}">
		<div class="alert alert-light alert-dismissible fade show" role="alert">
  <strong>Product Added Successfully</strong> 
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
</c:if>
    
					<form method="post" action="Addproduct">

						<h4 class="text-center my-3">Register here!!</h4>
						<!-- <div class="form-group ">
							<label for="name" class="form-label">photos</label> <input
								name="pphotos" type="text" class="form-control"
								placeholder="Enter name" aria-describedby="nameHelp">
						</div> -->
						
						

						<div class="form-group">
							<label for="email" class="form-label">Product descripton</label> <input
								name="producdesc" type="text" class="form-control"
								placeholder="Enter description" aria-describedby="emailHelp">
						</div>
						

						<div class="form-group">
							<label for="password" class="form-label">Product code</label> <input
								name="productcode" type="number" class="form-control"
								placeholder="Enter Product code" aria-describedby="passwordHelp">
						</div>

						

						<div class="form-group">
							<label for="UserType" class="form-label">productname</label> <input
								type="text" name="productname" class="form-control"
								placeholder="productname">
						</div>
						<div class="form-group">
							<label for="UserType" class="form-label">product Brand</label> <input
								type="text" name="productbrand" class="form-control"
								placeholder="productname">
						</div>
						
						
						<div class="form-group">
							<label for="UserType" class="form-label">serviceability</label> <input
								type="text" name="serviceability" class="form-control"
								placeholder="productname" multiple>
						</div>
						
						<c:if test="${price_error==true}">
		<div class="alert alert-light alert-dismissible fade show" role="alert">
  <strong>Please Enter a Correct Price </strong> 
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
</c:if>
						
						<div class="form-group">
							<label for="UserType" class="form-label">productprice</label> <input
								type="text" name="productprice" class="form-control"
								placeholder="productprice">
						</div>

						<div class="container text-center">
							<button class="btn btn-outline-light">Register Product</button>
							<button class="btn btn-outline-warning">Reset</button>

						</div>

					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>