<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<style>
body {
	background-color: blue;
	height: 100vh;
	font-size: 16px;
	display: flex;
	justify-content: center;
	align-items: center;
}

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
	margin-left: -10px;
	margin-top: 30px;
	height: 40px;
	border-radius: 10px;
	background: transparent;
	outline: none;
	color: white;
	cursor: pointer;
}
.submit{
width: 450px;
margin-left: 10px;

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
	font-weight: bold;
	cursor: pointer;
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
</style>
</head>
<script type="text/javascript">
function loginclick() {
	document.myfrom.action="login";
	document.myfrom.submit();
	
}
function forgateclick() {
	document.myfrom.action="forgatepass.jsp";
	document.myfrom.submit();
	
}
</script>
<body>
	<section>
		<form name="myfrom">
			<div class="content">
				<h1 class="name">Login Here</h1>
				<div id="full">
					<div id="reg">
						<div>
							<label><span>Enter Account Number </span></label>
							<div>
								<input type="text" name="accno" placeholder="Enter Account Number" required>
							</div>
						</div>
						<div class="pin">
							<label><span>Enter Pin </span></label>
							<div>
								<input type="text" name="pin" placeholder="Enter Pin" required>
							</div>
						</div>
					</div>
				</div>
				<div class="submit">
					<input type="submit" onclick="loginclick()">
				</div>
				<div class="fpass">
					<span onclick="forgateclick()"> Forgot Password ?</span>
				</div>
				<div class="otherac">
					<p>
						I Don't have an account ! <a href="signup.jsp" id="custlogin">Register</a>
					</p>
				</div>
				<div class="error">
				<span style="color: red; border: black;">${msg }</span>
				<span style="color: white; border: black;">${msg1 }</span>
				
				</div>
			</div>
		</form>
	</section>
</body>
</html>