<%-- ������
<%@ page(������) language(�Ӽ�)="java"(��) contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
*page - �ش� JSP �������� �������� ȯ�� ����
<%@ page extends="javax.servelt.jsp.HttpJspBase">
<%@ page import="java.util.Calendar">
*include - ���� �������� �ٸ� ������ ������ ������ �� ���
*taglib - �±� ���̺귯������ �±׸� ������ ����� �� �ִ� ��� ����


 --%>





<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%!
	String str= "�ȳ��ϼ���!";
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
	<%-- JSP �±׿� ���Ͽ� --%>
	<%
		out.print(str);
		out.print("<br>");
		
		out.print(b + "�� ���밪�� " + abs(b));
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