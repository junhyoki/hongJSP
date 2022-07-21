<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3># form �±�</h3>

	<ul>
		<li>���ο��� submit�� �߻��ϸ� ������ ��� �����Ϳ� �Բ� ������ ��û�� ������ �±�</li>
		<li>�����͸� ������ �� input�±��� name�Ӽ��� key������ �Ѵ�</li>
		<li>����ڰ� �Է��� ������ value ������ �Ѵ�</li>
		<li>action �Ӽ�: ��� URL�� ��û�� ������ ���´�</li>
		<li>method �Ӽ�: � ������� ��û���� ���´� (GET, POST, PUT, DELETE ...)</li>
	</ul>
	
	<h3># GET��� ��û (Servlet����)</h3>

	<ul>
		<li>�����Ͱ� URL�ڿ� �پ ��û�� �Բ� ������ ���޵ȴ�. ?key=value&key=value&...</li>
		<li>GET����� ����Ǿ ��� ���� ���鸸 �����ؾ� �Ѵ�. (��й�ȣ X)</li>
		<li>����ڰ� �ּҸ� ���� �����Ͽ� �����͸� ������ ���� �����Ƿ� �����ؾ� �Ѵ�.</li>
	</ul>

	<form action="http://localhost:8888/chap02/form/register" method="GET">
		�̸� : <input type="text" name="name" /> <br>
		���� : <input type="number" name="age" /> <br>
		��й�ȣ : <input type="password" name="pwd" /> <br>
		��� : 
		<input type="checkbox" name="hobby" value="football"/> �౸ <br>
		<input type="checkbox" name="hobby" value="swim"/> ���� <br>
		<input type="checkbox" name="hobby" value="surfing"/> ���� <br>
		<input type="checkbox" name="hobby" value="baduk"/> �ٵ� <br>
		<input type="submit" value="�����ϱ�" />
	</form>

	<h3># POST ��� ��û (Servlet����)</h3>

	<form action="http://localhost:8888/chap02/form/register" method="POST">�̸� : <input type="text" name="name" /> <br>���� : <input type="number" name="age" /> <br>��й�ȣ : <input type="password" name="pwd" /> <br>��� : <input type="checkbox" name="hobby" value="football"/> �౸ <br><input type="checkbox" name="hobby" value="swim"/> ���� <br><input type="checkbox" name="hobby" value="surfing"/> ���� <br><input type="checkbox" name="hobby" value="baduk"/> �ٵ� <br><input type="submit" value="�����ϱ�" /></form>

	<h3># �����</h3>

	<form action="http://localhost:8888/chap02/form/register" method="POST">
		<h4>�ְ���</h4>
		���� : <input type="number" name="adult" />
		û�ҳ� : <input type="number" name="teen" />
		����/��� : <input type="number" name="child/senior" /> <br>

		<h4>�߰���</h4>
		���� : <input type="number" name="adultN" />
		û�ҳ� : <input type="number" name="teenN" />
		����/��� : <input type="number" name="child/seniorN" /> <br>

		<input type="submit" value="�����ϱ�" />
	</form>
	

	<h3># GET ��� ��û (JSP��)</h3>
	
	<!-- 
		URL�� ��� ��δ� ������Ʈ ���� ������ �ƴ϶�
		������� �� ������ �ּ�â�� URL �����̴�
		
		ex: URL�� http://localhost:8888/chap02/form/form.jsp �� ��
			
			./  => http://localhost:8888/chap02/form/
			../ => http://localhost:8888/chap02/
			/   => http://localhost:8888/ (���� �������� �ֻ��� ����)
			//  => http://		
	 -->

	<form action="./register.jsp" method="GET">
		�̸� : <input type="text" name="name" /> <br>
		���� : <input type="number" name="age" /> <br>
		��й�ȣ : <input type="password" name="pwd" /> <br>
		��� : 
		<input type="checkbox" name="hobby" value="football"/> �౸ <br>
		<input type="checkbox" name="hobby" value="swim"/> ���� <br>
		<input type="checkbox" name="hobby" value="surfing"/> ���� <br>
		<input type="checkbox" name="hobby" value="baduk"/> �ٵ� <br>
		<input type="submit" value="�����ϱ�" />
	</form>
	
	

</body>
</html>