<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html> <!-- userRequest.jsp -->

<html>
<head>
<meta http-equiv="Content-Type"content="text/html;charset=utf-8"/>
<meta name="viewport"content="width=device-width,initial-scale=1"/>
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js">
</script>
<![endif]-->
<style>
body{font-family:verdana,sns-serif;font-size:0.8em}
header,nav,section,article,footer
{border:1px solid gray; margin:5px; padding:8px;}
nav ul {margin:0; padding:0;}
nav ul li{display:inline;margin:5px;}
.id_form{width:100px; height:14px; color:blue;}
</style>
<title>로그인 실습</title>
</head>
<body>
<header>
  <h2>실습을 환영해요~~</h2></header>
</header>
<nav>
    <ul>
    <li><a href="www.dju.ac.kr">로그인~</a></li>
    <li><a href="hive.dju.ac.kr">조회~</a></li>
    </ul></nav>
<section>
	<fieldset><legend>Requeset정보 확인</legend>
  프로토콜: <%=requset.getProtocol()%><br/>
  서버이름: <%=requset.getServerName()%><br/>
  서버포트: <%=requset.getServerPort()%><br/>
  요청방법: <%=requset.getMethod()%><br/>
  요청경로: <%=requset.getRequsetURI()%><br/>
  원격호스트: <%=requset.getRequsetURL()%><br/>
  원격주소: <%=requset.getRemoteHost()%><br/>
  원격브라우저: <%=requset.getRemoteAddr()%><br/>
  원격지원파일타입: <%=requset.getHeader()%><br/>
  원격질의: <%=requset.getQueryString()%><br/>
  <% int i=0;
    Enumeration params=requset.getParameterNames();
      while(params.hasMoreElements()){
      i++;
      out.println("모수"+i+":"+params.nextElement().toString());}%><br/>
      전달모수1값: <%=requset.getParameter("userName")%><br/>
      전달모수2값: <%=requset.getParameter("userPasswd")%><br/>
      </fieldset>
      </section>
      <footer>
	<p>&copy;20XXMade by korea. All rights reserved</p>
</footer>
</body>
</html>
      