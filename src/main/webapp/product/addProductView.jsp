<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html>
<head>
<title>��ǰ���</title>

<link rel="stylesheet" href="/css/admin.css" type="text/css">

<script type="text/javascript" src="../javascript/calendar.js">
</script>

<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>

<script type="text/javascript">

function fncAddProduct(){
	//Form ��ȿ�� ����
	var name = $("input[name='prodName']").val();
	var detail = $("input[name='prodDetail']").val();
	var manuDate = $("input[name='manuDate']").val();
	var price = $("input[name='price']").val();
	//var img = $("input[name='imageFile']").val();
	
	/*
 	var name = document.detailForm.prodName.value;
	var detail = document.detailForm.prodDetail.value;
	var manuDate = document.detailForm.manuDate.value;
	var price = document.detailForm.price.value;
	var img = document.detailForm.imageFile.value;
	*/
	
	if(name == null || name.length<1){
		alert("��ǰ���� �ݵ�� �Է��Ͽ��� �մϴ�.");
		return;
	}
	if(detail == null || detail.length<1){
		alert("��ǰ�������� �ݵ�� �Է��Ͽ��� �մϴ�.");
		return;
	}
	if(manuDate == null || manuDate.length<1){
		alert("�������ڴ� �ݵ�� �Է��ϼž� �մϴ�.");
		return;
	}
	if(price == null || price.length<1){
		alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
		return;
	}
	
	var inputElements = $('input');
	//var inputElements = document.detailForm.getElementsByTagName("input");
	for (var i = 0; i < inputElements.length; i++) {
	    var inputNode = inputElements[i];
	    console.log(inputNode);
	}
	
	$('form').attr("action" , "/product/addProduct").submit();
	//document.detailForm.action='/product/addProduct';
	//document.detailForm.submit();
	console.log(name, detail, manuDate, price);
}

function resetData(){
	$('form').reset();
}

</script>
</head>
  
<body bgcolor="#ffffff" text="#000000">

<jsp:include page="/layout/toolbar.jsp" />
<jsp:include page="/layout/background.jsp" />

<div style="width: 70%; margin: 100px auto;">

<!-- enctype multipart/form-data���� �ٲ� �̹��� �Ⱦ��Ŵϱ�  -->
<form name="detailForm" action="" method="post" enctype="application/x-www-form-urlencoded">

		<div class="container">
	    <!-- ��� ��� -->
	    <div class="page-header">
	        <h3 class="text-info">��ǰ������ȸ</h3>
	        <h5 class="text-muted">��ǰ ������ <strong class="text-danger">������Ʈ</strong>�� �ּ���.</h5>
	    </div>
	
	    <!-- ��ǰ��ȣ -->
	
	    <div class="row">
	        <div class="col-xs-4 col-md-2"><strong>��ǰ��</strong></div>
	        <div class="col-xs-8 col-md-4"><input type="text" name="prodName" value="${vo.getProdName()}"></div>
	    </div>
	
	    <hr/>
	
	    <div class="row">
	        <div class="col-xs-4 col-md-2"><strong>��ǰ�̹���</strong></div>
	        <div class="col-xs-8 col-md-4">
	            <img width="30%" height="30%" src="https://mblogthumb-phinf.pstatic.net/20160817_259/retspe_14714118890125sC2j_PNG/%C7%C7%C4%AB%C3%F2_%281%29.png?type=w800"/>
	        </div>
	    </div>
	
	    <hr/>
	
	    <div class="row">
	        <div class="col-xs-4 col-md-2"><strong>��ǰ������</strong></div>
	        <div class="col-xs-8 col-md-4"><input type="text" name="prodDetail" value="${vo.getProdDetail()}"></div>
	    </div>
	
	    <hr/>
	
	    <div class="row">
	        <div class="col-xs-4 col-md-2"><strong>��������</strong></div>
	        <div class="col-xs-8 col-md-4"><input type="text" name="manuDate" value="${vo.getRegDate()}">
	        &nbsp;<img src="../images/ct_icon_date.gif" width="15" height="15" 
											onclick="show_calendar('document.detailForm.manuDate', document.detailForm.manuDate.value)"/></div>
	    </div>
	
	    <hr/>
	
	    <div class="row">
	        <div class="col-xs-4 col-md-2"><strong>����</strong></div>
	        <div class="col-xs-8 col-md-4"><input type="text" name="price" value="${vo.getPrice()}"></div>
	    </div>

	</div>
		
	
	<%-- �����ҹ�ư --%>
	<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 10px;">
		<tr>
			<td width="53%"></td>
			<td align="right">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01"  style="padding-top: 3px;">
						<a href="javascript:fncAddProduct();">���</a>
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
					</td>
					<td width="30"></td>
					<td width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01"	 style="padding-top: 3px;">
						<a href="javascript:resetData();">���</a>
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
					</td>
				</tr>
			</table>
			</td>
		</tr>
	</table>

</form>

</div>
</body>
</html>