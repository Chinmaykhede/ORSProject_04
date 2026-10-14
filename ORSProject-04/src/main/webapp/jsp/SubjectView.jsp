<%@page import="in.co.rays.proj4.util.DataUtility"%>
<%@page import="in.co.rays.proj4.util.ServletUtility"%>
<%@page import="in.co.rays.proj4.controller.SubjectCtl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

   <jsp:useBean id="bean" class="in.co.rays.proj4.bean.SubjectBean" scope="request"></jsp:useBean>
	<%
	String succ = ServletUtility.getSuccessMessage(request);
	String error = ServletUtility.getErrorMessage(request);
	%>
	<%@ include file="Header.jsp"%>
	<div align="center">
		<h1><%=bean!=null && bean.getId()>0 ? "Update Subject" : "Add Subject"%></h1>
		<h3 style="color: green"><%=succ%></h3>
		<h3 style="color: red"><%=error%></h3>
		<form action="<%=ORSView.SUBJECT_CTL%>" method="post">
			<table>
				<tr>
					<th>Name<font color="red">*</font></th>
					<td><input type="text" name="name"
						placeholder="enter college name" value="<%=DataUtility.getStringData(bean.getName())%>"></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("name", request)%></td>
				</tr>
				<tr>
					<th>Description<font color="red">*</font></th>
					<td><input type="text" name="description"
						placeholder="enter your address" value="<%=DataUtility.getStringData(bean.getDescription())%>"></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("description", request)%></td>
				</tr>

				<tr>
					<th>CourseId<font color="red">*</font></th>
					<td><input type="text" name="courseId"
						placeholder="enter your state" value="<%=DataUtility.getStringData(bean.getCourseId())%>"></td>
					<td style="color: red"><%=ServletUtility.getErrorMessage("courseId", request)%></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="submit" name="operation"
						value="<%=SubjectCtl.OP_SAVE%>"></td>
			</table>


		</form>
	</div>
</body>
</html>