<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.tech.model.Customer" %>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit Information</title>
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
	margin-top: 0px;
	box-shadow: 2px 2px 2px solid black;
	border-radius: 20px;
	height: 85vh;
	width: 500px;
	text-align: center;
}

.name {
	margin-top: 150px;
	color: white;
	font-size: 34px;
}

input {
	width: 90%;
	margin-top: 5px;
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





.content {
	margin-top: 20px;
	padding: 20px;
}



</style>
</head>
<script type="text/javascript">
function backclick() {
	window.location.search;
	document.myfrom.action="back";
	document.myfrom.submit();
	
}
</script>

<body>
	<section>
		<form name="myfrom">
		<input style="background-color: white; color: black;"" type="text" name="accno" value="${accno}">
			<div class="content">
				<h1 class="name">Data Update Successfully..</h1>
				<h3 style="color: white; font-size: 20px;">Click the button to go Back</h3>
				<div class="submit">
					<input type="submit" onclick="backclick()" value="Back"> 
				</div>
			</div>
		</form>
	</section>
</body>
</html>