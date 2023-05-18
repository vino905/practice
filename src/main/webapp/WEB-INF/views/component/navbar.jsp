<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <script type="<c:url value="resources/img/mobile.png" />">

</script> --%>

<nav class="navbar navbar-dark bg-primary" style="background: #00695C">


	<div class="container">

		<a class="navbar-brand" href="index.jsp" style="color: white">
			E-Commerce</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<!-- <img style="max-width: 30px; color:white;" src="img/house.svg" /> -->
				<li class="nav-item"><a class="nav-link active"
					aria-current="true" aria-current="page" href="data"
					style="color: white">Home</a></li>

				<!-- <img style="max-width: 30px; color:white;" src="img/list.svg"  class="mx-2"/> -->
				<li class="nav-item dropdown"></li>

			</ul>

			<ul class="navbar-nav ml-auto">

				<c:choose>
					<c:when test="${key==true ||keys==true ||key1==true || yes==true || no==true}">
						<!-- <img style="max-width: 30px; color:white;" src="img/login1.svg" /> -->

						<form action="logout" method="post">

							<button class="btn btn-outline-light ">logout</button>

							<br> <br>
						</form>

					</c:when>
					<c:otherwise>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="login" style="color: white">Login</a></li>

						<!--  <img style="max-width: 30px; color:white;" src="register.svg"  /> -->
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="index" style="color: white">Register</a>
						</li>

					</c:otherwise>
				</c:choose>
				<li>
					<form action="search" method="post">


						<div class="search-container">


							<input name="searchingvalue" type="search" class="form-control"
								id="search-input" placeholder="Search..." aria-label="Search"
								required> <br>
							<div class="justify-content-center">

								<button class="btn btn-outline-light my-2 my-sm-0 "
									type="submit">Search</button>
							</div>




						</div>

					</form>

				</li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#" style="color: white"></a></li>

				
		</div>
	</div>
</nav>
