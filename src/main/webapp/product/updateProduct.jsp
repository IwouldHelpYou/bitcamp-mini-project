<!-- ��ǰ���� ���� Ŭ���ϸ� �����ϴ� ������ -->
<!--  updateProductViewAction ���� �դ���� -->

<%@ page contentType="text/html; charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
<title>ȸ����������</title>

<link rel="stylesheet" href="/css/admin.css" type="text/css">
<link rel="stylesheet" href="/css/my.css" type="text/css">

<script type="text/javascript">
<!--
function fncUpdateProduct() {

	var name=document.detailForm.prodName.value;
	
	if(name == null || name.length <1){
		alert("null ó�� ���� ���� �ȵ�!");
		return;
	}
		
	document.detailForm.action='/product/updateProduct';
	document.detailForm.submit();
}

function check_email(frm) {
	alert
	var email=document.detailForm.email.value;
    if(email != "" && (email.indexOf('@') < 1 || email.indexOf('.') == -1)){
    	alert("�̸��� ������ �ƴմϴ�.");
		return false;
    }
    return true;
}

function resetData() {
	document.detailForm.reset();
}
-->
</script>
</head>

<body bgcolor="#ffffff" text="#000000">	
	
	<h3> updateProductViewAction ���� �Ѿ�� updateProduct.jsp </h3> 
	
<form name="detailForm" method="post">

<input type="hidden" name="prodNo" value="${ProductVO.getProdNo()}">

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
						<td width="105">${ProductVO.getProdNo()}</td>
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
			<td class="ct_write01">
				<!-- input �־ ���������ϰԲ� -->
				<input type="text" name="prodName" value="${ProductVO.getProdName()}" class="ct_input_g" 
							style="width:100px; height:19px"  maxLength="50" >				
			</td>
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
			<td class="ct_write01">
				<input 	type="text" name="prodDetail" value="${ProductVO.getProdDetail()}" class="ct_input_g" 
						style="width:370px; height:19px"  maxLength="100">
			
			</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<!-- �������� -->
		<tr>
			<td width="104" class="ct_write">��������</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">
				<input 	type="text" name="manuDate" value="${ProductVO.getManuDate()}" class="ct_input_g" 
					style="width:370px; height:19px"  maxLength="100">
	
			</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<!-- ���� -->
		<tr>
			<td width="104" class="ct_write">����</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">
				<input 	type="text" name="price" value="${ProductVO.getPrice()}" class="ct_input_g" 
					style="width:370px; height:19px"  maxLength="100">
			</td>
		</tr>
		<tr>
			<td height="1" colspan="3" bgcolor="D6D6D6"></td>
		</tr>
		<!-- ������� -->
		<tr>
			<td width="104" class="ct_write">�������</td>
			<td bgcolor="D6D6D6" width="1"></td>
			<td class="ct_write01">
				<input 	type="text" name="regDate" value="${ProductVO.getRegDate()}" class="ct_input_g" 
					style="width:370px; height:19px"  maxLength="100">
			</td>
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
					<td width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01"	style="padding-top: 3px;">
						<a href="javascript:fncUpdateProduct();">����</a>
						<!-- update ������.. -->
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
					</td>
					
					<td width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top: 3px;">
						<a href="javascript:resetData();">����</a>
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23">
					</td>
				</tr>
			</table>
	
			</td>
		</tr>
	</table>

</form>
	
</body>
</html>
