<%@page import="in.co.rays.proj4.bean.UserBean"%>
<%@page import="in.co.rays.proj4.controller.ORSView"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Header</title>

<!-- Bootstrap 5.3.8 CSS -->
<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css">
</head>
<body>

<%
UserBean user = (UserBean) session.getAttribute("user");
String role = (String) session.getAttribute("role");
boolean isLogin = user != null;
String welcomeMsg = "Hii, ";
%>

<nav class="navbar navbar-expand-lg"
    style="background-color: #e3f2fd;" data-bs-theme="light">

    <div class="container-fluid d-flex flex-wrap align-items-center">

        <%
        if (isLogin) {
        %>

        <h2 class="navbar-brand mb-0 me-3">
            <%=welcomeMsg + user.getFirstName() + "(" + role + ")"%>
        </h2>

        <!-- Role Dropdown -->
        <div class="dropdown me-2">
            <button class="btn btn-outline-primary dropdown-toggle"
                type="button" data-bs-toggle="dropdown" aria-expanded="false">
                Role
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="<%=ORSView.ROLE_CTL%>">Add Role</a></li>
                <li><a class="dropdown-item" href="<%=ORSView.ROLE_LIST_CTL%>">Role List</a></li>
            </ul>
        </div>

        <!-- User Dropdown -->
        <div class="dropdown me-2">
            <button class="btn btn-outline-primary dropdown-toggle"
                type="button" data-bs-toggle="dropdown" aria-expanded="false">
                User
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="<%=ORSView.USER_CTL%>">Add User</a></li>
                <li><a class="dropdown-item" href="<%=ORSView.USER_LIST_CTL%>">User List</a></li>
            </ul>
        </div>

        <!-- College Dropdown -->
        <div class="dropdown me-2">
            <button class="btn btn-outline-primary dropdown-toggle"
                type="button" data-bs-toggle="dropdown" aria-expanded="false">
                College
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="<%=ORSView.COLLEGE_CTL%>">Add College</a></li>
                <li><a class="dropdown-item" href="<%=ORSView.COLLEGE_LIST_CTL%>">College List</a></li>
            </ul>
        </div>

        <!-- Course Dropdown -->
        <div class="dropdown me-2">
            <button class="btn btn-outline-primary dropdown-toggle"
                type="button" data-bs-toggle="dropdown" aria-expanded="false">
                Course
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="<%=ORSView.COURSE_CTL%>">Add Course</a></li>
                <li><a class="dropdown-item" href="<%=ORSView.COURSE_LIST_CTL%>">Course List</a></li>
            </ul>
        </div>

        <!-- Faculty Dropdown -->
        <div class="dropdown me-2">
            <button class="btn btn-outline-primary dropdown-toggle"
                type="button" data-bs-toggle="dropdown" aria-expanded="false">
                Faculty
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="<%=ORSView.FACULTY_CTL%>">Add Faculty</a></li>
                <li><a class="dropdown-item" href="<%=ORSView.FACULTY_LIST_CTL%>">Faculty List</a></li>
            </ul>
        </div>

        <!-- Student Dropdown -->
        <div class="dropdown me-2">
            <button class="btn btn-outline-primary dropdown-toggle"
                type="button" data-bs-toggle="dropdown" aria-expanded="false">
                Student
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="<%=ORSView.STUDENT_CTL%>">Add Student</a></li>
                <li><a class="dropdown-item" href="<%=ORSView.STUDENT_LIST_CTL%>">Student List</a></li>
            </ul>
        </div>

        <!-- Subject Dropdown -->
        <div class="dropdown me-2">
            <button class="btn btn-outline-primary dropdown-toggle"
                type="button" data-bs-toggle="dropdown" aria-expanded="false">
                Subject
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="<%=ORSView.SUBJECT_CTL%>">Add Subject</a></li>
                <li><a class="dropdown-item" href="<%=ORSView.SUBJECT_LIST_CTL%>">Subject List</a></li>
            </ul>
        </div>

        <!-- Account Dropdown -->
        <div class="dropdown me-2">
            <button class="btn btn-outline-primary dropdown-toggle"
                type="button" data-bs-toggle="dropdown" aria-expanded="false">
                Account
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item"
                    href="<%=ORSView.CHANGE_PASSWORD_CTL%>">ChangePassword</a></li>
                <li><a class="dropdown-item"
                    href="<%=ORSView.LOGIN_CTL + "?operation=logout"%>">Logout</a></li>
            </ul>
        </div>

        <%
        } else {
        %>

        <!-- Guest Links -->
        <h2 class="navbar-brand mb-0 me-3">Hii, Guest</h2>

        <div class="d-flex align-items-center gap-2">
            <a class="btn btn-secondary" href="<%=ORSView.LOGIN_CTL%>">Login</a>
            <a class="btn btn-success"
                href="<%=ORSView.USER_REGISTRATION_CTL%>">SignUp</a>
        </div>

        <%
        }
        %>

        <!-- Welcome Button -->
        <div class="ms-auto">
            <a class="btn btn-outline-dark"
                href="<%=ORSView.WELCOME_CTL%>">Welcome</a>
        </div>

    </div>
</nav>

<!-- Bootstrap 5.3.8 JavaScript Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>