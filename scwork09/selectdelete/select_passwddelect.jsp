<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPEhtml> <!--select_passwddelect.jsp-->
<html><head>
<meta http-equiv="Contetn-Type" content="text/html; charset=utf-8"/>
<meta name="viewport"content="width=device-width,initial-scale=1"/>
<title>JDBCselect_passwd실습</title></head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver"); //mySQL
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hdbwork","hstud","gkrtod123A!");


String sql = "DELETE FROM t20151612 WHERE stud_id=?;";
PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1,"kingsup");
pstmt.executeUpdate();


pstmt.close();
conn.close();
%>
삭제완료했지롱
</body>
</html>