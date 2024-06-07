<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.tech.model.Customer" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<style>
body{
margin-left10px;
border:2px solid black;
width:95%;
height:85vh;
padding: 30px;
background-color: blue;
color: black;

}
h1{
color: white;
margin-left: 450px;
font-family: Times New Roman;
text-shadow: 1px 2px gray;
}
table{
background:transparent;
padding: 4px;
width:100%;
}
.logout{
margin-top: 30px;
width:90px;
padding: 6px;
background-color: #00ffff;
color: black;
border-radius: 10px;
cursor: pointer;
}
.logout:hover{
background-color: Orchid;
color: white;
}
.add{
margin-top: 30px;
width:90px;
padding: 6px;
background-color: Orchid;
color: black;
border-radius: 10px;
cursor: pointer;
}
.add:hover{
background-color: #ff8c00;
color: black;
}
.update{
margin-top: 30px;
width:90px;
padding: 6px;
background-color: #ff8c00;
color: black;
border-radius: 10px;
cursor: pointer;
}
.update:hover{
background-color: red;
color: black;
}
.delete{
margin-top: 30px;
width:90px;
padding: 6px;
background-color: red;
color: black;
border-radius: 10px;
cursor: pointer;
}
.delete:hover{
background-color: #00ffff;
color: black;
}
td{
padding: 4px;
background-color: white;
border-radius: 6px;

}

</style>
</head>
<script>
function deleteData() {
	alert("Are You Sure..?")
	document.myfrom.action="deletecust";
	document.myfrom.submit();
	
}
function updateData() {
	document.myfrom.action="adedit";
	document.myfrom.submit();
	
}
function addData() {
	document.myfrom.action="adsignupcust.jsp";
	document.myfrom.submit();
	
}
function logout() {
	document.myfrom.action="index.jsp";
	document.myfrom.submit();
	
}
</script>
<body>
<form name="myfrom">
<h1>Customer Details</h1>
<table style="text-align: center">
<tr>
<td style="background-color: cyan">Select</td>
<td style="background-color: cyan">Account Number</td>
<td style="background-color: cyan">Account Pin</td>
<td style="background-color: cyan">Name</td>
<td style="background-color: cyan">Email</td>
<td style="background-color: cyan">Account Type</td>
</tr>
<tr>
<c:forEach items="${data}" var="s">
<td><input type="radio"  name="accno" value="${s.accno}"></td>
<td><c:out value="${s.accno}"></c:out></td>
<td><c:out value="${s.pin}"></c:out></td>
<td><c:out value="${s.name}"></c:out></td>
<td><c:out value="${s.email}"></c:out></td>
<td><c:out value="${s.acctype}"></c:out></td>
</tr>
</c:forEach>
</table>
<input class="logout" type="submit" value="Logout" onclick="logout()">
<input class="add" type="submit" value="Add" onclick="addData()" >
<input class="update" type="submit" value="Update" onclick="updateData()">
<input class="delete" type="submit" value="Delete" onclick="deleteData()">
</form>
</body>
</html>