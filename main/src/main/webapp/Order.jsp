<%-- 
    Document   : Order
    Created on : Apr 16, 2024, 12:15:40 AM
    Author     : devan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title> 
<%@include file="components/common_css_js.jsp" %>
</head>
<body>
 
   <div class="alert alert-success mt-5" role="alert">
  <h4 class="alert-heading">Order placed!</h4>
  <p>Aww yeah, your order has been successfully placed and we will try to parcel you as soon as we can.thankyou for your order. 
  <p class="mb-0">continue shoping your favourite brands we have all of them</p> 
  <form action="index.jsp"> 
     <button type="submit" class="btn btn-warning mt-1">back to shoping</button>
</form> 
   
</div> 

</body>
</html>
