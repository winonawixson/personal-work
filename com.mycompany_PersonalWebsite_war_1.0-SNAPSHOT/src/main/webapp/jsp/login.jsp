<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <br><br>
                    <!-- #1 - If login_error == 1 then there was a failed login attempt --> 
                    <!-- so display an error message --> 
                    <c:if test="${param.login_error == 1}">
                        <h3>Wrong id or password!</h3> 
                    </c:if>
                    <!-- #2 - Post to Spring security to check our authentication -->
                    <div class="jumbotron">
                        <!--form sign in-->
                        <form class="form-signin" action="j_spring_security_check" method="POST">
                            <h2 class="form-signin-heading">Please sign in</h2>
                                
                            <label for="username" class="sr-only">Username</label>
                                <input type="text" id="username" class="form-control" name="j_username" placeholder="Username" required autofocus>
                            <label for="password" class="sr-only">Password</label>
                                <input type="password" name="j_password" id="password" class="form-control" placeholder="Password" required>

                            <button name="commit" class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                        </form>                         
                    </div>
                </div>
            </div>
        </div>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-1.12.2.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    </body>
</html>

