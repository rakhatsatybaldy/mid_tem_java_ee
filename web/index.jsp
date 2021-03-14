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
                ArrayList<Hotels> hotels = (ArrayList<Hotels>)request.getAttribute("hotel");
                if(hotels!=null){
                    for(Hotels h : hotels){
            %>
            <div class="jumbotron">
                <h2><%=h.getName()%></h2>
                <h3>For <%=h.getPrice()%> USD</h3>
                <h4><%=h.getStars()%> stars</h4>
                <hr class="my-4">
                <a class="btn btn-primary btn-sm" href="/details?id=<%=h.getId()%>" role="button">Details</a>
            </div>
            <%
                    }
                }
            %>
        </div>
    </div>
</div>
</body>
</html>
