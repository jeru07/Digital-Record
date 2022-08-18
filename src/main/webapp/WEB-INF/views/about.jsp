<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<style>
<style>
* {
  box-sizing: border-box;
}

/* Style the body */
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

/* Header/logo Title */
.header {
  padding: 290px;
  text-align: center;
  background: #1abc9c;
  color: white;
  background-image:
		url('https://st2.depositphotos.com/3591429/10884/i/600/depositphotos_108842716-stock-photo-business-people-and-go-digital.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}


.header h1 {
  text-align:center;
  font-size: 40px;
}

.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}

.navbar a.right {
  float: right;
}

/* Change color on hover */
.navbar a:hover {
  background-color: #ddd;
  color: black;
}

/* Column container */
.row {  
  display: -ms-flexbox; 
  display: flex;
  -ms-flex-wrap: wrap; 
  flex-wrap: wrap;
  
}

.fa-home{
    position: absolute;
    top: 20px;
    left: 16px;
    font-size: 4em;
}
.side {
  -ms-flex: 30%; 
  flex: 30%;
  background-color: #f1f1f1;
  padding: 20px;
  background-color:#FFA07A;
  text-align:center;
    border: 6px solid gray;
}
.bac {
    position: absolute;
    top: 8px;
    left: 16px;
    font-size: 18px;
}
p {
  text-indent: 90px;
  text-align: justify;
  letter-spacing: 3px;
  font-size:20px;
}


.main {   
  -ms-flex: 70%; 
  flex: 70%;
  background-color: #00FF7F;
  padding: 20px;
  
}


.fakeimg {
  background-color: #aaa;
  width: 100%;
  padding: 20px;
  background-image:
		url('https://heliosed.com/wp-content/uploads/2021/02/Go-paperless-save-money.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}


.header h4 {
  color:blue;
  font-size: 30px;
  text-align:center;
}
@media screen and (max-width: 700px) {
  .row {   
    flex-direction: column;
  }
}

@media screen and (max-width: 400px) {
  .navbar a {
    float: none;
    width: 100%;
  }
}
</style>
</head>
<body>

<div class="header">
  <h1></h1>
  
</div>


<div class="row">
  <div class="side">
    <h1>ABOUT GO DIGITAL</h1>
    
   <h5 style="color: white; font-size: 20pt;">"Your Documents Anytime Anywhere"</h5>
   
    <p>Go Digital is a record maintanence trending system where you can add your documents/records
    and view it later for various purposes.It is a platform for issuance and verification of documents and certificates in a digital way, thus eliminating the use of physical documents.	Digital record  management is a system or process used to capture, track and store electronic documents such as  digital images of paper-based content.This system provides a convenient way of recovering your documents when needed. 
    </p>
  </div>
  
  <div class="main">
    <h2>BENEFITS OF USING GO DIGITAL:</h2>
    <div class="fakeimg" style="height:200px;"></div>
    <p> 1. Effectively Retrieve and Dispose Documents--
The consequences of spending too much time searching for documents can be quite severe;This is why it is important to invest in a go digital system that can facilitate retrieving records and disposing of documents past their end-of-life date.</p>
    <br>
    <p>2. Better Management Decision Making--
Making relevant data easily accessible allows people to take decisions faster so that they can stay ahead in any emergency situation. go digital software makes safer and secure documents , so that relevant data can be accessed faster.</p>
<br>
<p>3.Better Backup and Disaster Recovery--
Go digital helps users to get their documents in case of missing With digital archiving as a backup,  documents are protected from fire and flood, and other disasters. </p>
<br>
<p>4.Increased Productivity--
Time is valuable, and time saved is a definite benefit of go digital that often translates directly into increased productivity. Faster and more efficient document retrieval can uploading,updating and deleting. Also, digital record solutions are scalable to meet the changing needs of any problems.
   </p>
   <br>
    <h2></h2>
    <h5></h5>
    <div class="fakeimg" style="height:200px;"></div>
  </div>
</div>
     <a href="/user/home">
      <em class="fa fa-home" style="font-size:48px;color:yellow"></em></a>	
</body>
</html>
