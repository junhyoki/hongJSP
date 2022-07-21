<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title># Http Session</title>
</head>
<body>

	<ol>
		<li>�� ������ ó�� �����ϴ� ������� ��Ű�� ����ID�� �߰��Ѵ�.</li>
		<li>�� ��, ����ID�� �Ժη� ����/�����ϱ� ���� ����� ���̾�� �Ѵ�.</li>
		<li>������� ��Ű�� ����� ����ID�� �ش� ����ڰ� ��û�� ���� ������ �Բ� �Ƿ����� �ȴ�.</li>
		<li>��Ű�� ����� ����ID�� �⺻������ ������� �� �������� ����� ������ �����ȴ�.
			(����, ������ ������ �� �ִ�)</li>
		<li>���ǿ� �����͸� �����ϴ� ���� ���� ��ǻ���� �ڿ��� ����ϴ� ���̹Ƿ�,
			�ʹ� ���� �����͸� �����ؼ��� �ȵȴ�.</li>
	</ol>
	
	<h3># ���� ��Ʈ����Ʈ �߰��ϱ�</h3>
	
	<form action="./add.jsp" method="POST" id="attrAddForm">
		<input type="text" name="key" placeholder="Input Key" autocomplete="off" />
		<input type="text" name="value" placeholder="Input Value" autocomplete="" />
	</form>
	
	<!-- �ش� form �ٱ��� �ش� form �Ҽ��� id�Ӽ��� ���� input �±׸� �߰��� ���� �ִ� -->
	<input type="number" name="age" form="attrAddForm" placeholder="Input Age" disabled />
	<input type="submit" form="attrAddForm"/>
	
	<hr>
	
	<form action="/chap02/attribute/change" method="POST" id="changeform"></form>
	<form action="/chap02/attribute/remove" method="POST" id="removeform"></form>
	<%
		// ���� ���ǿ� �ִ� ��� ��Ʈ����Ʈ���� html�� ���
		
		// ���ǿ� �ִ� ��� ��Ʈ����Ʈ�� �̸�(key)���� ����
		java.util.Enumeration<String> attrNames = session.getAttributeNames();
	
		// ���� ��Ұ� ������ �ݺ�
		
		out.print("<table border=\"1\"><tr><th>Key</th><th>Value</th>" 
			+ "<th>�� ����</th><th>����</th></tr>");
		
		while (attrNames.hasMoreElements()) {
			String attrName = attrNames.nextElement(); // ��Ʈ����Ʈ �̸��� �ϳ� ����
			
			if (attrName != null) {
				out.print(String.format("<tr><td>%s</td><td>%s</td>"
				+ "<td><input type=\"text\" name=\""+ attrName +"\" form=\"changeform\"><button name=\"attrName\" value=\""+ attrName +"\" form=\"changeform\">����</button></td>"
				+ "<td><button name=\"removekey\" value=\""+ attrName +"\" form=\"removeform\">����</button></td></tr>",
					attrName, session.getAttribute(attrName)));
			}
		}
		out.print("</table>");
		
	%>
	
</body>
</html>