<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int you = Integer.parseInt(request.getParameter("you"));
	int com = (int)(Math.random()*3)+1;
	
	String result = null;
	int rst =you -com + 3;
	if(you==com){
		result = "비김";
	}else if(rst%3==1){
		result = "이겼습니다";
	}else if(rst%3==2){
		result = "졌습니다";
	}
%>   
<%!
public String whatMethod(int key){
	switch(key){
	case 1 : return "가위";
	case 2 : return "바위";
	case 3 : return "보";
	default : return "에러";
	}
}
%> 
<%!
public void whatMethodOut(JspWriter out,int key) throws Exception{
	switch(key){
	case 1 : out.println("가위");break;
	case 2 : out.println("바위");break;
	case 3 : out.println("보");break;
	default : out.println("에러"); break;
	}
}
%> 
<%!
public void resultOut(JspWriter out,int you, int com) throws Exception{
	int rst =you -com + 3;
	if(you==com){
		out.println("비겼습니다");
	}else if(rst%3==1){
		out.println("이겼습니다");
	}else if(rst%3==2){
		out.println("졌습니다");
	}
}
%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset=" UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>
you : <%=whatMethod(you)%><br/>
you 메서드이용 : <% whatMethodOut(out, you);%><br/>
com :  <%
	switch(com){
	case 1 : out.println("가위");break;
	case 2 : out.println("바위");break;
	case 3 : out.println("보");break;
	default : out.println("에러"); break;
	}
	%><br/>
result : <%= result %><br/>
결과 메서드이용 : <% resultOut(out,you,com); %>

</h1>
</body>
</html>