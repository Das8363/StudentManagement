<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Batch Shifting</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<body>
	<div class="d-flex justify-content-center align-center">
		<div class="w-50 align-middle border border-info border-3 mt-2"
			style="height: 570px">
			<h6 class="p-3 text-primary">
				<u>Batch Changing Details:-</u>
			</h6>

			<div class="border border-secondary m-2 p-2">
				<table class="table table-hover border border-secondary">
					<tbody>
						<tr class="table-primary fs-6">
							<th>Student Id</th>
							<td>${stu.studentId}</td>

						</tr>
						<tr class="table-primary fs-6">
							<th>StudentFullName</th>
							<td>${stu.studentFullName}</td>
						</tr>
						<tr class="table-primary fs-6">
							<th>StudentEmail</th>
							<td>${stu.studenEmail}</td>
						</tr>
						<tr class="table-primary fs-6">
							<th>StudentAge</th>
							<td>${stu.studentAge}</td>
						</tr>
						<tr class="table-primary fs-6">
							<th>StudentCollageName</th>
							<td>${stu.studentCollegeName}</td>
						</tr>
						<tr class="table-primary fs-6">
							<th>StudentCourse</th>
							<td>${stu.studentCourse}</td>
						</tr>
						<tr class="table-primary fs-6">
							<th>BatchMode</th>
							<td>${stu.batchMode}</td>
						</tr>
						<tr class="table-primary fs-6">
							<th>BatchNumber</th>
							<td>${stu.batchNumber}</td>
						<tr class="table-primary fs-6">
							<th>FeesPaid</th>
							<td>${stu.feespaid}</td>
						</tr>

					</tbody>
				</table>

				<form action="changebatch">
					<input type="text" name="studentId" value="${stu.studentId }"
						hidden="true">
					<div class="bg-dark p-2 d-flex justify-content-between">
						<label for="changeBatch" class="text-info"><b>Select
								New <br>Batch
						</b> </label> <select name="batchNumber">
							<option value="#" disabled>Batch Number</option>
							<option value="REG-1">REG-1</option>
							<option value="REG-2">REG-2</option>
							<option value="REG-3">REG-3</option>
							<option value="REG-4">REG-4</option>
							<option value="REG-5">REG-5</option>
							<option value="REG-6">REG-6</option>
							<option value="REG-7">REG-7</option>
							<option value="REG-8">REG-8</option>
							<option value="REG-9">REG-9</option>
							<option value="REG-10">REG-10</option>
							<option value="REG-11">REG-11</option>
						</select>

					</div>
					<div class="d-flex justify-content-center pt-2">
						<button class="btn btn-success btn-sm">Batch Shifting</button>

					</div>

				</form>




			</div>

		</div>
	</div>


</body>
</html>