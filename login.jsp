<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>GRF</title>
</head>
<body>
  <nav class="navbar navbar-default">
  	<div class="navbar-header">
  		<button type="button" class="navbar-toggle collapsed"
  			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
  			aria-expanded="false">
  			<span class="icon-bar"></span>	
  			<span class="icon-bar"></span>	
  			<span class="icon-bar"></span>	
  		</button>
  		<a class="navbar-brand">GRF 로그인</a>
  		
  	</div>
  	
  		<ul class="nav navbar-nav navbar-right">
  			<li class="dropdown">
  				<a href="#" class="dropdown-toggle" 
	  				data-toggle="dropdown" role="button" aria-haspopup="true"
	  				aria-expanded="false">접속하기<span class="caret"></span></a>
  				<ul class="dropdown-menu">
  				  <li class="active"><a href="login.jsp">로그인</a></li>
  				  <li><a href="join.jsp">회원가입</a></li>
  				</ul>
  			</li>
  		</ul>
  	</div>
  </nav>
  <div class="container">
  	<div class="col-lg-4"></div>
  	<div class="col-lg-4">
  		<div class="jumbotron" style="padding-top: 20px;">
  			<form method="post" action="loginAction.jsp">
  				<h3 style="text-align: center;">로그인 화면</h3>
  				<h5 style="text-align: center;">로그인 하시면 GRF페이지에 접속하실 수 있습니다.</h5>
  				<h5 style="text-align: center;">아이디가 없으신 분은 오른쪽 위 접속하기에서 회원가입하기를 눌러주세요.</h5>
  				<div class="form-group">
  					<input type="text" class="form-control" placeholder="아이디" name="userID" maxlenth="20">
  				</div>
  				<div class="form-group">
  					<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlenth="20">
  				</div>
  				<input type="submit" class="btn btn-primary form-control" value="로그인">
  			</form>
  		</div>
  	</div>
  	<div class="col-lg-4"></div>
  </div>
  
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
</body>
</html>