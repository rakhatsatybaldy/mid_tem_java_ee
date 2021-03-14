<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.iitu.ead.entities.Hotels" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
    <style>
        img{
            max-width: 100%;
        }
    </style>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container mt-3">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">All Hotels</li>
        </ol>
    </nav>
</div>
<div class="container mt-3">
    <div class="row">
        <div class="col-sm-12">
            <%
                Hotels hotel = (Hotels) request.getAttribute("hotel");
                if(hotel!=null){
            %>
            <div class="jumbotron">
                <h2><%=hotel.getName()%></h2>
                <h3>For <%=hotel.getPrice()%> USD</h3>
                <h4><%=hotel.getStars()%> stars</h4>
                <hr class="my-4">
                <p>
                    <%=hotel.getDescription()%>
                </p>
                <hr class="my-4">
                <p class="font-weight-bold float-right">
                    Author is : <%=hotel.getAuthor().getFullName()%>
                    <img src="<%=hotel.getAuthor().getPicture()%>" class="rounded-circle" alt="Cinque Terre" width="30" height="30">
                </p>
            </div>
            <%
                }
            %>
        </div>
    </div>
</div>
</body>
</html>
