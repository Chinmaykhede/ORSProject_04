<%@page import="in.co.rays.proj4.controller.MarksheetCtl"%>
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
		<h1>Add Marksheet</h1>

		<h3 style="color: green"><%=succ%></h3>
		<h3 style="color: red"><%=error%></h3>

		<form action="<%=ORSView.MARKSHEET_CTL%>" method="post">
			<table>
				<tr>
					<th>RollNo<font color="red">*</font></th>
					<td><input type="text" name="rollNo"
						placeholder="enter your rollNo" value=""></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage(request)%></td>
				</tr>
				<tr>
					<th>StudentId<font color="red">*</font></th>
					<td><input type="text" name="studentId"
						placeholder="enter your studentId" value=""></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage(request)%></td>
				</tr>
				<tr>
					<th>Name<font color="red">*</font></th>
					<td><input type="text" name="name"
						placeholder="enter your name" value=""></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage(request)%></td>
				</tr>
				<tr>
					<th>Physics<font color="red">*</font></th>
					<td><input type="number" name="physics"
						placeholder="enter your physicsNo" value=""></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage(request)%></td>
				</tr>
				<tr>
					<th>Chemistry<font color="red">*</font></th>
					<td><input type="number" name="chemistry"
						placeholder="enter your chemistryNo" value=""></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage(request)%></td>
				</tr>
				<tr>
					<th>Maths<font color="red">*</font></th>
					<td><input type="number" name="maths"
						placeholder="enter your mathsNo" value=""></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage(request)%></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="submit" name="operation"
						value="<%=MarksheetCtl.OP_SAVE%>"></td>
			</table>
		</form>
	</div>
	<%@ include file="Footer.jsp"%>
</body>
</html>