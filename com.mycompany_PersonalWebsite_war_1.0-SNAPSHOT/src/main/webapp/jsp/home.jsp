<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Winona Wixson</title>
        <!-- Bootstrap core CSS -->

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href='https://fonts.googleapis.com/css?family=Dosis' rel='stylesheet' type='text/css'>
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">

        <!-- SWC Icon -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/icon.png">
    </head>
    <body>
        <div class="container">
            <div class="header col-md-6">
                Winona J. Wixson
            </div>

            <div class="content row">
                <div class="col-md-offset-1 col-md-7">
                    <div class="jumbotron">
                        <img src="img/family.png" alt="sunset" class="img-responsive"/>
                    </div>
                </div>
                <div class="col-md-offset-1 col-md-2">
                    <ul class="nav nav-pills nav-stacked navbar-fixed-right">
                        <li class="active"><a href="${pageContext.request.contextPath}/home">home</a></li>
                        <li><a href="${pageContext.request.contextPath}/about">about</a></li>
                        <li><a href="${pageContext.request.contextPath}/math">math</a></li>
                        <li><a href="${pageContext.request.contextPath}/code">code</a></li>
                        <li><a href="${pageContext.request.contextPath}/contact">contact</a></li>
                        <sec:authorize access="hasRole('ROLE_USER')" var="isLoggedIn"/>
                        <c:choose>
                            <c:when test="${isLoggedIn}">
                                <li><a href="${pageContext.request.contextPath}/j_spring_security_logout">log out</a></li>
                                </c:when>
                                <c:otherwise>
                                <li><a href="${pageContext.request.contextPath}/login">sign in</a></li>
                                </c:otherwise>
                            </c:choose>
                    </ul>
                </div>

            </div>

        </div>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-1.12.2.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    </body>
</html>

