<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>

	<script type="text/javascript">
		function validate(){
			
			var name=document.frm.uname.value;
			
			if(name.length==0){
				alert("Please provide your username.");
				document.frm.uname.focus();
				return false;
			}
			
			var pass=document.frm.upass.value;
			
			if(pass.length==0){
				alert("Please provide your password.");
				document.frm.upass.focus();
				return false;
				
			}
			
			var op1=document.frm.role[0].checked;
			var op2=document.frm.role[1].checked;
			var op3=document.frm.role[2].checked;
			
			if(op1==false && op2==false && op3==false){
				alert("Please choose your role");
				return false;
			}
			
		}
	</script>

</head>
<body>
	<%@include file="header.html" %>
	<br/>
	<h1 align="center" style="color: white;">Login Form!</h1>
	<hr/>
	<br/>
		<h4 style="color: red;" align="center">Username or password or role you have entered is not correct.</h4>
	<form action="role.jsp" name="frm" onsubmit="return validate();" method="post">
		<table align="center" bgcolor="#B0E0E6" width="60%" cellpadding="8" cellspacing="8">
			<tr>
				<td>Username</td>
				<td><input type="text" name="uname" size="40"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="upass" size="40"></td>
			</tr>
			<tr>
				<td>Choose Your role:</td>
				<td>
					<input type="radio" name="role" value="admin">Admin or Department Master<br/>
					<input type="radio" name="role" value="invetigation">Investigation Officer<br/>
					<input type="radio" name="role" value="writer">Writer<br/>
				</td>
			</tr>
			<tr>
				<td><a href="forget.jsp">I forget my password?</a></td>
				<td></td>
			</tr>
			<tr>
				<td><input type="submit" value="Authenticate"></td>
				<td><input type="reset" value="Reset"></td>
			</tr>
		</table>
	</form>
	
	
	<br/>
	<br/>
	<%@include file="footer.html" %>
</body>
</html>