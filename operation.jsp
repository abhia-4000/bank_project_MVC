<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Customer Home Page</title>
<style>
body {
	background-color: blue;
	font-family: sans-serif;
}

input {
	background-color: transparent;
	color: white;
	border: none;
	cursor: pointer;
}

.input {
	background-color: rgba(0, 0, 0, 0.5);
	padding: 10px;
	border: none;
	border-radius: 10px;
	width: 150px;
}

.msg {
	background-color: rgba(0, 0, 0, 0.5);
	padding: 10px;
	border: none;
	border-radius: 10px;
	width: 200px;
	margin-left: 40%;
	cursor: no-drop;
	text-align: center;
}

main {
	background-color: rgba(0, 0, 0, 0.5);
	margin-top: -30px;
	height: 90vh;
	width: 100%;
}

main div {
	color: white;
	margin-top: 40px;
}

main div a {
	text-decoration: none;
	color: white;
	cursor: pointer;
}

.Exit {
	margin-left: 650px;
}

hr {
	margin-top: 30px;
}

footer {
	margin-top: 40px;
	background-color: black;
	color: white;
	padding: 10px;
}

.method {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin: 40px;
	color: white;
}

header {
	background-color: blue;
	width: 130px;
	padding: 7px;
	text-align: center;
	border: none;
	border-radius: 10px;
	margin-left: 84%;
}
</style>

<script type="text/javascript">
	function accinfo() {
		window.location.search;
		document.myfrom.action = "info";
		document.myfrom.submit();

	}
	function updateclick() {
		window.location.search;
		document.myfrom.action = "before_edit";
		document.myfrom.submit();

	}
	function pinchange() {
		window.location.search;
		document.myfrom.action = "before_pinchange";
		document.myfrom.submit();

	}
	function depositeclick() {
		window.location.search;
		document.myfrom.action = "deposite";
		document.myfrom.submit();

	}
	function withdrawclick() {
		window.location.search;
		document.myfrom.action = "withdraw";
		document.myfrom.submit();

	}
	function moneytransfer() {
		window.location.search;
		document.myfrom.action = "moneytransfer";
		document.myfrom.submit();

	}
	function balanceclick() {
		window.location.search;
		document.myfrom.action = "balance";
		document.myfrom.submit();

	}
	function backclick() {
		document.myfrom.action = "index.jsp";
		document.myfrom.submit();

	}
	function logoutclick() {
		document.myfrom.action = "index.jsp";
		document.myfrom.submit();

	}
	function okclick() {
		document.myfrom.action = "index.jsp";
		document.myfrom.submit();

	}
</script>
</head>
<body>
	<header>
	<span style="color: red;">${error}</span>

		<div>
			<input type="submit" name="name" value="Logout" onclick="logoutclick()">
		</div>
	</header>
	<form name="myfrom">
	<input type="hidden" name="accno" value="${accno}">
		<main>
		<div class="method">
			<div>
				<input class="input" type="submit" onclick="accinfo()"
					value="Account Information">
			</div>
			<div>
				<input type="submit" class="input" onclick="updateclick()"
					value="Update Information">
			</div>
		</div>
		<div class="method">
			<div>
				<input type="submit" class="input" onclick="pinchange()"
					value="Change Pin">
			</div>
			<div>
				<input type="submit" class="input" onclick="depositeclick()"
					value="Deposite">
			</div>
		</div>

		<div class="method">
			<div>
				<input type="submit" class="input" onclick="withdrawclick()"
					value="withdraw">
			</div>
			<div>
				<input type="submit" class="input" onclick="moneytransfer()"
					value="Money Transfer">
			</div>
		</div>

		<div class="method">
			<div>
				<input type="submit" class="input" onclick="balanceclick()"
					value="check Balance">
			</div>
			<div>
				<input type="submit" class="input" onclick="backclick()"
					value="Back">
			</div>
		</div>
		<div>
		<span style="margin-left:40%;  padding: 10px; color: white">${msg}</span>
		</div>
		</main>
		<footer>
			<marquee>Designed & Developed By Abhi..</marquee>
		</footer>

	</form>
</body>
</html>