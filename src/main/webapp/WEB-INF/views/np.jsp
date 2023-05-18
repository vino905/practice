<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<%@include file="component/CS_JS.jsp"%>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	
		<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Product is not available at Entered Pincode  </strong>
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
	
	<c:if test="${no==true}">
		<form action="filterproduct" method="post">
			<div class="form-group col-md-4">
				<label for="inputState"></label>select price range <select
					id="inputState" class="form-control" name="filtering">
					<option selected>above</option>
					<option label="Below 10000">10000</option>

					<option label="Above 20000">20000</option>
				</select>
				<button class="btn btn-outline-success">submit</button>
			</div>


		</form>
	</c:if>
	<div class="row mt-3 mx-2">
		<div class="col-md-12">

			<div class="row" mt-4>


				<div class="col-md-12">
					<div class="card-group">
						<c:forEach var="product" items="${result}">
							<div class="col-md-3">
								<div class="card" style="width: 18rem;">
									<img width=240px height=240px
										src="<c:url value="/resources/img/${product.pphotos}" />"
										class="card-img-top" alt="...">
									<div class="card-body">
										<h3 class="card-title">${product.productname}</h3>
										<h4 class="card-text">${product.productbrand}</h5>
											<p class="card-text">${product.producdesc}</p>
											<br>
											<c:if test="${no==true}">
												<h6 class="card-text">Price &#x20b9;
													${product.productprice}</h6>
											</c:if>
									</div>



									<form action="pincodes" method="post">
										<div class="form-group">


											<input name="pincode" type="text" class="form-control"
												placeholder="Enter pin code" aria-describedby="emailHelp">


										</div>
										<button name="pcode" class="btn btn-outline-primary ">Check</button>


									</form>
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


