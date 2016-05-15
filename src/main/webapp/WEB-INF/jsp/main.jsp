<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Akono</title>
    <meta charset="utf-8">
    <link type="text/css" rel="stylesheet" href="http://codaline.me/css/bootstrap.min.css"/>
    <link type="text/css" rel="stylesheet" href="../../resources/styles/style.css"/>
    <link type="text/css" rel="stylesheet" href="../../resources/styles/skin.css"/>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>

    <script type="text/javascript" src="../../resources/js/jquery.jcarousel.min.js"></script>
    <script type="text/javascript" src="../../resources/js/initSlider.js"></script>
    <script type="text/javascript" src="../../resources/js/main.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <!--[if IE 6]>

    <script src="js/ie6-transparency.js"></script>
    <script>DD_belatedPNG.fix('#header img, #featured-section h2, #circles img, #frontpage-sidebar .read-more, .blue-bullets li, #sidebar .sidebar-button, #project-content .read-more, .more-link, #contact-form .submit, .jcarousel-skin-tango .jcarousel-next-horizontal, .jcarousel-skin-tango .jcarousel-prev-horizontal, #commentform .submit');</script>
    <style>body {
        behavior: url("styles/ie6-hover-fix.htc");
    }</style>
    <link rel="stylesheet" href="styles/ie6.css"/>
    <![endif]-->
    <!--[if IE 7]>
    <link rel="stylesheet" href="styles/ie7.css"/><![endif]-->
    <!--[if IE 8]>
    <link rel="stylesheet" href="styles/ie8.css"/><![endif]-->
