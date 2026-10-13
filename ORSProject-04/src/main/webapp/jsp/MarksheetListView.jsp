<%@page import="java.util.List"%>
<%@page import="in.co.rays.proj4.bean.MarksheetBean"%>
<%@page import="java.util.Iterator"%>
<%@page import="in.co.rays.proj4.util.ServletUtility"%>
<%@page import="in.co.rays.proj4.controller.BaseCtl"%>
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
	List<MarksheetBean> list = ServletUtility.getList(request);
	List<MarksheetBean> nextList = (List<MarksheetBean>) request.getAttribute("nextList");
	int pageNo = ServletUtility.getPageNo(request);
	int pageSize = ServletUtility.getPageSize(request);
	int index = (pageNo - 1) * pageSize + 1;
	Iterator<MarksheetBean> it = list.iterator();
	%>
	<%@ include file="Header.jsp"%>
	<div align="center">
		<h1>User List</h1>

		<form action="<%=ORSView.MARKSHEET_LIST_CTL%>" method="post">
			<table border="1px" width="100%">
				<tr style="background: skyblue">
					<th>S No.</th>
					<th>RollNo</th>
					<th>StudentId</th>
					<th>Name</th>
					<th>Physics</th>
					<th>Chemistry</th>
					<th>Maths</th>
				</tr>

				<%
				while (it.hasNext()) {
					MarksheetBean bean = it.next();
				%>
				<tr align="center">
					<td><%=index++%></td>
					<td><%=bean.getRollNo()%></td>
					<td><%=bean.getStudentId()%></td>
					<td><%=bean.getName()%></td>
					<td><%=bean.getPhysics()%></td>
					<td><%=bean.getChemistry()%></td>
					<td><%=bean.getMaths()%></td>
				</tr>
				<%
				}
				%>
				<%-- <%@ include file="ListFooter.jsp"%> --%>
				<table>
					<table width="100%">
						<input type="hidden" name="pageNo" value="<%=pageNo%>">
						<tr>
							<td><input type="submit" name="operation"
								<%=pageNo == 1 ? "disabled" : ""%>
								value="<%=BaseCtl.OP_PREVIOUS%>"></td>

							<td align="center"><input type="submit" name="operation"
								value="<%=BaseCtl.OP_DELETE%>"></td>

							<td align="right"><input type="submit" name="operation"
								<%=nextList.size() == 0 ? "disabled" : ""%>
								value="<%=BaseCtl.OP_NEXT%>"></td>

						</tr>
					</table>
				</table>
		</form>
	</div>
	<%@ include file="Footer.jsp"%>
</body>
</html>