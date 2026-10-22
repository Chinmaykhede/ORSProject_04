<%@page import="in.co.rays.proj4.controller.UserCtl"%>
<%@page import="in.co.rays.proj4.controller.BaseCtl"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="in.co.rays.proj4.util.ServletUtility"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>User List</title>

<!-- Bootstrap 5.3.3 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet">

</head>
<body class="bg-light">

    <%
    String succ = ServletUtility.getSuccessMessage(request);
    String error = ServletUtility.getErrorMessage(request);
    List<UserBean> list = ServletUtility.getList(request);
    List<UserBean> nextList = (List<UserBean>) request.getAttribute("nextList");
    int pageNo = ServletUtility.getPageNo(request);
    int pageSize = ServletUtility.getPageSize(request);
    int index = (pageNo - 1) * pageSize + 1;
    Iterator<UserBean> it = list.iterator();
    %>

    <%@include file="Header.jsp"%>

    <div class="container-fluid mt-4 mb-5">

        <div class="card shadow">

            <div class="card-header bg-primary text-white text-center">
                <h2 class="mb-0">User List</h2>
            </div>

            <div class="card-body">

                <h5 class="text-success text-center"><%=succ%></h5>
                <h5 class="text-danger text-center"><%=error%></h5>

                <form action="<%=ORSView.USER_LIST_CTL%>" method="post">

                    <!-- Search Section: Bootstrap styling not applied to inputs -->
                    <div class="table-responsive mb-4">
                        <table>
                            <tr>
                                <th>First Name</th>
                                <td>
                                    <input type="text" name="firstName"
                                        value="" placeholder="search by first name">
                                </td>

                                <th>Last Name</th>
                                <td>
                                    <input type="text" name="lastName"
                                        value="" placeholder="search by last name">
                                </td>

                                <th>Login</th>
                                <td>
                                    <input type="email" name="login"
                                        value="" placeholder="search by login">
                                </td>

                                <th>Dob</th>
                                <td>
                                    <input type="date" name="dob" value="">
                                    <input type="submit" name="operation"
                                        value="<%=UserCtl.OP_SEARCH%>">
                                </td>
                            </tr>
                        </table>
                    </div>

                    <!-- User List Table -->
                    <div class="table-responsive">

                        <table class="table table-bordered border-primary table-hover table-striped align-middle text-center">

                            <thead class="table-primary">
                                <tr>
                                    <th>
                                        <input type="checkbox"
                                            onclick="document.querySelectorAll('input[name=ids]').forEach(c=>c.checked=this.checked)">
                                        Select All
                                    </th>
                                    <th>S No.</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Login</th>
                                    <th>Gender</th>
                                    <th>Dob</th>
                                    <th>Edit</th>
                                </tr>
                            </thead>

                            <tbody>
                                <%
                                while (it.hasNext()) {
                                    UserBean bean = it.next();
                                %>
                                <tr>
                                    <td>
                                        <input type="checkbox" class="form-check-input"
                                            name="ids" value="<%=bean.getId()%>">
                                    </td>
                                    <td><%=index++%></td>
                                    <td><%=bean.getFirstName()%></td>
                                    <td><%=bean.getLastName()%></td>
                                    <td><%=bean.getLogin()%></td>
                                    <td><%=bean.getGender()%></td>
                                    <td><%=bean.getDob()%></td>
                                    <td>
                                        <a class="btn btn-sm btn-warning"
                                            href="<%=ORSView.USER_CTL + "?id=" + bean.getId()%>">
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

                    <!-- Pagination and Delete Buttons -->
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
                            <%=nextList == null || nextList.size() == 0 ? "disabled" : ""%>
                            value="<%=BaseCtl.OP_NEXT%>">

                    </div>

                </form>

            </div>

            <div class="card-footer text-center text-muted">
                User Management System
            </div>

        </div>

    </div>

    <%@include file="Footer.jsp"%>

</body>
</html>