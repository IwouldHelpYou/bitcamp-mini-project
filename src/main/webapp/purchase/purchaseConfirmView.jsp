<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%-- EL/jSTl ��ȯ
<%@ page import="com.model2.mvc.service.product.vo.*" %>
    
<% 
	ProductVO vo = (ProductVO)request.getAttribute("productVO");
%>
--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/layout/background.jsp" />
/purchaseConfirmView.jsp

���� ��� �Ϸ�!

<a href="/purchase/payment?">�����Ϸ������(������ͳ־������)</a>

<br></br>${productVO.getProdName()}
	</br>${productVO.getProTranCode()}

<form name="updatePurchase" action="/updatePurchaseView.do?tranNo=0" method="post">

������ ���� ���Ű� �Ǿ����ϴ�.

<table border=1>
	<tr>
		<td>��ǰ��ȣ</td>
		<td>10094</td>
		<td></td>
	</tr>
	<tr>
		<td>�����ھ��̵�</td>
		<td>user21</td>
		<td></td>
	</tr>
	<tr>
		<td>���Ź��</td>
		<td>
		
			���ݱ���
		
		</td>
		<td></td>
	</tr>
	<tr>
		<td>�������̸�</td>
		<td>SCOTT</td>
		<td></td>
	</tr>
	<tr>
		<td>�����ڿ���ó</td>
		<td>0104324244</td>
		<td></td>
	</tr>
	<tr>
		<td>�������ּ�</td>
		<td>01051512222</td>
		<td></td>
	</tr>
		<tr>
		<td>���ſ�û����</td>
		<td>gggg</td>
		<td></td>
	</tr>
	<tr>
		<td>����������</td>
		<td></td>
		<td></td>
	</tr>
</table>
</form>
	
</body>
</html>