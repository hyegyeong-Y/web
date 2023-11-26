<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!--  특정 라이브러리를 가져오기위한 임포트 -->

<%@ page import="member.Member" %>
<%@ page import="member.MemberDAO" %>

<!-- 자바스크립트 출력하기 위한 -->

<%@ page import="java.io.PrintWriter" %>



<%

	request.setCharacterEncoding("UTF-8");



	String userID = null;

	String userTel = null;

	
	
	
	// 입력이 되었다면 변수로 데이터값을 넣어줌

	if(request.getParameter("userID") != null){

		userID = (String)request.getParameter("userID");

	}

	if(request.getParameter("userTel") != null){

		userTel = (String)request.getParameter("userTel");

	}
	
	if(userID == null || userTel == null) {
		
		// 자바스크립트 구문으로 입력 안된 부분이 있으면 알람을 띄우고

		// history.back() 통해 전 페이지로 이동

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('입력이 안된 부분이 있습니다');");

		script.println("history.back();");

		script.println("</script>");

		script.close();

		return;

	}		
	
	

	// 정상 입력 되었다면 디비에 넣어주자 1이면 정상, -1이면 오류발생

	MemberDAO memberDAO = new MemberDAO();
	int result = memberDAO.joinCheck(userID);

	if(result == 1){ // 중복된 아이디가 있으면

		PrintWriter script = response.getWriter();

		script.println("<script>alert('중복된 아이디가 있습니다'); history.back();</script>");

		script.flush();

	} else if(result == 0) { // 중복된 아이디가 없으면

                // DB에 계정 등록

		int result2 = memberDAO.join(userID, userTel);

		PrintWriter script = response.getWriter();

		script.println("<script>alert('사전예약이 완료되었습니다'); location.href='./Thesims4web.html';</script>");

		script.flush();

	}

%>