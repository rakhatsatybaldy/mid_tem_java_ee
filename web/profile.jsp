<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body class="pb-5 mb-5">
<%@include file="navbar.jsp"%>
<div class="container mt-3">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page"><%=currentUser.getFullName()%></li>
        </ol>
    </nav>
</div>
<div class="container mt-3">
    <div class="row">
        <div class="col-sm-6 offset-3">
            <%
                String oldPassError = request.getParameter("oldpasserror");
                if(oldPassError!=null){
            %>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                Old password doesn't match!
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <%
                }
            %>
            <%
                String newPassError = request.getParameter("newpasserror");
                if(newPassError!=null){
            %>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                New Passwords are not same!
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <%
                }
            %>
            <%
                String success = request.getParameter("success");
                if(success!=null){
            %>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                User password updated successfully!
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <%
                }
            %>
            <div class="row mt-3">
                <div class="col-sm-12">
                    <img src="<%=currentUser.getPicture()%>" width="100%;">
                </div>
            </div>
            <form action="/updatepicture" method="post">
                <div class="row mt-2">
                    <div class="col-sm-12">
                        <input type="text" name="url" class="form-control" placeholder="Put URL of picture" required>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-sm-12">
                        <button class="btn btn-success float-right">UPDATE PICTURE</button>
                    </div>
                </div>
            </form>
            <form action="/updateprofile" method="post">
                <div class="row mt-5">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>FULL NAME: </label>
                            <input type="text" name="full_name" class="form-control" value="<%=currentUser.getFullName()%>" required>
                        </div>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-sm-12">
                        <button class="btn btn-success float-right">UPDATE PROFILE</button>
                    </div>
                </div>
            </form>
            <form action="/updatepassword" method="post">
                <div class="row mt-5">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>OLD PASSWORD: </label>
                            <input type="password" name="old_password" class="form-control" required>
                        </div>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>NEW PASSWORD: </label>
                            <input type="password" name="new_password" class="form-control" required>
                        </div>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>REPEAT NEW PASSWORD: </label>
                            <input type="password" name="re_new_password" class="form-control" required>
                        </div>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-sm-12">
                        <button class="btn btn-success float-right">UPDATE PASSWORD</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
