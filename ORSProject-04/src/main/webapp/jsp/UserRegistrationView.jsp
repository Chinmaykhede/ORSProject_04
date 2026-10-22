<%@page import="in.co.rays.proj4.util.ServletUtility"%>
<%@page import="in.co.rays.proj4.controller.UserRegistrationCtl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>

<!-- Bootstrap 5.3.3 CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body class="bg-light">

	<%
	String succ = ServletUtility.getSuccessMessage(request);
	String error = ServletUtility.getErrorMessage(request);
	%>

	<%@ include file="Header.jsp"%>

	<div class="container mt-5 mb-5">

		<div class="row justify-content-center">
			<div class="col-md-9 col-lg-8">


				<div class="card shadow">

					<div class="card-header bg-primary text-white text-center">
						<h4 class="mb-0">Registration</h4>
					</div>

					<div class="card-body p-4">

						<h5 class="text-success text-center"><%=succ%></h5>
						<h5 class="text-danger text-center"><%=error%></h5>

						<form action="<%=ORSView.USER_REGISTRATION_CTL%>" method="post">

							<table class="table table-borderless align-middle">

								<tr>
									<th>FirstName<font color="red">*</font></th>
									<td><input type="text" name="firstName"
										class="form-control" value=""
										placeholder="enter your firstName"></td>
									<td style="color: red"><%=ServletUtility.getErrorMessage("firstName", request)%></td>
								</tr>

								<tr>
									<th>LastName<font color="red">*</font></th>
									<td><input type="text" name="lastName"
										class="form-control" value=""
										placeholder="enter your lastName"></td>
									<td style="color: red"><%=ServletUtility.getErrorMessage("lastName", request)%></td>
								</tr>

								<tr>
									<th>Login<font color="red">*</font></th>
									<td><input type="text" name="login" class="form-control"
										value="" placeholder="enter an emial"></td>
									<td style="color: red"><%=ServletUtility.getErrorMessage("login", request)%></td>
								</tr>

								<tr>
									<th>Password<font color="red">*</font></th>
									<td><input type="password" name="password"
										class="form-control" value="" placeholder="enter an password">
									</td>
									<td style="color: red"><%=ServletUtility.getErrorMessage("password", request)%></td>
								</tr>

								<tr>
									<th>ConfirmPassword<font color="red">*</font></th>
									<td><input type="password" name="confirmPassword"
										class="form-control" value=""
										placeholder="re-enter your password"></td>
									<td style="color: red"><%=ServletUtility.getErrorMessage("confirmPassword", request)%></td>
								</tr>

								<tr>
									<th>Gender<font color="red">*</font></th>
									<td><select name='gender' class="form-select">
											<option selected value=''>------------Select-------------</option>
											<option value='female'>Female</option>
											<option value='male'>Male</option>
											<option value='other'>Other</option>
									</select></td>
									<td style="color: red"><%=ServletUtility.getErrorMessage("gender", request)%></td>
								</tr>

								<tr>
									<th>DOB<font color="red">*</font></th>
									<td><input type="date" name="dob" class="form-control"
										value=""></td>
									<td style="color: red"><%=ServletUtility.getErrorMessage("dob", request)%></td>
								</tr>

								<tr>
									<th></th>
									<td class="pt-3"><input type="submit" name="operation"
										class="btn btn-primary w-100"
										value="<%=UserRegistrationCtl.OP_SIGN_UP%>"></td>
								</tr>

							</table>

						</form>

					</div>

					<div class="card-footer text-center text-muted">User
						Registration Form</div>

				</div>


			</div>
		</div>

	</div>

	<%@ include file="Footer.jsp"%>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>