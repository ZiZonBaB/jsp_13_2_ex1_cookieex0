<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>logout.jsp</title>
</head>
<body>
<%
Cookie[] cookies = request.getCookies();

//����� ���� �ѹ� ����ֱ�!
for(int i =0;i<cookies.length;i++){
	String id = cookies[i].getValue();
	if(id.equals("abcde")){ //if���� ���� ������ ��� ��Ű�� ������ �� �ִ�!
	out.println("cookies["+i+"]�� ID��"+id+"<br>");
	cookies[i].setMaxAge(0); //setMaxAge = ��ȿ�Ⱓ�̱� ������ ��ȿ�Ⱓ�� ª�� �����ؼ� ��Ű�� �����!
			//naver �ε����� ���� ���鸸 ������ ����
	response.addCookie(cookies[i]);//response ��ü cookie ž��
	out.println(id+"��Ű�� ���� �Ǿ����ϴ�.<br>");
	out.println(id+"���� �α׾ƿ� �Ǿ����ϴ�....<br>");
	}
}
%>
<a href="cookietest.jsp">�α׾ƿ� Ȯ��</a>
</body>
</html>