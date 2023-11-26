<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>마지막 이벤트</title>
<style>
	.font {
		font-size : 20px;
		color: white;
	}
	.submit {
  width: 400px;
}
.btn {
  float: left; 
  width: 100%; 
  text-align: center;
  margin-top: -4px;
  border: 4px solid #FFC0CB;
  background-color: #FFC0CB;
  color:white;
  font-size:24px;
  padding-top:22px;
  padding-bottom:22px;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  transition: all 0.3s;
  box-sizing: border-box;
  text-decoration: none;
}
.btn:hover {
 
  background-color: transparent;
  color: lightcoral;
}


</style></head>
<body>
	<h3>회전하는 텍스트를 보고 쿠폰 번호를 맞춰보세요</h3>
	<hr>
	<div class = "font"><span id="span" style="background-color:lightcoral;">
	쿠폰 번호 : shsmsrpwpdlfwhgdk</span>
</div>
<script>
	var span = document.getElementById("span");
	var timeID = setInterval("doRotate()",110);

	

	function doRotate() {
		var str = span.innerHTML;
		var firstChar = str.substr(0,1);
		var remains = str.substr(1, str.length-1);
		str = remains + firstChar;
		span.innerHTML = str;
	}
</script>
<br><br><br><br><br>

<div class="submit">
  	<a href="../main.jsp" class="btn">메인으로</a>
  	<a href="../web/Thesims4web.html" class="btn">이전 홈페이지로</a>
		</div>
</body>
</html>