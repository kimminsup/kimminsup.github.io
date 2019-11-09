<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPEhtml> <!--select_passwd.jsp-->
<html><head>
<meta http-equiv="Contetn-Type" content="text/html; charset=utf-8"/>
<meta name="viewport"content="width=device-width,initial-scale=1"/>
<title>JDBCselect_passwd실습</title></head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver"); //mySQL
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hdbwork","hstud","gkrtod123A!");


String sql = "INSERT into t20151612 (stud_id, stud_passwd, stud_name, stud_email, stud_gender)VALUES(?,?,?,?,?);";

PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1,"minsup2");
pstmt.setString(2,"1234");
pstmt.setString(3,"kimsup");
pstmt.setString(4,"min@naver.com");
pstmt.setString(5,"male");
pstmt.executeUpdate();

String sql2 = "SELECT * FROM t20151612 WHERE stud_id=?;";
PreparedStatement pstmt2 = conn.prepareStatement(sql2);
pstmt2.setString(1,"minsup2");
ResultSet rs = pstmt2.executeQuery();

while(rs.next()){
out.println(rs.getString("stud_id"));
out.println(rs.getString("stud_passwd"));
out.println(rs.getString("stud_name"));
}
rs.close();
pstmt.close();
conn.close();
%>
</body>

</html>