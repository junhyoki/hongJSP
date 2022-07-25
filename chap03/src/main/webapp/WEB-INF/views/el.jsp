<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%	
	application.setAttribute("fruit", "dragonfruit");
	session.setAttribute("fruit", "peach");
	request.setAttribute("fruit", "orange");
	pageContext.setAttribute("fruit", "pineapple");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL</title>
</head>
<body>

	<h3># EL (Expression Language)</h3>
	
	<ul>
		<li>JSP���� ��Ʈ����Ʈ�� ����ִ� ���� ���ϰ� ����� �� �ִ� ����</li>
		<li>
			���� ������ ���� name�� ���� ��Ʈ����Ʈ�� �����Ѵٸ�
			���� ����� ������ ���� ���� ����Ѵ�.
			(page -> request -> session -> application)	
		</li>
		<li>
			��Ȯ�ϰ� �����ϰ� �ʹٸ� �ش� ���� �̸��� �տ� ����ؾ� �Ѵ�.
			(pageScope, requestScope, sessionScope, applicationScope)
		</li>
	</ul>
	
	<h3># EL�� ��Ʈ����Ʈ�� ����� �� ����ϱ�</h3>
	
	<ul>
		<li>���� �׳� ���	: ${fruit }</li>
		<li>������ ����		: ${pageScope.fruit }</li>
		<li>������Ʈ ����	: ${requestScope.fruit }</li>
		<li>���� ����		: ${sessionScope.fruit }</li>
		<li>���ø����̼� ����	: ${applicationScope.fruit }</li>
	</ul>
	
	
	<h3># EL�� ���ͷ�</h3>
	
	<ul>
		<li>boolean type: ${true }, ${false }</li>
		<li>���� Ÿ��: ${123 }, ${456 }. ${123 * 444 }</li>
		<li>�Ǽ� Ÿ��: ${123.1234 * 3 }</li>
		<li>���ڿ� Ÿ�� : ${'Hello!!' }, ${"Hello!!" }</li>
	</ul>
	
	<h3># EL�� ������</h3>
	
	<dl>
		<dt><b>��� ������:</b> +, -, *, /, %, mod</dt>
		<dd>${'${15 % 10 } = '}${15 mod 10 }</dd>
		<dt>
			<b>�� ������:</b>
			&lt;, &gt;, &le;, &ge;, ==, !=, <br>
			eq(equal), ne(not equal), <br>
			lt(less than), gt(greater than), <br>
			le(less than equal), ge(greater than equal)
		</dt>
		<dd>
			${'${15 eq 15}' } = ${15 eq 15 } <br>
			${'${15 ne 15}' } = ${15 != 15 }
		</dd>
		<dt>
			<b>�� ������: </b>and, or, not, &&, ||, !
		</dt>
		<dd>
			${(fruit eq 'pineapple') and (applicationScope.fruit eq 'dragonfruit') },
			<% pageContext.setAttribute("a", 22); %>
			${a % 2 == 0 && a % 11 == 0 }
		</dd>
		<dt>
			<b>���� ������: </b>condition ? yes : no
		</dt>
		<dd>
			<% request.setAttribute("apple", 20); %>
			${apple % 10 == 0 ? '<b>�ٱ��� / 10</b>' : '<b>�ٱ��� / 10 + 1</b>' }
		</dd>
	</dl>



</body>
</html>