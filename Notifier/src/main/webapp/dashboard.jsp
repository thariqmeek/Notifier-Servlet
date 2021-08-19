<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Notifier</title>
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
Hi     ${username}

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
 <a href="#" class="w3-bar-item w3-button">Hi ${username}</a>
  
  <a href="notebooks.jsp" class="w3-bar-item w3-button">Notebooks</a>
  <a href="notes.jsp" class="w3-bar-item w3-button">Notes</a>
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


</body>
</html>