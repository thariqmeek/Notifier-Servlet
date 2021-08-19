<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
    <%@page import ="java.sql.PreparedStatement"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script>
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
}

function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}
</script>
<style >

.outer{
  background-color: #E5E7E9;    
  text-align: center;
  border: 5px outset #E5E7E9;
	align:right;
	margin:10px

}
.myDiv {
margin-top:10px;
margin-bottom:10px;
  background-color: white;    
  text-align: center;
  margin:10px

}

.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  opacity: 0.9;
  position: absolute;
  left:50%
}

.registerbtn:hover {
  opacity: 1;
}
.w3-bar-block .w3-bar-item{
width:100%;
display:block;
padding:8px 16px;
text-align:left;
border:none;
white-space:normal;
float:left;
outline:0;
color:white
}

.w3-sidebar{
height:100%;
width:200px;
background-color:black;position:fixed!important;
z-index:1;
overflow:auto;
left:0
}


.w3-border-right{
border-right:1px solid #ccc!important}
</style>

</head>
<body>
<%

	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("login.jsp");
	}
%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <button style="background-color: black; border: none; " onclick="w3_open()">
    <i class ="fa fa-bars" style="font-size:20px;color:white;"></i>
    </button>
    </div>
    <div class="w3-sidebar w3-bar-block w3-border-right" style="display:none" id="mySidebar">
  <button onclick="w3_close()" class="w3-bar-item w3-large" style="background-color: black; border: none; ">
  <i class ="fa fa-times" style="font-size:20px;color:white;"></i>
  </button>
  <div>
  
  
  </div>
    <a href="#" class="w3-bar-item w3-button">Hi ${username}</a>
  
  <a href="notebooks.jsp" class="w3-bar-item w3-button">Notebooks</a>
  <a href="#" class="w3-bar-item w3-button">Notes</a>
  <a href="#" class="w3-bar-item w3-button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Edit User</a>
</div>
 <div class="w3-teal">
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-bell"></span></a></li>
      <li><a href="Logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
      </div>
</nav>

<!-- Edit User Box -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><p style="text-align:center"> Edit User</p></h4>
        </div>
        <div class="modal-body">
        <p>Username</p>
<input type="text" placeholder="Username" class="form-control" width="48" height="48"/>
	<br>
	 <p>Mobile Number</p>
<input type="number" id="number" class="form-control" autofocus="autofocus" placeholder="Mobile"/>
<br>
	 Email:<input type="text" id="mail"   placeholder="Email"/>  Password:<input type="password" id="pwd"   placeholder="password"/> 

        </div>
        
<form action="Edituser" method="post">
          <button type="submit" class="btn btn-default" >Save</button>
          </form>
        
      </div>
    </div>
  </div>
<!-- Edit User Box -->


<div class="buttons">
  <button type="button" class="registerbtn" class="w3-bar-item w3-button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModel">Add</button><br>
  <br>
  <br>
  <br>
 <!-- Modal -->
  <div class="modal fade" id="myModel" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"> Add Notebook</h4>
        </div>
 
  <form action="Submitnb" method="post">
        
        <div class="modal-body">
        
<p>Notebook</p>
<input type="text" placeholder="NotebookName"  name="noteb" class="form-control" width="48" height="48"/>   
<input type="text" value=${username} name="uname" class="form-control" width="48" height="48" style="display:none"/>   


     </div>
          <button type="submit" class="btn btn-default" >Save</button>
          </form>
      </div>z
    </div>
  </div>
</div>
<%
String username=(String)session.getAttribute("username");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "userdb";
String userId = "root";
String password = "1234";
PreparedStatement ps;

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<div class=outer style="margin:10px 30px">

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM invnt where uname='"+username +"'";
ps = connection.prepareStatement(sql);
//ps.setString(1,"thariq");
resultSet = ps.executeQuery(sql);
while(resultSet.next()){
%>
<form action="invnb.jsp" method="post">
<button type=submit style="border:none; background-color:white; width:80% ;margin:10px" >

<div class="myDiv"  >
  <p><%=resultSet.getString("note") %></p>
  
</div>
</button>
</form>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</div>
</div>

</body>
</html>