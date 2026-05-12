<%@ page language="java" %>

<html>

<head>

<title>Image Search</title>

<style>

body{
    font-family:Arial;
    background:#f2f2f2;
    padding:40px;
    text-align:center;
}

.box{
    background:white;
    padding:30px;
    border-radius:20px;
}

img{
    width:500px;
    border-radius:20px;
    margin-top:20px;
    box-shadow:0 0 10px gray;
}

h1{
    color:#2a5298;
}

a{
    text-decoration:none;
    background:#2a5298;
    color:white;
    padding:10px 20px;
    border-radius:20px;
}

</style>

</head>

<body>

<div class="box">

<%

String query = request.getParameter("query");

%>

<h1>Search Result for:
<%= query %>
</h1>
<img src="https://loremflickr.com/600/400/<%= query %>" alt="">

<br><br>

<a href="index.jsp">Back</a>

</div>

</body>

</html>