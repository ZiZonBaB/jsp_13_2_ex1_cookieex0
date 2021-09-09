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

//out.println("cookie의 Name은"+cookies[0].getName()+"<br>"); 
//out.println("cookie의 Value는"+cookies[0].getValue()+"<br>"); 
//out.println("cookie의 Max_Age는"+cookies[0].getMaxAge()+"<br>"); //갱신이 되지 않는 이유 0이 들어가 있어서
//cookie Max_Age는 보는것이 의미가 없다.

for(int i =0;i<cookies.length;i++){
	String name = cookies[i].getName();
	String value = cookies[i].getValue();
	if(name.equals("naver")){
	out.println("cookies["+i+"]의 Name은"+name+"<br>");
	out.println("cookies["+i+"]의 Value는"+value+"<br>");
	out.println("====================================<br>");
	}
}
%>
</body>;
</html>