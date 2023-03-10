<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link href="newCascadeStyleSheet.css" rel="stylesheet" type="text/css">
     <style>
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 84%, 63% 100%, 34% 88%, 0 92%, 0 0);
            }
        </style>
    <title>Admin Login</title>
  </head>
  <body>
   <%@include file="navbar.jsp" %>
        <main class="d-flex align-items-center primary-background banner-background " style="height: 70vh">
            <div class="container">
                
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        
                        <div class="card">
                      
                            
                            <div class="card-header primary-background text-white text-center">
                              
                                <br>
                                <p>Admin LOGIN </p>
                            </div>
                            
                   <%
                   
                  // HttpSession sesion=request.getSession();  
                   session.invalidate();  
                   
                   
                   %>
                                
   <div class="card-body">
      <form  name="myForm" onsubmit="return validateForm()"  id="reg-form" action="AdminLoginController" method="POST" required="required" required>
  
  
<div class="form-group">
                                    <label for="namexyz1">UserName:</label>
                                    <input name="a_name" type="text" class="form-control" id="namexyz1" aria-describedby="emailHelp" placeholder="Enter Username">
                                </div>
  
                                <div class="form-group">
                                    <label for="namexyz">Password:</label>
                                    <input name="a_pass" type="password" class="form-control" id="namexyz" aria-describedby="emailHelp" placeholder="Enter Password">
                                </div>

   <button id="sumbimt-btn" type="submit" class="btn btn-primary">Submit</button>
                                
                                
                                
</form>
                                    
                                    
                                    
                                </div>
                               
                            </div>
                        </div>
                 
                    </div>
                </div>
            </div>
        </main>
        

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper)
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
 -->
    <!-- Option 2: jQuery, Popper.js, and Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
   
  </body>
</html>