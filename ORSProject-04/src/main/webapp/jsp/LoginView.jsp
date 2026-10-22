<%@page import="in.co.rays.proj4.controller.LoginCtl"%>
<%@page import="in.co.rays.proj4.controller.LoginCtl"%>
<%@page import="in.co.rays.proj4.util.ServletUtility"%>
<%@page import="in.co.rays.proj4.controller.ORSView"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css">

<!-- Font Awesome Library -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<style>
.login-card {
	border: none;
	border-radius: 18px;
	overflow: hidden;
}

.login-header {
	background: linear-gradient(135deg, #0d6efd, #6610f2);
	padding: 25px;
}

.login-icon {
	font-size: 55px;
	color: #ffc107;
	margin-bottom: 10px;
}

.form-label i {
	margin-right: 8px;
}

.login-input-icon {
	color: #0d6efd;
	background-color: #eaf2ff;
}

.login-btn {
	background: linear-gradient(135deg, #0d6efd, #6610f2);
	border: none;
	padding: 11px;
	font-size: 17px;
	border-radius: 8px;
}

.login-btn:hover {
	background: linear-gradient(135deg, #6610f2, #0d6efd);
}

.message-icon {
	margin-right: 7px;
}
</style>

</head>
<body>

	<%
	String succ = ServletUtility.getSuccessMessage(request);
	String error = ServletUtility.getErrorMessage(request);
	%>

	<%@ include file="Header.jsp"%>

	<div class="container mt-5 mb-5">

		<div class="row justify-content-center">

			<div class="col-md-6 col-lg-5">

				<div class="card login-card shadow-lg">

					<div class="card-header login-header text-white text-center">

						<i class="fa-solid fa-circle-user login-icon"></i>

						<h2 class="mb-1">Welcome Back!</h2>

						<p class="mb-0">
							<i class="fa-solid fa-shield-halved me-2"></i>
							Please login to continue
						</p>

					</div>

					<div class="card-body p-4">

						<h5 class="text-success text-center">
							<% if (succ != null && !succ.isEmpty()) { %>
								<i class="fa-solid fa-circle-check message-icon"></i>
							<% } %>
							<%=succ%>
						</h5>

						<h5 class="text-danger text-center">
							<% if (error != null && !error.isEmpty()) { %>
								<i class="fa-solid fa-circle-exclamation message-icon"></i>
							<% } %>
							<%=error%>
						</h5>

						<form action="<%=ORSView.LOGIN_CTL%>" method="post">

							<div class="mb-3">

								<label class="form-label fw-semibold">
									<i class="fa-solid fa-user text-primary"></i>
									Login
								</label>

								<div class="input-group">

									<span class="input-group-text login-input-icon">
										<i class="fa-solid fa-envelope"></i>
									</span>

									<input type="text" class="form-control"
										name="login"
										placeholder="Enter your login"
										value="">

								</div>

								<div class="text-danger mt-1">
									<%=ServletUtility.getErrorMessage("login", request)%>
								</div>

							</div>

							<div class="mb-4">

								<label class="form-label fw-semibold">
									<i class="fa-solid fa-lock text-danger"></i>
									Password
								</label>

								<div class="input-group">

									<span class="input-group-text login-input-icon">
										<i class="fa-solid fa-key"></i>
									</span>

									<input type="password" class="form-control"
										name="password"
										placeholder="Enter your password"
										value="">

								</div>

								<div class="text-danger mt-1">
									<%=ServletUtility.getErrorMessage("password", request)%>
								</div>

							</div>

							<div class="d-grid">

								<button type="submit" class="btn btn-primary login-btn"
									name="operation" value="<%=LoginCtl.OP_SIGNIN%>">

									<i class="fa-solid fa-right-to-bracket me-2"></i>
									Sign In

								</button>

							</div>

						</form>

					</div>

					<div class="card-footer text-center bg-light py-3">

						<i class="fa-solid fa-lock text-success me-2"></i>
						<small class="text-muted">Your account is secure with us</small>

					</div>

				</div>

			</div>

		</div>

	</div>

	<%@include file="Footer.jsp"%>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>