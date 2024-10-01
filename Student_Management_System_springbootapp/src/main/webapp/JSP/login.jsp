<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER LOGIN</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">





<body>

	<!-- Section: Design Block -->
	<section class=" text-center text-lg-start">
		<style>
.rounded-t-5 {
	border-top-left-radius: 0.5rem;
	border-top-right-radius: 0.5rem;
}

@media ( min-width : 992px) {
	.rounded-tr-lg-0 {
		border-top-right-radius: 0;
	}
	.rounded-bl-lg-5 {
		border-bottom-left-radius: 0.5rem;
	}

		
}
</style>
		<div class="card mb-3">
			<div class="row g-0 d-flex align-items-center">
				<div class="col-lg-4 d-none d-lg-flex">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQej4XBfQ7_EvSBLq1KkwIlKGPe6lZ0PAiRDA&s"
						alt="image not found"
						class="w-100 rounded-t-5 rounded-tr-lg-0 rounded-bl-lg-5" />
				</div>
				<div class="col-lg-8">
					<div class="card-body py-5 px-md-5">

						<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-7">Admin
							Login Form</p>
						<form action="login" >
							<!-- Email input -->
							<div data-mdb-input-init class="form-outline mb-4">
								<label class="form-label" for="form2Example1">Username</label> <input
									type="text" id="form2Example1" class="form-control"
									name="username" placeholder="Enter Username" />

							</div>

							<!-- Password input -->
							<div data-mdb-input-init class="form-outline mb-4">
								<label class="form-label" for="form2Example2">Password</label> <input
									type="password" id="form2Example2" class="form-control"
									name="password" placeholder="Enter Password" />

							</div>

							<!-- 2 column grid layout for inline styling -->
							<div class="row mb-4">
								<div class="col d-flex justify-content-center">
									<!-- Checkbox -->
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
											id="form2Example31" checked /> <label
											class="form-check-label" for="form2Example31">
											Remember me </label>
									</div>
								</div>

								<div class="col">
									<!-- Simple link -->
									<a href="#!">Forgot password?</a>
								</div>
							</div>

							<!-- Submit button -->
							<input type="submit" class="btn btn-primary btn-block mb-4"
								value="Login">

						</form>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Section: Design Block -->
</body>
</html>