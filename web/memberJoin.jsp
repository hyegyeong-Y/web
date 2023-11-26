<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사전예약</title>
</head>
<body>
	<form action = "./memberJoinAction.jsp" method="post">
	<h3>게임 사전예약 폼</h3>
	<p>닉네임은 2자에서 9자까지 입력 가능합니다. 먼저 인게임 닉네임을 선점해보세요!</p>
		닉네임&nbsp;<input type="text" name="userID" minlength="2" maxlength="9"><br>
	<p>휴대폰 번호는 '-'를 뺀 11자 숫자만 입력해주세요.</p>
		휴대폰 번호&nbsp;<input type="text" name="userTel" maxlength="11">
	<br><br>
		<input type="submit" value="사전예약">

</form>
</body>
</html>