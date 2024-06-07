
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Account Details</title>


<style>
body {
	height: 100vh;
	font-size: 16px;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: blue;
}

form {
	background: rgba(0, 0, 0, 0.6);
	box-shadow: 2px 2px 2px solid black;
	border-radius: 20px;
	height: 85vh;
	width: 900px;
	text-align: center;
}

.submit input {
	margin-left: -10px;
	height: 40px;
	border-radius: 10px;
	background: transparent;
	outline: none;
	color: white;
	cursor: pointer;
	width: 300px;
}

.submit {
	margin-top: 50px;
}

input:required+span {
	color: white;
	margin-left: -20px;
}

.content {
	margin-top: 20px;
	padding: 20px;
}

.name {
	color: white;
}

.info {
	color: white;
	margin-top: 50px;
	
	font-size: 1.5em;
}

.name {
	margin-top: 20px;
}

.A {
	color: white;
}
</style>
</head>
<script>
	function backclick() {
		window.location.search;
		document.myfrom.action = "back";
		document.myfrom.submit();

	}
</script>
<body>

	<form name="myfrom">
		<div class="content">
			<input type="hidden" name="accno" value="${data.accno}">
			<h1 class="name">Account Information</h1>
			<div class="info">
			<div class="name">
				Account Number is : <span class="A">${data.accno }</span>		
			</div>
				<div class="name">
					Account Name Is : <span class="A">${data.name}</span>
				</div>
				<div class="name">
					Account Type Is : <span class="A">${data.acctype}</span>
				</div>
				<div class="name">
					Account Pin Is : <span class="A">${data.pin}</span>
				</div>
				<div class="name">
					Account Email Is : <span class="A">${data.email}</span>
				</div>
			</div>
			<div class="submit">
				<input type="submit" value="OK" onclick="backclick()"
					id="btnRegister">
			</div>
		</div>
	</form>
</body>
</html>