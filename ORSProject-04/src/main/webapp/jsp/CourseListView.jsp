<%@page import="in.co.rays.proj4.controller.BaseCtl"%>
<%@page import="java.util.Iterator"%>
<%@page import="in.co.rays.proj4.bean.CourseBean"%>
<%@page import="java.util.List"%>
<%@page import="in.co.rays.proj4.util.ServletUtility"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course List</title>

<!-- Bootstrap 5.3.3 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet">

</head>
<body class="bg-light">

    <%
    String succ = ServletUtility.getSuccessMessage(request);
    String error = ServletUtility.getErrorMessage(request);
    List<CourseBean> list = ServletUtility.getList(request);
    List<CourseBean> nextList = (List<CourseBean>) request.getAttribute("nextList");
    int pageNo = ServletUtility.getPageNo(request);
    int pageSize = ServletUtility.getPageSize(request);
    int index = (pageNo - 1) * pageSize + 1;
    Iterator<CourseBean> it = list.iterator();
    %>

    <%@ include file="Header.jsp"%>

    <div class="container-fluid mt-4 mb-5">

        <div class="card shadow">

            <div class="card-header bg-primary text-white text-center">
                <h2 class="mb-0">Course List</h2>
            </div>

            <div class="card-body">

                <h5 class="text-success text-center"><%=succ%></h5>
                <h5 class="text-danger text-center"><%=error%></h5>

                <form action="<%=ORSView.COURSE_LIST_CTL%>" method="post">

                    <div class="table-responsive">

                        <table class="table table-bordered border-primary table-hover table-striped align-middle text-center">

                            <thead class="table-primary">
                                <tr>
                                    <th>
                                        <input type="checkbox"
                                            class="form-check-input"
                                            onclick="document.querySelectorAll('input[name=ids]').forEach(c=>c.checked=this.checked)">
                                        Select All
                                    </th>
                                    <th>S No.</th>
                                    <th>Id</th>
                                    <th>Name</th>
                                    <th>Description</th>
                                    <th>Duration</th>
                                    <th>Edit</th>
                                </tr>
                            </thead>

                            <tbody>
                                <%
                                while (it.hasNext()) {
                                    CourseBean bean = it.next();
                                %>
                                <tr>
                                    <td>
                                        <input type="checkbox" class="form-check-input"
                                            name="ids" value="<%=bean.getId()%>">
                                    </td>
                                    <td><%=index++%></td>
                                    <td><%=bean.getId()%></td>
                                    <td><%=bean.getName()%></td>
                                    <td><%=bean.getDescription()%></td>
                                    <td><%=bean.getDuration()%></td>
                                    <td>
                                        <a class="btn btn-sm btn-warning"
                                            href="<%=ORSView.COURSE_CTL + "?id=" + bean.getId()%>">
                                            Edit
                                        </a>
                                    </td>
                                </tr>
                                <%
                                }
                                %>
                            </tbody>

                        </table>

                    </div>

                    <%-- <%@ include file="ListFooter.jsp"%> --%>

                    <input type="hidden" name="pageNo" value="<%=pageNo%>">

                    <div class="d-flex justify-content-between align-items-center mt-3">

                        <input type="submit" name="operation"
                            class="btn btn-secondary"
                            <%=pageNo == 1 ? "disabled" : ""%>
                            value="<%=BaseCtl.OP_PREVIOUS%>">

                        <input type="submit" name="operation"
                            class="btn btn-danger"
                            value="<%=BaseCtl.OP_DELETE%>">

                        <input type="submit" name="operation"
                            class="btn btn-primary"
                            <%=nextList.size() == 0 ? "disabled" : ""%>
                            value="<%=BaseCtl.OP_NEXT%>">

                    </div>

                </form>

            </div>

            <div class="card-footer text-center text-muted">
                Course Management System
            </div>

        </div>

    </div>

    <%@ include file="Footer.jsp"%>

   
</body>
</html>
