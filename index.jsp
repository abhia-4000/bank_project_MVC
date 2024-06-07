<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bank Project Home Page</title>
     <link re="stylesheet" href="css/bootstrap.css"></link>
    
    <style>
        body{
            background-color: blue;
            font-family: sans-serif;
        }
        header{
            position: fixed;
            background-color: blue;
            top: 0;
            left: 0;
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: white;
            
        }
        select{
            margin-left: -500px;
            margin-top: -15px;
        }

        .logo{
            font-family: brush script mt;
            margin-left: 10px;
            font-size: 20px;
            color: white;
        }
        .btn{
        	padding: 10px;
        	width: 100px;
        	margin-right: 20px;
        	border-radius: 10px;
        	cursor: pointer; 
        	border: none;
        }
        .btn:hover{
        	 background-color: rgba(0, 0, 0, 0.5);
        	 color: white;
        	 transition: 1s;
        }
        main{
            background-color: rgba(0, 0, 0, 0.5);
            margin-top: 90px;
            height: 70vh;
            width: 100%;
        }
        .img{
            width: 350px;
            height: 50vh;
            padding: 60px;
            float: left;
            margin-top: 0px;
            color: white;
        }
        .heading{
            color: white;
            height: 150px;
            line-height: 20px;
            position: absolute;
            margin-top: 90px;
            margin-left: 500px;
        }
        h2{
            font-family: arial;
            font-size: 50px;
        }
        .heading h2::first-letter{
            font-size: 200%;
            font-family: Franklin Gothic Medium;
        }
        h1{
            position: relative;
            color: #22222200;
            margin-top: -10px;
            font-family: brush script MT;
            font-size: 2em;
        }
        h1::before{
            content: attr(data-text);
            position: absolute;
            color: #fff;
            width: 100px;
            overflow: hidden;
            white-space: nowrap;
            /* border-right: px solid #fff; */
            animation: animate 12s linear infinite;
            filter: drop-shadow(0 0 20px #0f0f0f)drop-shadow(0 0 50px #161010);
        }

        @keyframes animate{
            0%,10%,100%
            {
                width: 0;
            }
            70%,90%
            {
                width: 100%;
            }
        }
        #custregisters{
            color: whitesmoke;
            margin-left: 600px;
            margin-top: 20px;
            cursor: pointer;
        }
        a{
        	text-decoration: none;
        	color: white;
        	font-size: 14px;
        	margin-left: 550px;
        	margin-top: 20px;
        	font-weight: bold;
        }
        footer{
            background-color: black;
            color: white;
            padding: 5px;
            margin-top: 58px;
        }
    </style>   
 </head>
 <script>
 function uloginclick() {
	 document.login.action="login.jsp";
	 document.login.submit();
	
}
 function aloginclick() {
	 document.login.action="adminlogin.jsp";
	 document.login.submit();
	
}
 function supportclick() {
	 alert("\nGive a missed call\n"+
			     "\t+91-9289200017\n\n"+
			"Send SMS \n"+
			    "\tHDFCHOME at 56767")
	 docement.login.action="index.jsp";
	 document.login.submit();
	
}
 </script>
<body>
<form name="login">
    <header>
            <h3 class="logo">HdfcBank.com</h3>
            <div class="navigation">
            <input class="btn" type="submit" value="Home" onclick="homeclick()">
            <input class="btn" type="submit" value="Support" onclick="supportclick()">
            <input class="btn" type="submit" value="Admin Login" onclick="aloginclick()">
            <input class="btn" type="submit" value="User Login" onclick="uloginclick()">
            </div>
    </header>
   <section>
    <main>
        <div>
        <img src="D:\BankProject\public\images/bank.jpg" class="img">
            <div class="heading">
                <h2>WELCOME TO HDFC BANK</h2>
                <h1 data-text="&nbsp; We Understand Your World .. &nbsp;">&nbsp; We Understand Your World .. &nbsp;</h1>
                <a href="signup.jsp">Join With Us</a>
            </div>
        </div>
       </main>
       <footer><marquee>Designed & Developed By Abhi..</marquee></footer>
   </section>
   </form>
</body>
</html>