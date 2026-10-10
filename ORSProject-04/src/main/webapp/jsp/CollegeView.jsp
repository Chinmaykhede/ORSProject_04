<%@page import="in.co.rays.proj4.controller.CollegeCtl"%>
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
		<h1>Add College</h1>
		<h3 style="color: green"><%=succ%></h3>
		<h3 style="color: red"><%=error%></h3>
		<form action="<%=ORSView.COLLEGE_CTL%>" method="post">
			<table>
				<tr>
					<th>Name</th>
					<td><input type="text" name="name"
						placeholder="enter college name" value=""></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("name", request)%></td>
				</tr>
				<tr>
					<th>Address</th>
					<td><input type="text" name="name"
						placeholder="enter your address" value=""></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("address", request)%></td>
				</tr>

				<tr>
					<th>State</th>
					<td><input type="text" name="name"
						placeholder="enter your state" value=""></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("state", request)%></td>
				</tr>
				<tr>
					<th>City</th>
					<td><input type="text" name="name"
						placeholder="enter your city" value=""></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("city", request)%></td>
				</tr>
				<th>PhoneNo</th>
				<td><input type="text" name="name"
					placeholder="enter your phoneNo" value=""></td>
				<td style="color: red"><%=ServletUtility.getErrorMessage("phoneNo", request)%></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="submit" name="operation"
						value="<%=CollegeCtl.OP_SAVE%>"></td>
			</table>


		</form>
	</div>
</body>
</html>