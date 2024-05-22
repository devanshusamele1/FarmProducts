<%-- 
    Document   : Login
    Created on : Apr 13, 2024, 12:03:43 AM
    Author     : devan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
        <link rel="stylesheet" type="text/css" href="css\allcss.css" >
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body id="loginbody">
        <a class="navbar-brand" href="index.jsp"><img src="img/farmlogo.jpg" alt="..." class="rounded-sm" style="height:60px; width: 80px ; margin: 5px 5px"></a>
       <%@include file="components/message.jsp" %> 
         <br>
     <br><br><br>
     <div class="container logincontainer">
      <div class="row">
      <div class="col-md-4 offset-md-4"> 
       <h3  class="text-center text-secondary text-uppercase">Login</h3>
       
          <form action="LoginServlet" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label text-white">Email address</label>
    <input  name="email" type="email" class="form-control logininput1" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label text-white">Password</label>
    <input name="password" type="password" class="form-control logininput1" id="exampleInputPassword1">
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-success">login</button>
  </div>
</form>  
       </div>
       </div>
      </div>
    </body>
</html>
