<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>LoginOK.jsp</title>
</head>
<body>
<%!
String id,pw;
%>
<%
request.setCharacterEncoding("EUC-KR");

id = request.getParameter("id");
pw = request.getParameter("pw");

if(id.equals("abcde")&&pw.equals("12345")){
	Cookie cookie = new Cookie("id",id);
	cookie.setMaxAge(60*60);
	response.addCookie(cookie);
	
	response.sendRedirect("welcome.jsp");
}
else{
	response.sendRedirect("login.html");
}
 // 하드 코딩 : 억지로 만들기

%>
</body>
</html>