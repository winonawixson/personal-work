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
            <div class="header col-md-6">
                Winona J. Wixson
            </div>

            <div class="content row">
                <div class="col-md-offset-1 col-md-7">
                    <div class="jumbotron">
                        <h2>M.C. Escher and Hyperbolic Geometry</h2>
                        <iframe src="//www.slideshare.net/slideshow/embed_code/key/K4iqu1WA64YXJS" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/secret/K4iqu1WA64YXJS" title="Escher Explained through Hyperbolic Geometry" target="_blank">Escher Explained through Hyperbolic Geometry</a> </strong> from <strong><a href="//www.slideshare.net/WinonaWixson" target="_blank">Winona Wixson</a></strong> </div>
                    </div>
                    <div class="jumbotron">
                        <h2>Chutes and Ladders</h2>
                        <iframe src="//www.slideshare.net/slideshow/embed_code/key/47VrBBFQi1fLHh" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/secret/47VrBBFQi1fLHh" title="A Faster Chutes and Ladders" target="_blank">A Faster Chutes and Ladders</a> </strong> from <strong><a href="//www.slideshare.net/WinonaWixson" target="_blank">Winona Wixson</a></strong> </div>                    
                    </div>
                </div>

                <div class="col-md-offset-1 col-md-2">
                    <ul class="nav nav-pills nav-stacked">
                        <li><a href="${pageContext.request.contextPath}/home">home</a></li>
                        <li><a href="${pageContext.request.contextPath}/about">about</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/math">math</a></li>
                        <li><a href="${pageContext.request.contextPath}/code">code</a></li>
                        <li><a href="${pageContext.request.contextPath}/contact">contact</a></li>
                    </ul>
                </div>

            </div>

        </div>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-1.12.2.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    </body>
</html>

