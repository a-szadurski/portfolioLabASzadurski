<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<title>Charity Panel Administracyjny</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href='<c:url value="/resources/css/w3css.css"/>' type="text/css"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href='<c:url value="/resources/css/style.css"/>' type="text/css"/>
<style>
    html, body, h1, h2, h3, h4, h5 {
        font-family: "Raleway", sans-serif
    }
</style>
<body class="w3-grey">

<!-- Top container -->
<div class="w3-bar w3-top w3-black w3-large" style="z-index:4">
    <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i
            class="fa fa-bars"></i> &nbsp;Menu
    </button>
    <span class="w3-bar-item w3-right">Panel Administracyjny</span>
</div>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left w3-black" style="z-index:3;width:300px;" id="mySidebar"><br>
    <div class="w3-container w3-row">
        <div class="w3-col s8 w3-bar">
            <span>Witaj, <strong><sec:authentication property="principal.username"/></strong></span><br>
            <sec:authorize access="isAuthenticated()">
                <form action="<c:url value="/logout"/>" method="post">
                    <input type="submit" value="Wyloguj" class="w3-button">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
            </sec:authorize>
        </div>
    </div>
    <hr>
    <div class="w3-container">
        <h5>Menu</h5>
    </div>
    <div class="w3-bar-block">
        <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black"
           onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>&nbsp; Close Menu</a>
        <a href='<c:url value="${pageContext.request.contextPath}/admin"/>'
           class="w3-bar-item w3-button w3-padding">
            <i class="fa fa-fw"></i>&nbsp; Panel Strona Główna</a>
        <a href='<c:url value="${pageContext.request.contextPath}/admin/institution/all"/>'
           class="w3-bar-item w3-button w3-padding">
            <i class="fa fa-fw"></i>&nbsp; Zarządzaj fundacjami</a>
        <a href='<c:url value="${pageContext.request.contextPath}/admin/user/all"/>'
           class="w3-bar-item w3-button w3-padding">
            <i class="fa fa-fw"></i>&nbsp; Zarządzaj użytkownikami</a>
        <a href='<c:url value="${pageContext.request.contextPath}/admin/superuser/all"/>'
           class="w3-bar-item w3-button w3-padding">
            <i class="fa fa-fw"></i>&nbsp; Zarządzaj administratorami</a>
    </div>
</nav>


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer"
     title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:43px;">
