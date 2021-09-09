<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
Cookie[] cookies = request.getCookies();

//지우기 전에 한번 찍어주기!
for(int i =0;i<cookies.length;i++){
	String name = cookies[i].getName();
	String value = cookies[i].getValue();
	
	out.println("cookies["+i+"]의 Name은"+name+"<br>");
	out.println("cookies["+i+"]의 Value는"+value+"<br>");
	out.println("=================================<br>");

	}

%>
</body>
</html>