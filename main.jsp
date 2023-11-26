<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 화면 최적화 -->
<meta name="viewport" content="width-device-width", initial-scale="1">
<!-- 루트 폴더에 부트스트랩을 참조하는 링크 -->
<link rel="stylesheet" href="css/bootstrap.css">
<title>GRF</title>
</head>
<body>
	<%
		// 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
	%>
	<nav class="navbar navbar-default"> <!-- 네비게이션 -->
		<div class="navbar-header"> 	<!-- 네비게이션 상단 부분 -->
			<!-- 네비게이션 상단 박스 영역 -->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<!-- 이 삼줄 버튼은 화면이 좁아지면 우측에 나타난다 -->
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<!-- 상단 바에 제목이 나타나고 클릭하면 main 페이지로 이동한다 -->
			<a class="navbar-brand" href="main.jsp">GRF</a>
		</div>
		<!-- 게시판 제목 이름 옆에 나타나는 메뉴 영역 -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="./review/bbs.jsp">게시판</a></li>
			</ul>
			<%
				// 로그인 하지 않았을 때 보여지는 화면
				if(userID == null){
			%>
			<!-- 헤더 우측에 나타나는 드랍다운 영역 -->
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<!-- 드랍다운 아이템 영역 -->	
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
			<%
				// 로그인이 되어 있는 상태에서 보여주는 화면
				}else{
			%>
			<!-- 헤더 우측에 나타나는 드랍다운 영역 -->
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span></a>
					<!-- 드랍다운 아이템 영역 -->	
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>

			<%
				}
			%>
			
			<!-- 관리자일때만 메뉴확인가능 -->
<% 
if(userID != null && userID.equals("admin")){ 
	%>
	&nbsp;&nbsp;<input type="button" value="회원전체목록(관리자용)" onclick="location.href='userList.jsp'">
	<%
}
%>

    	</div>
    </nav> 
  				  <!-- 메인홈페이지 -->
     <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,400" rel="stylesheet">
  	<link rel="stylesheet" href="fontello-bcf36fd2/css/fontello.css">
  <style>
    body {
      background-image: url(images/bg.jpg);
      background-size: cover;
      min-height: 100vh;
      font-family: 'Source Sans Pro', sans-serif;
    }
    /*헤더*/
    #header{
      margin-top:2rem;
      text-align: center;
    }
    #header .avatar {
      border: 1px solid rgba(255, 255, 255, 0.28);
      border-radius: 100%;
      display: inline-block;
      padding: 0.2rem;

    }
    
    #header img {
      border-radius: 70%;
      display: block;
      
    }
    #header h1{
      margin-top:2rem;
    }
    #header h1,
    #header h1 a {
      color: rgba(255, 255, 255, 0.62);
      font-weight: 200;
      font-size: 1.2rem;
    }
    
    #header h1 a {
      text-decoration: none;
      border-bottom: 1px dotted rgba(255, 255, 255, 0.62);
    }
    
  
    #header  .label {
      display: none;
    }
    
    * {
      box-sizing: border-box;
    }
    			 /*메인 그림들*/
    #main {
      max-width: 67rem;
      margin:0 auto;
      margin-top:2rem;
    }
    
    #main .thumbnails {
      display: flex;
    }
    
    #main .thumbnails div {
      width: 100%;
      margin: 0 0.3rem;
    }
    
    #main .thumbnails a {
      display: inline-block;
      width: 100%;
      margin: 0.6rem 0;
    }
    
    #main .thumbnails img {
      width: 100%;
      display: block;
      border: 1px solid rgba(255, 255, 255, 0.21);
      border-bottom: none;
      border-top-left-radius: 6px;
      border-top-right-radius: 6px;
    }
    
    #main .thumbnails a {
      text-decoration: none;
    }
    
    #main .thumbnails h3 {
      margin: 0;
      font-size: 0.8rem;
      font-weight: 200;
      color: rgba(255, 255, 255, 0.82);
      padding: 1rem;
      background-color: rgba(255, 255, 255, 0.13);
      border: 1px solid rgba(255, 255, 255, 0.21);
      border-top: none;
      border-bottom-left-radius: 6px;
      border-bottom-right-radius: 6px;
    }
    
    #footer {
      text-align: center;
      margin-top:3rem;
    }
    
    #footer:before {
      content: '';
      border-bottom: 1px solid white;
      width: 7rem;
      display: block;
      margin: 2rem auto;
    }
    
    #footer,
    #footer a {
      color: rgba(255, 255, 255, 0.78);
      font-weight: 200;
      font-size: 1rem;
    }
    #wrapper{
      padding:2rem;
    }
    @media (max-width:800px){
      #main .thumbnails{
        flex-direction: column;
      }
      #main .thumbnails h3{
        font-size:1.3rem;
        padding:1.3rem;
      }
    }

/*버튼들*/

  #button_two button{
    border:  1px solid purple;
    background-color: rgba(0,0,0,0);
    color: purple;
    padding: 5px;
    margin: auto;
    display: block;
  }
  #button_two button:hover{
    color: white;
    background-color: purple;
  }
   

 </style>
  <div id="wrapper">
    <header id="header">
      <span class="avatar">
       <img src="images/avatar.png" alt="" width=70% height = 70% >
        </span>
      <h1>
          This is  <strong>GRF</strong>, a game reservation flatform <br><br>
					아래 이미지를 클릭하여 게임들의 정보를 확인하실 수 있습니다.
        </h1>
    </header>
          <main id="main">
      <section class="thumbnails">
        <div>
          <a href="./web/Thesims4web.html">
            <img src="images/thumbs/01.webp">
            <h3>더심즈4 vr버전</h3>
          </a>
          <a href="./web/lolweb.html">
            <img src="images/thumbs/02.jpg">
            <h3>리그오브레전드</h3>
          </a>
        </div>
        <div>
          <a href="./web/talesrunnerweb.html">
            <img src="images/thumbs/03.png">
            <h3>테일즈런너</h3>
          </a>
          <a href="./web/mapleweb.html">
            <img src="images/thumbs/04.jpg">
            <h3>메이플스토리</h3>
          </a>
        </div>
        <div>
          <a href="./web/lostarkweb.html">
            <img src="images/thumbs/05.jpeg">
            <h3>로스트아크</h3>
          </a>
        </div>
        
      </section>
        
       	<br><br><br><br><br>
        <button type="button" class="reservation-button" onclick="location.href='web/memberJoin.jsp';">사전예약버튼(오류시)</button>
        <a href="./RockScissorsPaper/rsp.html" onClick="alert('새창이 뜰테니 놀라지 마세요')" class="reservation-button">이벤트버튼(오류시)</a>
    </main>
    <footer id="footer">
      <p>© Untitled. All rights reserved. Design: <a href="http://templated.co">TEMPLATED</a>. Demo Images: <a href="http://unsplash.com">Unsplash</a>.</p>
    </footer>
  </div>

    <!-- 부트스트랩 참조 영역 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>      
	
	
	
</body>
</html>