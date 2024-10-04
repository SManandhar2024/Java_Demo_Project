<%@page import="java.util.List"%>
<%@page import="com.servlet.Signup"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Signup</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<header style="height: 30px;background-color: yellow;">  
</header>
<div class="container mt-4">
<img alt="" style="height: 100px;" src="https://th.bing.com/th/id/R.aa6d3d46db745beb518cedffecb80ad3?rik=wqqg9ELLZL4Nxw&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fsign-up-button-png-sign-up-button-png-free-download-1024.png&ehk=K1YJVPS4sWczTX6P0YCaG2Sy%2btFuZuWSXdn6Rbj3awU%3d&risl=&pid=ImgRaw&r=0">
<img alt="" style="height: 100px;" src="https://th.bing.com/th/id/R.aa6d3d46db745beb518cedffecb80ad3?rik=wqqg9ELLZL4Nxw&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fsign-up-button-png-sign-up-button-png-free-download-1024.png&ehk=K1YJVPS4sWczTX6P0YCaG2Sy%2btFuZuWSXdn6Rbj3awU%3d&risl=&pid=ImgRaw&r=0">
<img alt="" style="height: 100px;" src="https://th.bing.com/th/id/R.aa6d3d46db745beb518cedffecb80ad3?rik=wqqg9ELLZL4Nxw&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fsign-up-button-png-sign-up-button-png-free-download-1024.png&ehk=K1YJVPS4sWczTX6P0YCaG2Sy%2btFuZuWSXdn6Rbj3awU%3d&risl=&pid=ImgRaw&r=0">
<hr/>
<span style="color:blue;font-weight: bold;">${message}</span>
<form action="signup" method="post">
    <div style="width:50%">
    <div class="form-group">
         <label>Username</label>
         <input type="text" name="username" class="form-control"/>
     </div>
     <div class="form-group">
         <label>Password</label>
         <input type="password" name="password" class="form-control"/>
     </div>
     <div class="form-group">
         <label>Gender</label>
         <select class="form-control" name="gender">
         <option>Male</option>
         <option>Female</option>
         <option>Other</option>
         </select>
     </div>
     <div class="form-group mt-2">
         <button type="submit" class="btn btn-primary">Signup</button>
         <button type="reset" class="btn btn-warning">Clear</button>
     </div>
     <hr/>
     
     </div>
    <%
  List<Signup> signupsList= (List<Signup>)request.getAttribute("signupList");
    if(signupsList==null){
    	signupsList =new ArrayList<>();
   }
    int count=1;
    for(Signup signup: signupsList){
    	%>
    	<h3><%=count++%>.&nbsp;<%=signup.getUsername()%> -<span style="background: yellow;"> <%=signup.getGender()%></span></h3>
    	<%
    }
    %>
</form>

</div>
</body>
</html>