<%@page import="in.co.rays.proj4.controller.StudentCtl"%>
<%@page import="in.co.rays.proj4.util.ServletUtility"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String succ = ServletUtility.getSuccessMessage(request);
	String error = ServletUtility.getErrorMessage(request);
	%>
	<%@ include file="Header.jsp"%>

	<div align="center">
		<h1>Add Student</h1>
		<h3 style="color: green"><%=succ%></h3>
		<h3 style="color: red"><%=error%></h3>
		<form action="<%=ORSView.STUDENT_CTL%>" method="post">
			<table>
				<tr>
					<th>CollegeId<font color="red">*</font></th>
					<td><input type="text" name="collegeId"
						placeholder="enter your collegeId" value=""></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("collegeId", request)%></td>
				</tr>

				<tr>
					<th>CollegeName<font color="red">*</font></th>
					<td><input type="text" name="collegeName"
						placeholder="enter your collegeName" value=""></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("collegeName", request)%></td>
				</tr>

				<tr>
					<th>FirstName<font color="red">*</font></th>
					<td><input type="text" name="firstName"
						placeholder="enter your firstName" value=""></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("firstName", request)%></td>
				</tr>
				<tr>
					<th>LastName<font color="red">*</font></th>
					<td><input type="text" name="lastName"
						placeholder="enter your lastName" value=""></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("lastName", request)%></td>
				</tr>
				<tr>
					<th>DateOfBirth<font color="red">*</font></th>
					<td><input type="Date" name="dob"
						placeholder="enter your dateOfBirth" value=""></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("dateOfBirth", request)%></td>
				</tr>
				<tr>
					<th>MobileNo<font color="red">*</font></th>
					<td><input type="number" name="mobileNo"
						placeholder="enter your mobileNo" value=""></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("mobileNo", request)%></td>
				</tr>
				<tr>
					<th>Email<font color="red">*</font></th>
					<td><input type="email" name="email"
						placeholder="enter your email" value=""></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("email", request)%></td>
				</tr>

				<tr>
					<th></th>
					<td><input type="submit" name="operation"
						value="<%=StudentCtl.OP_SAVE%>"></td>
				</tr>
			</table>
		</form>
	</div>
	<%@include file="Footer.jsp"%>
</body>
</html>