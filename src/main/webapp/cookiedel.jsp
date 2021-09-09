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
	if(name.equals("naver")){ //if문을 넣지 않으면 모든 쿠키가 삭제될 수 있다!
	out.println("cookies["+i+"]의 Name은"+name+"<br>");
	out.println("cookies["+i+"]의 Value는"+value+"<br>");
	cookies[i].setMaxAge(0); //setMaxAge = 유효기간이기 때문에 유효기간을 짧게 설정해서 쿠키를 지운다!
			//naver 인덱스를 가진 값들만 모조리 삭제
	response.addCookie(cookies[i]);//response 객체 cookie 탑재
	out.println(name+"쿠키가 삭제 되었습니다.<br>");
	}
}
%>
<a href="cookietest.jsp">cookie 삭제 확인 페이지로 이동</a>
</body>
</html>