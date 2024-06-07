<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Balance Info</title>
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
.input{
	background-color: rgba(0, 0, 0, 0.5);
	padding: 10px;
	border: none;
	border-radius: 10px;
	width: 150px;
}
.msg{
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
	margin-top: 23px;
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
	text-align:center;
	border: none;
	border-radius: 10px;
	margin-left: 84%;
}
</style>

<script type="text/javascript">
	function accinfo() {
		document.myfrom.action = "accountinfo.jsp";
		document.myfrom.submit();

	}
	function updateclick() {
		document.myfrom.action = "edit.jsp";
		document.myfrom.submit();

	}
	function pinchange() {
		document.myfrom.action = "changepin.jsp";
		document.myfrom.submit();

	}
	function depositeclick() {
		document.myfrom.action = "deposite.jsp";
		document.myfrom.submit();

	}
	function withdrawclick() {
		document.myfrom.action = "withdraw.jsp";
		document.myfrom.submit();

	}
	function moneytransfer() {
		document.myfrom.action = "moneytransfer.jsp";
		document.myfrom.submit();

	}
	function accinfo() {
		document.myfrom.action = "accountInfo";
		document.myfrom.submit();

	}
	function balanceclick() {
		document.myfrom.action = "balance.jsp";
		document.myfrom.submit();

	}
	function backclick() {
		document.myfrom.action ="index.jsp";
		document.myfrom.submit();

	}
	function logoutclick() {
		document.myfrom.action="index.jsp";
		document.myfrom.submit();
		
	}
	function okclick() {
		document.myfrom.action="operation.jsp";
		document.myfrom.submit();
		
	}
</script>
</head>
<body>
	<header>
		<input type="submit" value="${data.name}-Logout"
			onclick="logoutclick()">
	</header>
	<form name="myfrom">
		<main>
		<div class="method">
			<div>
				<input class="input" type="submit" onclick="accinfo()" value="Account Information">
			</div>
			<div>
				<input type="submit" class="input" onclick="updateclick()"
					value="Update Information">
			</div>
		</div>
		<div class="method">
			<div>
				<input type="submit" class="input" onclick="pinchange()" value="Change Pin">
			</div>
			<div>
				<input type="submit" class="input" onclick="depositeclick()" value="Deposite">
			</div>
		</div>

		<div class="method">
			<div>
				<input type="submit" class="input" onclick="withdrawclick()" value="withdraw">
			</div>
			<div>
				<input type="submit" class="input" onclick="moneytransfer()"
					value="Money Transfer">
			</div>
		</div>

		<div class="method">
			<div>
				<input type="submit" class="input" onclick="balanceclick()" value="check Balance">
			</div>
			<div>
				<input type="submit" class="input" onclick="backclick()" value="Back">
			</div>
		</div>
		<div>
		<input type="text" class="msg" value="${msg}" readonly="readonly" ><input type="submit" onclick="okclick()" value="OK">
		</div>

		</main>
		<footer>
			<marquee>Designed & Developed By Abhi..</marquee>
		</footer>

	</form>
</body>
</html>