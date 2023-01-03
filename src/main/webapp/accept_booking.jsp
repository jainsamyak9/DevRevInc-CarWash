<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <%
 
int j=0;
try{
	j=(Integer)session.getAttribute("a_id");
}
catch(Exception e)
{

}

if(j==0)
{
	response.sendRedirect("Admin_Login.jsp");
}
System.out.print(j);


%> 
        <title>Create Time Slot</title>


        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="newCascadeStyleSheet.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
            }
        </style>

    </head>
    <body>
<%-- <%

int j=0;
try{
	j=(Integer)session.getAttribute("s_id");
}
catch(Exception e)
{
	
}

if(j==0)
{
	response.sendRedirect("Student_Login.jsp");
}
System.out.print(j);


%> --%>
        <%@include file="nav_adm.jsp" %>

        <main class="primary-background  banner-background"  style="padding-bottom: 80px;">

            <div class="container">

                <div class="col-md-6 offset-md-3">

                    <div class="card">
                        <div class="card-header text-center primary-background text-white">
                         
                            <br>
                           Create Time Slot
                        </div>
                        <div class="card-body">
                            <form id="reg-form" action="requestbook" method="POST">



                                
                                  
                              
                                
                                <div class="form-group">
                                    <label for="namexyz">Request Id</label>
                                    <input name="req_id" type="text" class="form-control" id="namexyz" aria-describedby="emailHelp" placeholder="Enter Request Id">
                                </div>
                                <div class="form-group">
                                    <label for="namexyz">Place</label>
                                    <input name="place" type="text" class="form-control" id="namexyz" aria-describedby="emailHelp" placeholder="Enter Request Id">
                                </div>
                                <div class="form-group">
                                    <label for="namexyz">Date</label>
                                    <input name="date" type="text" class="form-control" id="namexyz" aria-describedby="emailHelp" placeholder="Enter Request Id">
                                </div>
                                <div class="form-group">
                                    <label for="namexyz">Time Slot</label>
                                    <input name="time_slot" type="text" class="form-control" id="namexyz" aria-describedby="emailHelp" placeholder="Enter Request Id">
                                </div>
				
                                
                                
                                
                                

                              <div class="form-group">
                                    <label for="status">Select Status</label>
                                    <br>
                                    <input type="radio"  id="gender" name="status" value="male" >Accept
                                    <input type="radio"  id="gender" name="status" value="famale">Reject
                                </div>

                              

      							
                                <!-- <div class="form-group">
                                    <label for="exampleInputPassword5">Confirm Password</label>
                                    <input name="userConfPass" type="password" class="form-control" id="exampleInputPassword5" placeholder="Mobile no">
                                </div> -->


                                <button id="sumbimt-btn" type="submit" class="btn btn-primary">Submit</button>
                            </form>

                        </div>


                    </div>




                </div>
            </div>

        </main>


        <!--javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
</body>
</html>