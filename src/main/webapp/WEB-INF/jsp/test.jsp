<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Akono</title>
    <meta charset="utf-8">
    <link type="text/css" rel="stylesheet" href="../../resources/styles/style.css"/>
    <link type="text/css" rel="stylesheet" href="../../resources/styles/skin.css"/>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>

    <script type="text/javascript" src="../../resources/js/jquery.jcarousel.min.js"></script>
    <script type="text/javascript" src="../../resources/js/initSlider.js"></script>
    <script type="text/javascript" src="../../resources/js/main.js"></script>

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
<div id="wrap">
    <div id="header"><img src="../../resources/images/logo.png"/>

        <div id="nav">
            <ul class="menu">
                <li class="current_page_item"><a href="index.jsp">Home</a></li>
                <li><a href="page.html">Services</a>
                    <ul class="sub-menu">
                        <li><a href="#">Branding</a></li>
                        <li><a href="#">Online Marketing</a></li>
                        <li><a href="#">Search Engine Optimization</a></li>
                        <li><a href="#">Web Design</a></li>
                    </ul>
                </li>
                <li><a href="portfolio.html">Portfolio</a></li>
                <li><a href="articles.html">Articles</a></li>
                <li><a href="contact.html">Contact</a></li>
            </ul>
        </div>
        <!--end nav-->
    </div>
    <!--end header-->
    <div id="featured-section">
        <h2>We design original and effective online experiences</h2>
        <%--<div id="circles"> <img class="first" src="../../resources/images/circle-red.png" /> <img src="../../resources/images/circle-pink.png" /> <img src="../../resources/images/circle-orange.png" /> <img src="../../resources/images/circle-yellow.png" /> </div>--%>
        <!--end circles-->

        <div id="image-slider">
            <ul id="mycarousel" class="jcarousel-skin-tango">
                <c:set var="count" value="0"/>
                <c:forEach items="${questions}" var="q">
                    <li class="">
                        <p>${q.question}</p>
                        <label for="q${count}">
                            <input id="q${count}" name="q${q.id_question}" type="radio" value="${count= count+1}">
                            ${q.answer_1}
                        </label><br>
                        <label for="q${count}">
                            <input id="q${count}" name="q${q.id_question}" type="radio" value="${count= count+1}">
                                ${q.answer_2}
                        </label><br>
                        <label for="q${count}">
                            <input id="q${count}" name="q${q.id_question}" type="radio" value="${count= count+1}">
                                ${q.answer_3}
                        </label><br>
                        <label for="q${count}">
                            <input id="q${count}" name="q${q.id_question}" type="radio" value="${count= count+1}">
                                ${q.answer_4}
                        </label><br>
                    </li>
                </c:forEach>
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
    <div id="frontpage-main">
        <div id="frontpage-content">
            <h3>Why Work With Akono?</h3>
            <p>You’ll not regret getting in touch with us about your new project. Below are some of the benefits.</p>
            <ul class="blue-bullets">
                <li>Over 15 Years Real World Experience</li>
                <li>Voted No. 1 Design Studio In The World</li>
                <li>Support And Guidance At Every Step</li>
                <li>A Great Solution That You&#8217;ll Be Happy With</li>
            </ul>
        </div>
        <!--end frontpage-content-->
        <div id="frontpage-sidebar">
            <h3>Latest Article</h3>
            <a class="blog-title" href="#">Top Tips For Hiring A Design Agency</a>
            <p class="meta">1st May 2011 / <a href="#">No Comments &#187;</a></p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                aliquip.</p>
            <a class="read-more" href="#">Read More &raquo;</a></div>
        <!--end frontpage-sidebar-->
    </div>
    <!--end frontpage-main-->
    <div id="footer">
        <p class="copyright">Copyright &copy; <a href="#">Domain Name</a> - All Rights Reserved / Design By <a
                target="_blank" href="http://www.chris-creed.com/">Chris Creed</a></p>
    </div>
    <!--end footer-->
</div>
<!--end wrap-->
</body>
<div class="cache-images"><img src="../../resources/images/red-button-bg.png" width="0" height="0" alt=""/><img
        src="../../resources/images/black-button-bg.png" width="0" height="0" alt=""/></div>
<!--end cache-images-->
</html>