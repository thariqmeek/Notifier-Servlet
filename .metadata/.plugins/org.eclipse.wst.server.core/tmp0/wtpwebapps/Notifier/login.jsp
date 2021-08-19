<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Notifier</title>
<style>
.boxed {
  background-color: #F5F5F5	;
  width: 350px;
  height: 350px;
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
<h1 style="text-align:center"> REMIND ME</h1>
<div class="boxed">
<h4 style="text-align:center"> Login</h4>

<form action="Login" method="post">
  <input type="text"  name="uname" placeholder="email" style="height:20px" ><br><br>
  <input type="password"  name="pass" placeholder="password" style="height:20px" ><br><br>
  <button type="submit" class="registerbtn">Login</button>
</form>
  <p>Not a member? <a href="register.jsp">Sign in</a>.</p>

</div>

</body>
</html>