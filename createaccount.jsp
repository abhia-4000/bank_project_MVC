
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ragister Page</title>

<style>
body {
	height: 100vh;
	font-size: 16px;
	display: flex;
	justify-content: center;
	align-items: center;
}

form {
	background: rgba(0, 0, 0, 0.6);
	box-shadow: 2px 2px 2px solid black;
	border-radius: 20px;
	height: 85vh;
	width: 900px;
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
	height: 40px;
	border-radius: 10px;
	background: transparent;
	outline: none;
	color: white;
	cursor: pointer;
}

.submit {
	margin-left: 40px;
	margin-top: 30px;
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
}

.checkbox {
	height: 15px;
	width: 20px;
	margin-left: -20px;
	cursor: pointer;
}

a {
	text-decoration: none;
	color: white;
}

.fpass {
	margin-top: 5px;
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

.remember {
	margin-top: 10px;
}

#reg {
	display: block;
	width: 400px;
	margin-left: -30px;
}
#reg2 {
	display: block;
	width: 400px;
}

#full {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 900px;
	margin-top: 50px;
}

.content {
	margin-top: 20px;
	padding: 20px;
}

#custlogin {
	text-decoration: none;
	cursor: pointer;
}

.A {
	margin-top: 10px;
}
</style>
</head>
<body>
	<section>
		<form action="registero">
			<div class="content">
				<h1 class="name">Register Here</h1>
				<div id="full">
					<div id="reg">
						<div class="A">
							<label><span>Enter Account Number </span></label>
							<div>
								<input type="text" name="accno"
									placeholder="Enter Account Number" required>
							</div>
						</div>
						<div class="A">
							<label><span>Enter Pin </span></label>
							<div>
								<input type="text" name="pin" placeholder="Enter Pin" required>
							</div>
						</div>

						<div class="A">
							<label><span>Enter Account Type </span></label>
							<div>
								<input type="text" name="acctype"
									placeholder="Enter Account Type" required>
							</div>
						</div>
					</div>

					<div id="reg2">
						<div class="A">
							<label><span>Enter name </span></label>
							<div>
								<input type="text" name="name" placeholder="Enter Name" required>
							</div>
						</div>
						<div class="A">
							<label><span>Enter Email </span></label>
							<div>
								<input type="text" name="email" placeholder="Enter Email"
									required>
							</div>
						</div>
						<div class="A">
							<label><span>Enter Amount </span></label>
							<div>
								<input type="text" name="amount" placeholder="Enter Ammount"
									required>
							</div>
						</div>
					</div>
				</div>
				<div class="submit">
					<input type="submit" id="btnRegister">
				</div>
			</div>
		</form>
	</section>
</body>
</html>