</head>
<body class="home">
<div id="wrap" class="container">
    <div id="header"><img src="../../resources/images/it.jpg" width="100"
    height="100"/>

    <!--end header-->
    <div id="featured-section">
        <p style=" padding-top: 10px; text-align:center;font-size: 25pt; font-family: 'OCR A Extended'; color:dimgrey; z-index: 1;">Welcome! Offer you to complete profile test for</br> get approximate direction in IT sector.   </p>
        <%--<div id="circles"> <img class="first" src="../../resources/images/circle-red.png" /> <img src="../../resources/images/circle-pink.png" /> <img src="../../resources/images/circle-orange.png" /> <img src="../../resources/images/circle-yellow.png" /> </div>--%>
        <!--end circles-->

        <div id="image-slider" style="width: 1000px; height: 482px">
            <div style="align-content: center ">
                <ul id="mycarousel" class="jcarousel-skin-tango">
                    <c:set var="count" value="0"/>

                    <c:forEach items="${questions}" var="q">
                    <li class="">

                        <p STYLE="text-align: center; font-size: 22pt; font-family: 'OCR A Extended';">${q.question}</p>
                        <div style="font-size: 15pt; font-family: 'OCR A Extended';">
                            </br>
                            <label for="q${count-1}">
                                <input id="q${count}" name="${q.id_question}" type="radio" class="radio" checked
                                       value="${count= count+1}" style="display:inline-block;
    width:19px;
    height:19px;
    margin:-1px 4px 0 0;
    vertical-align:middle;
    cursor:pointer;

    -moz-border-radius:  50%;
    border-radius:  50%;
    color: #2684cd;
    ">
                                    ${q.answer_1}
                            </label></div>
                        </br>


                        <div style="font-size: 15pt; font-family: 'OCR A Extended';"><label for="q${count-1}">
                            <input id="q${count}" name="${q.id_question}" type="radio" class="radio"
                                   value="${count= count+1}" style="display:inline-block;
    width:19px;
    height:19px;
    margin:-1px 4px 0 0;
    vertical-align:middle;
    cursor:pointer;

    -moz-border-radius:  50%;
    border-radius:  50%;
    color: #2684cd;
    "> ${q.answer_2}
                        </label></div>
                        </br>

                        <div style="font-size: 15pt; font-family: 'OCR A Extended';"><input id="q${count}"
                                                                                            name="${q.id_question}"
                                                                                            type="radio" class="radio"
                                                                                            value="${count= count+1}"
                                                                                            style="display:inline-block;
    width:19px;
    height:19px;
    margin:-1px 4px 0 0;
    vertical-align:middle;
    cursor:pointer;

    -moz-border-radius:  50%;
    border-radius:  50%;
    color: #2684cd;
    "><label
                                for="q${count-1}"> ${q.answer_3}

                        </label></div>
                        </br>


                        <div style="font-size: 15pt; font-family: 'OCR A Extended';"><input id="q${count}"
                                                                                            name="${q.id_question}"
                                                                                            type="radio" class="radio"
                                                                                            value="${count= count+1}"
                                                                                            style="display:inline-block;
    width:19px;
    height:19px;
    margin:-1px 4px 0 0;
    vertical-align:middle;
    cursor:pointer;

    -moz-border-radius:  50%;
    border-radius:  50%;
    color: #2684cd;
    "><label
                                for=q"${count-1}">
                                ${q.answer_4}
                        </label>
                            <c:if test="${q.id_question==20}">
                                <a href="#scrol" class="knopka" id="send" onclick="Send();" style="  font-size: 12pt;">Get
                                    Result</a>
                            </c:if></div>



                        </c:forEach>
                    </li>

            </div>

            <%--<li class="first"><a href="#"><img width="280" height="190" src="../../resources/images/280x190.gif"--%>
            <%--alt=""/></a></li>--%>
            <%--<li><input type="radio" value=""></li>--%>
            <%--<li><a href="#"><img width="280" height="190" src="../../resources/images/280x190.gif" alt=""/></a></li>--%>
            <%--<li class="first"><a href="#"><img width="280" height="190" src="../../resources/images/280x190.gif"--%>
            <%--alt=""/></a></li>--%>
            <%--<li><a href="#"><img width="280" height="190" src="../../resources/images/280x190.gif" alt=""/></a></li>--%>
            <%--<li><a href="#"><img width="280" height="190" src="../../resources/images/280x190.gif" alt=""/></a></li>--%>
            <%--<li class="first"><a href="#"><img width="280" height="190" src="../../resources/images/280x190.gif"--%>
            <%--alt=""/></a></li>--%>
            <%--<li><a href="#"><img width="280" height="190" src="../../resources/images/280x190.gif" alt=""/></a></li>--%>
            <%--<li><a href="#"><img width="280" height="190" src="../../resources/images/280x190.gif" alt=""/></a></li>--%>
            </ul>
        </div>
        <!--end image-slider-->

    </div>
    <!--end featured-section-->
    <%--<div id="frontpage-main">--%>
    <%--<div id="frontpage-content">--%>
    <%--<h3>Why Work With Akono?</h3>--%>
    <%--<p>You’ll not regret getting in touch with us about your new project. Below are some of the benefits.</p>--%>
    <%--<ul class="blue-bullets">--%>
    <%--<li>Over 15 Years Real World Experience</li>--%>
    <%--<li>Voted No. 1 Design Studio In The World</li>--%>
    <%--<li>Support And Guidance At Every Step</li>--%>
    <%--<li>A Great Solution That You&#8217;ll Be Happy With</li>--%>
    <%--</ul>--%>
    <%--</div>--%>
    <%--<!--end frontpage-content-->--%>
    <%--<div id="frontpage-sidebar">--%>
    <%--<h3>Latest Article</h3>--%>
    <%--<a class="blog-title" href="#">Top Tips For Hiring A Design Agency</a>--%>
    <%--<p class="meta">1st May 2011 / <a href="#">No Comments &#187;</a></p>--%>
    <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et--%>
    <%--dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut--%>
    <%--aliquip.</p>--%>
    <%--<a class="read-more" href="#">Read More &raquo;</a></div>--%>
    <%--<!--end frontpage-sidebar-->--%>
    <%--</div>--%>
    <%--<!--end frontpage-main-->--%>
    <%--<div id="footer">--%>
    <%--<p class="copyright">Copyright &copy; <a href="#">Domain Name</a> - All Rights Reserved / Design By <a--%>
    <%--target="_blank" href="http://www.chris-creed.com/">Chris Creed</a></p>--%>
    <%--</div>--%>
    <!--end footer-->

</div>
<div id="scrol" style="top: 1070px; left: 20%; position: absolute" class="container">
    <div style="display: block; text-align: center; margin: auto;">
        <p style="font-size: 70pt; font-family: 'Verdana'; color:dimgrey; z-index: 1;">Congrats!</p>
        <br>
        <br>
        <br>
        <p style="font-size: 20pt; font-family: 'Verdana'; color: black;" >You confimed the test! This is approximate result chart.</p>
    </div>
    <div class="row" style="background: #fff">
        <div id="result-chart" class="col-md-12" style="height: 350px;">

        </div>
    </div>
    <div class="row" style="background: #fff">
        <div id="circles" class="col-md-12">
            <img class="col-md-3" src="../../resources/images/it.jpg" />
            <img class="col-md-3"  src="../../resources/images/med.jpg" />
            <img class="col-md-3"  src="../../resources/images/bus.jpg" />
            <img class="col-md-3" src="../../resources/images/educ.jpg" />
        </div>
    </div>
</div>
<!--end wrap-->
</body>
<div class="cache-images"><img src="../../resources/images/red-button-bg.png" width="0" height="0" alt=""/><img
        src="../../resources/images/black-button-bg.png" width="0" height="0" alt=""/></div>
<!--end cache-images-->
</html>