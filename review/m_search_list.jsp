<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager"%>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.PreparedStatement"%>
<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.SQLException"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 검색 결과</title>
</head>
<body>
<h4>게시판 검색 결과</h4>
<table width="100%" border="1">

<tr>

<td>번호</td>
<td>제목</td>
<td>작성자</td>
<td>작성일</td>
<td>게임</td>

</tr>



<%
request.setCharacterEncoding("utf-8");
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;


Class.forName("com.mysql.jdbc.Driver");
String sk = request.getParameter("sk");
String sv = request.getParameter("sv");



try{
    String jdbcDriver = "jdbc:mysql://localhost:3306/game?" +
            "useUnicode=true&characterEncoding=euckr";
    String dbUser = "root";
    String dbPass = "1234";
    conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
    if(sk == null & sv == null){
        pstmt = conn.prepareStatement("select * from bbs");
        //select * from tb_member; 
    }else if(sk != null & sv.equals("")){
        pstmt = conn.prepareStatement("select * from bbs");
        //select * from tb_member; 
    }else if(sk != null & sv != null){

        pstmt = conn.prepareStatement("select * from bbs where bbsAvailable=1 and "+sk+"=?");
        pstmt.setString(1, sv);
    
    }
    out.println("<br>"+pstmt + "<--- pstmt");
    rs = pstmt.executeQuery();
    System.out.println(rs + "<-- rs m_list.jsp");
    while(rs.next()){
%>
    <tr>
        <td><%= rs.getString("bbsID")%></td>
        <td><%= rs.getString("bbsTitle")%></td>
        <td><%= rs.getString("userID")%></td>
        <td><%= rs.getString("bbsDate")%></td>
         <td><%= rs.getString("bbsGame")%></td>
       
    </tr>
    
<%        
    }    

}catch(SQLException ex) {
    out.println(ex.getMessage());
    ex.printStackTrace();

} finally {
    // 6. 사용한 Statement 종료
    if (rs != null) try { rs.close(); } catch(SQLException ex) {}
    if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
    
    // 7. 커넥션 종료
    if (conn != null) try { conn.close(); } catch(SQLException ex) {}
}
%>
</table>
</body>
</html>
