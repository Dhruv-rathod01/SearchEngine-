<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>

<head>

<title>SearchEngine AI</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{

    min-height:100vh;

    padding:40px;

    background:
    linear-gradient(rgba(0,0,0,0.7),
    rgba(0,0,0,0.7)),

    url('https://images.unsplash.com/photo-1516321318423-f06f85e504b3?q=80&w=1600');

    background-size:cover;
    background-position:center;

}

/* Main container */

.container{

    width:95%;

    margin:auto;

    padding:40px;

    border-radius:35px;

    background:rgba(255,255,255,0.08);

    border:1px solid rgba(255,255,255,0.12);

    backdrop-filter:blur(20px);

    box-shadow:0 15px 50px rgba(0,0,0,0.5);

    text-align:center;

}

/* logo */

.logo{

    width:110px;
    height:110px;

    margin:auto;

    border-radius:50%;

    background:linear-gradient(135deg,#2563eb,#7c3aed);

    display:flex;

    justify-content:center;

    align-items:center;

    margin-bottom:25px;

    box-shadow:0 0 30px rgba(124,58,237,0.5);

}

.logo img{

    width:55px;

}

/* title */

h1{

    color:white;

    font-size:65px;

    margin-bottom:15px;

}

p{

    color:#cbd5e1;

    font-size:20px;

    margin-bottom:40px;

}

/* search box */

.search-box{

    display:flex;

    width:80%;

    margin:auto;

    background:white;

    border-radius:60px;

    overflow:hidden;

    box-shadow:0 10px 25px rgba(0,0,0,0.3);

}

.search-box input{

    flex:1;

    padding:24px 30px;

    border:none;

    outline:none;

    font-size:19px;

}

.search-box button{

    width:190px;

    border:none;

    background:linear-gradient(135deg,#2563eb,#7c3aed);

    color:white;

    font-size:20px;

    cursor:pointer;

    transition:0.3s;

}

.search-box button:hover{

    opacity:0.9;

}

/* image gallery */

.gallery{

    margin-top:50px;

    display:grid;

    grid-template-columns:1fr 1fr 1fr;

    gap:25px;

}

.gallery img{

    width:100%;

    height:260px;

    object-fit:cover;

    border-radius:25px;

    box-shadow:0 0 15px rgba(0,0,0,0.5);

    transition:0.3s;

}

.gallery img:hover{

    transform:scale(1.03);

}

/* footer */

.footer{

    margin-top:40px;

    color:#cbd5e1;

    font-size:15px;

}

</style>

</head>

<body>

<div class="container">

<div class="logo">

<img src="https://cdn-icons-png.flaticon.com/512/149/149852.png">

</div>

<h1>SearchEngine</h1>

<p>Explore Smart Visual Search with Live Image Results</p>

<form method="get">

<div class="search-box">

<input type="text"
       name="query"
       placeholder="Search for anything..."
       required>

<button type="submit">

Search

</button>

</div>

</form>

<%

String query = request.getParameter("query");

if(query != null){

%>

<div class="gallery">

<%

for(int i=1; i<=12; i++){

%>

<img src="https://loremflickr.com/600/400/<%= query %>?random=<%= i %>">

<%

}

%>

</div>

<%

}

%>

<div class="footer">

Designed & Developed by Dhruv Rathore 

</div>

</div>

</body>

</html>