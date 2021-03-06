<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: JOHN
  Date: 4/17/2021
  Time: 6:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    
    
	

    <title>Revature</title>
    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

</head>
<!-- NAVBAR
================================================== -->
<body>
<div class="navbar-wrapper">
    <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                            aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!--<a href="<%=request.getContextPath()%>/home.jsp">Revature</a>-->
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                    	<li class="active"><a href="<%=request.getContextPath()%>/home.jsp">Javatures</a></li>
                    	<c:if test="${EMPLOYEE_INFO.employeeRole == 'admin'}">
                        	<li class="active"><a href="<%=request.getContextPath()%>/EmployeeControllerServlet">Employees</a></li>
                        </c:if>
                        <c:if test="${IS_DISPLAY}">
                        	<li>
                        		<a 
                        			href="<%=request.getContextPath()%>/ReimbursementControllerServlet?command=LIST_REIMBURSEMENT"
                        		>
                        			Reimbursement Request
                        		</a></li>
                        </c:if>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true" aria-expanded="false">Cirriculum <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Java</a></li>
                                <li><a href="#">React</a></li>
                                <li><a href="#">JavaScript</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Nav header</li>
                                <li><a href="#">Separated link</a></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>
                        <c:if test="${IS_DISPLAY == false || IS_DISPLAY == null}">
                        	<li class="active"><a href="<%=request.getContextPath()%>/registration-form.jsp">Register</a></li>
                        </c:if>
                        <c:if test="${IS_DISPLAY == false || IS_DISPLAY == null}">
                        	<li><a href="<%=request.getContextPath()%>/login.jsp">Login</a></li>
                        </c:if>
                        <c:if test="${IS_DISPLAY == true}">
                        	<li><a href="<%=request.getContextPath()%>/LogoutControllerServlet">Logout</a></li>
                        </c:if>
                        <c:if test="${IS_DISPLAY}">
                        	<li><a href="#">Hi, ${EMPLOYEE_INFO.employeeFirstName}</a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>

    </div>
</div>