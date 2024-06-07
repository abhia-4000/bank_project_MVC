<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.tech.model.Customer" %>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<style>
body {
	height: 100vh;
	font-size: 16px;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: blue;}

form {
	background: rgba(0, 0, 0, 0.6);
	margin-top: 0px;
	box-shadow: 2px 2px 2px solid black;
	border-radius: 20px;
	height: 85vh;
	width: 500px;
	text-align: center;
}

.name {
	margin-top: 30px;
	color: white;
}

input {
	width: 90%;
	margin-top: 5px;
}

input[type=text]
	{
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 25px;
	color: white;
}

.submit input {
	margin-left: 10px;
	margin-top: 30px;
	height: 40px;
	border-radius: 10px;
	background: transparent;
	outline: none;
	color: white;
	cursor: pointer;
}
.submit{
display: flex;
justify-content: space-between;
align-items: center;
width: 450px;
margin-left: 20px;
margin-top: 10px;
}
.input-box {
	margin-top: 10px;
}

label {
	font-weight: bold;
	font-family: sans-serif;
	margin-top: 10px;
	font-size: 16px;
	color: white;
	margin-top: 20px;
}
a {
	text-decoration: none;
	color: white;
}

.fpass {
	margin-top: 20px;
	font-size: 14px;
	font-family: sans-serif;
	color: white;
}

.otherac {
	color: white;
	margin-top: 5px;
	font-weight: bold;
	font-family: sans-serif;
}

.otherac a:hover {
	text-decoration: underline;
	font-weight: none;
}

input:required+span {
	color: white;
	margin-left: -20px;
}
#reg {
	display: block;
	width: 400px;
}

#full {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 400px;
	margin-left:30px;
	margin-top: 70px;
}

.content {
	margin-top: 20px;
	padding: 20px;
}

#custlogin {
	text-decoration: none;
	cursor: pointer;
}
.pin{
margin-top: 20px;
}
.error{
margin-top: 40px;
font-weight: bold;
border: black;
}
</style>
</head>
<body>
	
		<form action="accinfo">
			<div class="content">
				<h1 class="name">Edit Info</h1>
				<div id="full">
					<div id="reg">
						<div>
							<label><span>Enter Account Number </span></label>
							<div>
								<input type="text" name="accno" required>
							</div>
						</div>
						<div class="pin">
							<label><span>Enter Pin </span></label>
							<div>
								<input type="text" name="pin" required>
							</div>
						</div>
					</div>
				</div>
				<div class="submit">
					<input type="submit" value="Get Info"> 
				</div>
				<div class="error">
				<span style="color: red">${msg}</span>
				</div>
			</div>
		</form>
	
</body>
</html>