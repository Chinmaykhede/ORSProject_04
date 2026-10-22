<%@page import="in.co.rays.proj4.controller.UserCtl"%>
<%@page import="in.co.rays.proj4.util.ServletUtility"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Bootstrap 5.3 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
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
            <div class="col-md-8 col-lg-7">

                <!-- Bootstrap Card -->
                <div class="card shadow">

                    <div class="card-header bg-primary text-white text-center">
                        <h4 class="mb-0">Add User</h4>
                    </div>

                    <div class="card-body p-4">

                        <h5 class="text-success text-center"><%=succ%></h5>
                        <h5 class="text-danger text-center"><%=error%></h5>

                        <form action="<%=ORSView.USER_CTL%>" method="post">

                            <table class="table table-borderless align-middle">

                                <tr>
                                    <th>First Name<font color="red">*</font></th>
                                    <td>
                                        <input type="text" name="firstName"
                                            class="form-control"
                                            placeholder="enter your first name" value="">
                                    </td>
                                    <td style="color: red"><%=ServletUtility.getErrorMessage(request)%></td>
                                </tr>

                                <tr>
                                    <th>Last Name<font color="red">*</font></th>
                                    <td>
                                        <input type="text" name="lastName"
                                            class="form-control"
                                            placeholder="enter your last name" value="">
                                    </td>
                                    <td style="color: red"><%=ServletUtility.getErrorMessage(request)%></td>
                                </tr>

                                <tr>
                                    <th>Login<font color="red">*</font></th>
                                    <td>
                                        <input type="email" name="login"
                                            class="form-control"
                                            placeholder="enter your email" value="">
                                    </td>
                                    <td style="color: red"><%=ServletUtility.getErrorMessage(request)%></td>
                                </tr>

                                <tr>
                                    <th>Password<font color="red">*</font></th>
                                    <td>
                                        <input type="password" name="password"
                                            class="form-control"
                                            placeholder="enter your password" value="">
                                    </td>
                                    <td style="color: red"><%=ServletUtility.getErrorMessage(request)%></td>
                                </tr>

                                <tr>
                                    <th>Gender<font color="red">*</font></th>
                                    <td>
                                        <select name="gender" class="form-select">
                                            <option value="">-- Select Gender --</option>
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                            <option value="Other">Other</option>
                                        </select>
                                    </td>
                                </tr>

                                <tr>
                                    <th>DOB<font color="red">*</font></th>
                                    <td>
                                        <input type="date" name="dob"
                                            class="form-control" value="">
                                    </td>
                                    <td style="color: red"><%=ServletUtility.getErrorMessage(request)%></td>
                                </tr>

                                <tr>
                                    <th></th>
                                    <td class="pt-3">
                                        <input type="submit" name="operation"
                                            class="btn btn-primary w-100"
                                            value="<%=UserCtl.OP_SAVE%>">
                                    </td>
                                </tr>

                            </table>

                        </form>

                    </div>

                    <div class="card-footer text-center text-muted">
                        User Registration Form
                    </div>

                </div>
                <!-- Card End -->

            </div>
        </div>

    </div>

    <%@ include file="Footer.jsp"%>

    <!-- Bootstrap 5.3 JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
