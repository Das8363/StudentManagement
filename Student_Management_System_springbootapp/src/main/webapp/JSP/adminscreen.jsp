<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN LOGIN</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<style>
.table-container {
	background-image:
		url("https://i.pinimg.com/736x/75/74/86/757486284b6264703711d55d4c902dd0.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
table{
width: 100%;
}
</style>
<script type="text/javascript">
	function remove() {

		document.fn.action = "/remove";
		document.action.submit();

	}
	function fees() {
		document.fn.action = "/fees";
		document.action.submit();
	}
	function batch() {
		document.fn.action = "/batch";
		document.action.submit();
	}
</script>


</head>
<body>
	<nav class="d-flex justify-content-between p-2 border border-primary">
		<img alt="image not found"
			src="https://payhip.com/cdn-cgi/image/format=auto/https://pe56d.s3.amazonaws.com/o_1i3ogo5gkrqt1fglput11dl169cc.jpg"
			width="100px" height="50px">
		<div class="pt-2">
			<a href="#enroll">
				<button class="btn btn-outline-success">Enroll Student</button>
			</a> <a href="#view">
				<button class="btn btn-outline-success">View Student</button>
			</a> <a href="/">
				<button class="btn btn-outline-success">Logout</button>
			</a>
		</div>
	</nav>

	<section class="vh-70%" style="background-color: #eee;">
		<div class="container h-100%">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-12 col-xl-11">
					<div class="card text-black" style="border-radius: 15px;">
						<div class="card-body p-md-5">
							<div class="row justify-content-center">
								<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

									<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-7">Student
										Enroll Form</p>

									<form class="mx-1 mx-md-4" action="enroll_student">

										<div class="d-flex flex-row align-items-center mb-2">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div data-mdb-input-init class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example1c">Student
													FullName:-</label> <input type="text" id="form3Example1c"
													class="form-control" /name="studentFullName"
													placeholder="Enter Student Full Name">
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-2">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div data-mdb-input-init class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example3c">Student
													Email:-</label> <input type="email" id="form3Example3c"
													class="form-control" name="studenEmail"
													placeholder="Enter Student Email" />
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-2">
											<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
											<div data-mdb-input-init class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example4c">Student
													Age:-</label> <input type="number" id="form3Example4c"
													class="form-control" name="studentAge"
													placeholder="Enter Student Age" />
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-2">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div data-mdb-input-init class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example4c">Student
													College Name:-</label> <input type="text" id="form3Example3c"
													class="form-control" name="studentCollegeName"
													placeholder="Enter Student College Name">
											</div>
										</div>


										<div class="d-flex flex-row align-items-center mb-2">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div data-mdb-input-init class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example4c">Student
													Course:-</label> <select name="studentCourse">
													<option value="#" disabled>Select course</option>
													<option value="Java">java</option>
													<option value="Python">Python</option>
													<option value="Testing">Testing</option>
												</select>
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-2">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div data-mdb-input-init class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example4c">Batch
													Number:-</label> <select name="batchNumber">
													<option value="#" disabled>Batch Number</option>
													<option value="REG-1">REG-1</option>
													<option value="REG-2">REG-2</option>
													<option value="REG-3">REG-3</option>
													<option value="REG-4">REG-4</option>
													<option value="REG-5">REG-5</option>
													<option value="REG-6">REG-6</option>
													<option value="REG-7">REG-7</option>
													<option value="REG-8">REG-8</option>
												</select>
											</div>
										</div>
										<div class="d-flex flex-row align-items-center mb-2">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div data-mdb-input-init class="form-outline flex-fill mb-0">

												<label>Batch Mode:-</label>
												<div class="form-check">
													<input class="form-check-input" type="radio"
														name="batchMode" id="exampleRadios1" value="Online">
													<label class="form-check-label" for="exampleRadios1">
														Online </label>
												</div>
												<div class="form-check">
													<input class="form-check-input" type="radio"
														name="batchMode" id="exampleRadios2" value="Offline">
													<label class="form-check-label" for="exampleRadios2">
														Offline</label>
												</div>
											</div>
										</div>
										<div class="d-flex flex-row align-items-center mb-2">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div data-mdb-input-init class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example4c">Student
													First installment Paid Fees</label> <input type="text"
													id="form3Example3c" class="form-control" name="feespaid"
													placeholder="Enter Amount Of Payable">
											</div>
										</div>

										<div class="form-check d-flex justify-content-center mb-3">
											<input class="form-check-input me-2" type="checkbox" value=""
												id="form2Example3c" /> <label class="form-check-label"
												for="form2Example3"> I agree all statements in <a
												href="#!">Terms of service</a>
											</label>
										</div>

										<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
											<button type="submit" data-mdb-button-init
												data-mdb-ripple-init class="btn btn-primary btn-lg">Submit</button>
										</div>
									</form>

								</div>
								<div
									class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-5">

									<img
										src="https://gla.ac.in/blog/wp-content/uploads/2023/06/Reasons-why-higher-education-needs-to-be-highlighted.jpg"
										class="img-fluid" alt="image not found">
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</section>
	<section class="table-container" id="view">
		<h1 class="text-center" style="color: orange">Student Info</h1>
		<form name="fn">
			<table class="table-bordered " style="color:white; ">
				<thead>
					<tr>
						<th>Id</th>
						<th>Full Name</th>
						<th>Email</th>
						<th>Age</th>
						<th>College Name</th>
						<th>Course</th>
						<th>Batch No</th>
						<th>Batch Mode</th>
						<th>Paid Fees</th>
						<th>select</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${data}" var="student">
						<tr>

							<td>${student.studentId}</td>
							<td>${student.studentFullName}</td>
							<td>${student.studenEmail}</td>
							<td>${student.studentAge}</td>
							<td>${student.studentCollegeName}</td>
							<td>${student.studentCourse}</td>
							<td>${student.batchNumber}</td>
							<td>${student.batchMode}</td>
							<td>${student.feespaid}</td>
							<td><input type="radio" name="studentId"
								value="${student.studentId}">
							<td>
								<div
									class="d-flex justify-content-between pt-2 border border=success">
									<button class="btn btn-warning" onClick="fees()">Fees</button>
									<button class="btn btn-primary" onClick="batch()">Batch</button>
									<button class="btn btn-danger" onClick="remove()">Remove</button>
								</div>
							</td>
						</tr>

					</c:forEach>
				</tbody>

			</table>
		</form>
	</section>


</body>
</html>
