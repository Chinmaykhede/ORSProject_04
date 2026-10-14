<%@page import="in.co.rays.proj4.util.DataUtility"%>
<%@page import="in.co.rays.proj4.controller.FacultyCtl"%>
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
   <jsp:useBean id="bean" class="in.co.rays.proj4.bean.FacultyBean" scope="request"></jsp:useBean>

	<%
	String succ = ServletUtility.getSuccessMessage(request);
	String error = ServletUtility.getErrorMessage(request);
	%>
	<%@ include file="Header.jsp"%>
	<div align="center">
				<h1><%=bean!=null && bean.getId()>0 ? "Update Faculty" : "Add Faculty"%></h1>

		<h3 style="color: green"><%=succ%></h3>
		<h3 style="color: red"><%=error%></h3>
		<form action="<%=ORSView.FACULTY_CTL%>" method="post">
			<table>
				<tr>
					<th>CollegeId<font color="red">*</font></th>
					<td><input type="text" name="collegeId"
						placeholder="enter your collegeId" value="<%=DataUtility.getStringData(bean.getCollegeId())%>"></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("collegeId", request)%></td>
				</tr>
				<tr>
					<th>CollegeName<font color="red">*</font></th>
					<td><input type="text" name="collegeName"
						placeholder="enter your collegeName" value="<%=DataUtility.getStringData(bean.getCollegeName())%>"></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("collegeName", request)%></td>
				</tr>
				<tr>
					<th>FirstName<font color="red">*</font></th>
					<td><input type="text" name="firstname"
						placeholder="enter your firstName" value="<%=DataUtility.getStringData(bean.getFirstName())%>"></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("firstName", request)%></td>
				</tr>
				<tr>
					<th>LastName<font color="red">*</font></th>
					<td><input type="text" name="lastName"
						placeholder="enter your lastName" value="<%=DataUtility.getStringData(bean.getLastName())%>"></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("lastName", request)%></td>
				</tr>
				<tr>
					<th>Email<font color="red">*</font></th>
					<td><input type="email" name="email"
						placeholder="enter your email" value="<%=DataUtility.getStringData(bean.getEmail())%>"></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("email", request)%></td>
				</tr>
				<tr>
					<th>MobileNo<font color="red">*</font></th>
					<td><input type="text" name="mobileNo"
						placeholder="enter your mobileNo" value="<%=DataUtility.getStringData(bean.getMobileNo())%>"></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("mobileNo", request)%></td>
				</tr>
				<tr>
					<th>Address<font color="red">*</font></th>
					<td><input type="text" name="address"
						placeholder="enter your address" value="<%=DataUtility.getStringData(bean.getAddress())%>"></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("address", request)%></td>
				</tr>
				<tr>
					<th>Gender<font color="red">*</font></th>
					<td><select name='gender'>
							<option selected value=''>------------Select-------------</option>
							<option value='female'>Female</option>
							<option value='male'>Male</option>
							<option value='other'>Other</option>
					</select></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("gender", request)%></td>
				</tr>
				<tr>
					<th>DateOfBirth<font color="red">*</font></th>
					<td><input type="date" name="dob"
						placeholder="enter your dateOfBirth" value="<%=DataUtility.getStringData(bean.getDateOfBirth())%>"></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("dateOfBirth", request)%></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="submit" name="operation"
						value="<%=FacultyCtl.OP_SAVE%>"></td>
			</table>
</body>
</html>