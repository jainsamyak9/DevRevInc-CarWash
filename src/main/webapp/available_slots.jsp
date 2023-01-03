
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  

 <%@ page import = "java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet,java.io.PrintWriter,java.sql.Connection,java.sql.DriverManager"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      
  <%
 
int j=0;
try{
	j=(Integer)session.getAttribute("user_id");
}
catch(Exception e)
{

}

if(j==0)
{
	response.sendRedirect("User_Login.jsp");
}
System.out.print(j);


%>   
        
<meta charset="ISO-8859-1">
<title>Places</title>
</head>
<body style="background-color:powderblue;">


<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/DevRev?verifyServerCertificate=false&useSSL=true"  
     user="root"  password="samyak123"/>

<sql:query dataSource="${db}" var="rs">  
SELECT date,time_slot,status, place
   FROM available_slot  
   
</sql:query>



<%

PrintWriter out2 = response.getWriter();  
response.setContentType("text/html");  
try 
{  
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/DevRev?verifyServerCertificate=false&useSSL=true","root","samyak123");
 	PreparedStatement ps=con.prepareStatement("select * FROM available_slot ");
   // ps.setInt(1, j);
 	ResultSet rs = ps.executeQuery();  
    int s=1;
    int a=0;
   
    	while (rs.next()) 
    { 
         a = rs.getInt(1);  
    
       // out.println( "<h1>"+ " Total Fee Received :  " + a + "</h1>" );   
    }  
     
    	
/*
    PreparedStatement ps2=con.prepareStatement("select SUM(remaining) FROM fee ");
    ResultSet rs2 = ps2.executeQuery();  
    int b=0;
    while (rs2.next()) 
    {  
        b= rs2.getInt(1);  
     
       // out.println( "<h1>"+ " Total Fee remaining :  " + a + "</h1>" );   
    }  
    out.println("<h1>"+ " Total Fee Received :  " +  a +"</h1>"+   "<h1>"+ " Total Fee remaining :  " + b+ "</h1>" );   

  */  
    con.close();  
   }  
    catch (Exception e) 
   {  
   }  



%>


<div class="container ">
<table class="table table-bordered table-striped table-hover"> 
<tr>

 <th>Place Name</th>  
 <th>Date</th>   
 <th>Time Slot</th>  
<th>Status</th>  
  
<!-- <th>Subject ID </th>  
<th>Marks</th> -->
 

 
</tr>  

<c:forEach var="table" items="${rs.rows}"  >  
<tr class="info">    
<td><c:out value="${table.place}"/></td>   
  <td><c:out value="${table.date}"/></td>   

<td><c:out value="${table.time_slot}"/></td>  
<td><c:out value="${table.status}"/></td> 
<%--  <td><c:out value="${table.g_point}"/></td> 
  <td><c:out value="${table.grade}"/></td>  --%>

 

 
</tr>  
</c:forEach>  

</table>  
</div>
  


</body>
</html>