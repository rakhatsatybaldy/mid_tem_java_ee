<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
    <script type="text/javascript" src="js/tinymce/tinymce.min.js"></script>
    <script>
        tinymce.init({
            selector:'textarea'
        });
    </script>
</head>
<body class="pb-5 mb-5">
<%@include file="navbar.jsp"%>
<div class="container mt-3">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Add Hotel</li>
        </ol>
    </nav>
</div>
<div class="container mt-3">
    <div class="row">
        <div class="col-sm-8 offset-2">
            <form action="/addhotel" method="post">
                <div class="form-group">
                    <label>
                        NAME :
                    </label>
                    <input type="text" name="name" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>
                        STARS :
                    </label>
                    <select class="form-control" name="stars">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>
                        DESCRIPTION :
                    </label>
                    <textarea name="description" class = "form-control"></textarea>
                </div>
                <div class="form-group">
                    <label>
                        PRICE :
                    </label>
                    <input type="number" name="price" min="0" required class="form-control">
                </div>
                <div class="form-group">
                    <button class="btn btn-success">ADD HOTEL</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
