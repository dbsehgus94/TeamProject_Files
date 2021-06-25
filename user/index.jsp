<%-- 지시자
<%@ page(지시자) language(속성)="java"(값) contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
*page - 해당 JSP 페이지의 전반적인 환경 설정
<%@ page extends="javax.servelt.jsp.HttpJspBase">
<%@ page import="java.util.Calendar">
*include - 현재 페이지에 다른 파일의 내용을 삽입할 때 사용
*taglib - 태그 라이브러리에서 태그를 꺼내와 사용할 수 있는 기능 제공


 --%>





<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%!
	String str= "안녕하세요!";
	int a = 5, b = -5;
	
	public int abs(int n) {
		if(n < 0) {
			n = -n;
		}
		return n;
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>?!!!?</h1>
	<%-- JSP 태그에 관하여 --%>
	<%
		out.print(str);
		out.print("<br>");
		
		out.print(b + "의 절대값은 " + abs(b));
		out.print("<br>");
		
		int num1 = 20;
		int num2 = 10;
		int add = num1 + num2;
		out.print(num1 + "+" + num2 + "=" + add);
		out.print("<br>");
	%>
	<%=num1%>+<%=num2%>=<%=add%>
</body>
</html>