<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Notifier-Register</title>
<style>
.boxed {
  background-color: #F5F5F5	;
  width: 400px;
  height: 400px;
  padding: 10px;
  margin:  auto;
}

.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}
.boxed input{  
		display: inline-block;
		text-align: left;
		float: center;
	}
</style>
</head>
<body>

<div class="boxed">
<h1 style="text-align:center"> Sign-Up</h1>

<form action="Register" method="post">
  <input type="text"  name="uname" placeholder="username" style="height:20px" ><br><br>
  <input type="number"  name="phone" placeholder="phone" style="height:20px" ><br><br>
  <input type="text"  name="email" placeholder="email" style="height:20px" ><br><br>
  <input type="password"  name="pswd" placeholder="password" style="height:20px" ><br><br>
  <input type="password"  name="cpswd" placeholder="confirm-password" style="height:20px" ><br><br>
  <button type="submit" class="registerbtn">Register</button>
</form>
  <p>Already a User? <a href="login.jsp">Log-in</a>.</p>

</div>

</body>
</html>