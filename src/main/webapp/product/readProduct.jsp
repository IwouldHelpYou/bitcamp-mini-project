<!--  listProduct ���� /getProduct.do?userId ������ getProductAction.java ���� ��-->
<!-- ��ǰ Ŭ������ �� ������ ���� ������ -->

<%@ page contentType="text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- EL / JSTL �������� �ּ� ó�� 

	<%@ page import="com.model2.mvc.service.product.vo.*" %>
	<%@ page import="com.model2.mvc.service.domain.*" %>
	<%
		ProductVO vo=(ProductVO)request.getAttribute("vo"); //��ȸ��
		System.out.println("/readProduct.jsp");
	
		// ���� 
		User currentSession = (User)session.getAttribute("user");
		if(currentSession != null){
			System.out.println("session -> "+currentSession.toString());
		}
	%>

--%>

<h3> getProductAction ���� ��ũŸ�� readProduct jsp�� �Ѿ�Դ�</h3>

<html>
<head>
	<title>ȸ��������ȸ</title>

	<link rel="stylesheet" href="/css/admin.css" type="text/css">
	<link rel="stylesheet" href="/css/my.css" type="text/css">
	
	<html>
	

<head>

<link rel="stylesheet" href="/css/admin.css" type="text/css">

<title>Insert title here</title>
</head>

<body bgcolor="#ffffff" text="#000000">

<form name="detailForm" method="post">

<!-- ��� ��� -->
	<table width="100%" height="37" border="0" cellpadding="0"	cellspacing="0">
		<tr>
			<td width="15" height="37"><img src="/images/ct_ttl_img01.gif"	width="15" height="37"></td>
			<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left: 10px;">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="93%" class="ct_ttl01">��ǰ����ȸ</td>
						<td width="20%" align="right">&nbsp;</td>
					</tr>
				</table>
			</td>
			<td width="12" height="37">
				<img src="/images/ct_ttl_img03.gif"  width="12" height="37"/>
			</td>
		</tr>
	</table>
		
	<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 13px;">
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<!-- ��ǰ��ȣ -->
		<tr>
			<!-- ù��° Į�� -->
			<td width="104" class="ct_write">
				��ǰ��ȣ <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
			</td>
			<!-- ���м� -->
			<td bgcolor="D6D6D6" width="1"></td>
			<!-- �ι�° Į�� -->
			<td class="ct_write01">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="105">${vo.getProdNo()}</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<!-- ��ǰ�� -->
		<tr>
			<td width="104" class="ct_write">
				��ǰ�� <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
			</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">${vo.getProdName()}</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<!-- ��ǰ�̹��� -->
		<tr>
			<td width="104" class="ct_write">
				��ǰ�̹��� <img 	src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
			</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">
				<img width="30%" height="30%" src="https://mblogthumb-phinf.pstatic.net/20160817_259/retspe_14714118890125sC2j_PNG/%C7%C7%C4%AB%C3%F2_%281%29.png?type=w800"/>
			</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<!-- ��ǰ������ -->
		<tr>
			<td width="104" class="ct_write">
				��ǰ������ <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
			</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">${vo.getProdDetail()}</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<!-- �������� -->
		<tr>
			<td width="104" class="ct_write">��������</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">${vo.getRegDate()}</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<!-- ���� -->
		<tr>
			<td width="104" class="ct_write">����</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">${vo.getPrice()}</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<!-- ������� -->
		<tr>
			<td width="104" class="ct_write">�������</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">${vo.getRegDate()}</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<!-- ��ǰ���� -->
		<tr>
			<td width="104" class="ct_write">��ǰ����</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">${vo.getProTranCode()}</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
	</table>
		
	<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 10px;">
		<tr>
			<td width="53%"></td>
			<td align="right">
	
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
			
				<!-- �����ڸ��� ������ư�� �� �� �ִ�  -->								
				<c:if test="${sessionScope != null && sessionScope.user.userId.equals('admin')}">								
					<td width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01"	style="padding-top: 3px;">
						<a href="/product/updateProduct?prodNo=${vo.getProdNo()}">����</a>
						<!-- update ������.. -->
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
					</td>
				</c:if>
				
				<c:if test="${sessionScope != null && sessionScope.user.userId.contains('user')}"> 
					<td width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01"	style="padding-top: 3px;">
						<a href="/purchase/execPurchase?prodNo=${vo.getProdNo()}">����</a>
						<!-- update ������.. -->
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
					</td>			
				</c:if>
				
				<%-- 
					<% JSTL/EL �� ����
						if(currentSession != null){
							if(currentSession.getUserId().equals("admin")){ 
					%>
					
				<% 
					}}
				%>
				--%>
				<c:if test="${sessionScope == null || !sessionScope.User.userId().equals('admin')}">
					<td width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top: 3px;">
						<a href="javascript:history.go(-1)">����</a>
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23">
					</td>
				</c:if>
				</tr>
			</table>
	
			</td>
		</tr>
	</table>

</form>

</body>
</html>