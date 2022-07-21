<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Web Server</title>
</head>
<body>

	<h3># URL�� ����</h3>
	
	<p>��������://IP�ּ�(DNS):��Ʈ��ȣ/���ϴ� �ڿ��� ���(URI)</p>
	
	<h3># �������� (Protocol)</h3>
	
	<ul>
		<li>��� ��Ģ</li>
		<li>ex> HTTP�� ������ ��û�� ������ ������ �޴´�</li>
		<li>http(80), ftp(20), https(443), telnet(23)... ���</li>
		<li>�� �������� ���� �ַ� ����ϴ� ��Ʈ��ȣ�� �ִ� (�⺻ ��Ʈ ��ȣ)</li>
		<li>
			�ش� ���������� �� ��Ʈ��ȣ�� ����Ѵٸ� IP�ּ� ����:port�� ������ �� �ִ�
			ex> http://www.naver.com:80, https://www.naver.com:443
		</li>
		<li>������, �ش� ��Ʈ��ȣ�� �ݵ�� ����� �ʿ�� ����</li>
	</ul>
	
	<h3># IP�ּ�</h3>
	
	<ul>
		<li>�� ���� ��Ʈ��ũ �󿡼� � �� ��ǻ�͸� ã�ư��� ���� �ּ�</li>
		<li>0.0.0.0 ~ 255.255.255.255 (4byte)</li>
		<li>����IP(��¥ IP�ּ�) �ϳ��� �缳IP(192.168...) �������� �ٿ� ����Ѵ�</li>
	</ul>
	
	<h3># DNS (Domain Name Service)</h3>
	
	<ul>
		<li>URL�� IP�ּ� ��� �Է��� �� �ִ� �̸�</li>
		<li>IP�ּҸ� �ܿ�� ���� ��� �ܿ�� ���� �̸����� ġȯ���ִ� ����</li>
		<li>URL�� IP�ּ� ��� �������� ����ϸ� ��ó�� DNS������ �鷯�� IP�ּҸ� ã�� �� ������ ã�ư���</li>
	</ul>
	
	<h3># ��Ʈ��ȣ (Port)</h3>
	
	<ul>
		<li>��Ʈ��ũ�� ���� ������ �����Ͱ� � ���α׷��� ���������� �����ϱ� ���� ��ȣ</li>
		<li>0 ~ 65535�� ���� �ִ�</li>
		<li>���������� ����ϴ� �� �˷��� ��Ʈ��ȣ(well-known port)���� �ִ�</li>
		<li>�� �˷��� ��Ʈ��ȣ���� URL���� ������ �����ϴ�</li>
	</ul>

</body>
</html>

