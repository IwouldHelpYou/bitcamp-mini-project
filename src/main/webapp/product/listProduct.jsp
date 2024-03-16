<!-- �������� ��ǰ �˻� (ListProductAction ����) ������ �� �� ���� ������ -->

<%@ page contentType="text/html; charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--/////////////////////// EL / JSTL �������� �ּ� ó�� ////////////////////////

<%	
	System.out.println("/listProduct.jsp ���� �޾ƿ� ��"
	+ request.getAttribute("list") //���� product List �� �� (total�� ���� page�����ִϱ� map ����) 
	); // �˻� ���ǵ�
	
	
	Page resultPage = (Page)request.getAttribute("resultPage");

	List<ProductVO> list= (List<ProductVO>)request.getAttribute("list");
	//���� HashMap<String,Object> map=(HashMap<String,Object>)request.getAttribute("map");
	//��ǰ��� (���� list ���ٰ� total, list ���������� list �� ������)
	
	//����������
	Search search=(Search)request.getAttribute("search");
	
	String searchKeyword = search.getSearchKeyword(); //�˻���
    String searchCondition = search.getSearchCondition(); //�˻�����

 	/* page ��ü ����� ����� �ڵ�
    int total=0; // ��ȸ�� ��ǰ ����
	ArrayList<ProductVO> list=null;
	if(map != null){
		total=((Integer)map.get("count")).intValue();
		list=(ArrayList<ProductVO>)map.get("list");
	}
	// map : ��ü ���� count �� ��ü ��� list �� ����
	// total : ��ü ������ ������ 
	// list : ���� ������ (DAO���� pageUnit ��ŭ ��Ƴ���)

	int currentPage = search.getPage(); // page : ���� ��ġ�� ������
	int totalPage=0;
	if(total > 0) { // ��ȸ�� ��ǰ�� ������
		totalPage= total / search.getPageUnit() ; // ��ü ������ = ��ü ������ / ��� ��������
		if(total%search.getPageUnit() >0) // pageUnit : ��� �����
			System.out.println("totalPage " +  totalPage);
			totalPage += 1;
	}
	*/
%>
--%>

<html>
<head>
<title>��ǰ �����ȸ</title>

<script type="text/javascript">
<!--
// �˻� / page �ΰ��� ��� ��� Form ������ ���� JavaScrpt �̿�  
function fncGetProductList(currentPage) {
	document.getElementById("currentPage").value = currentPage;
   	document.detailForm.submit();	
}
-->
</script>
<link rel="stylesheet" href="/css/my.css" type="text/css">
<link rel="stylesheet" href="/css/admin.css" type="text/css">
</head>

<body bgcolor="#ffffff" text="#000000">

<div style="width:98%; margin-left:10px;">

<form name="detailForm" action="/product/listProduct" method="post">

	<!-- �峭�� -->
	<div>
		<h3> listProductAction ���� �Ѿ�� listProduct.jsp </h3>
		
	</div>
	
	<!--  ��ܹ�� -->
	<table width="100%" height="37" border="0" cellpadding="0"	cellspacing="0">
		<tr>
			<td width="15" height="37">
				<img src="/images/ct_ttl_img01.gif" width="15" height="37">
			</td>
			<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left:10px;">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="93%" class="ct_ttl01">��ǰ �����ȸ</td>
					</tr>
				</table>
			</td>
			<td width="12" height="37">
				<img src="/images/ct_ttl_img03.gif" width="12" height="37">
			</td>
		</tr>
	</table>
	
	<!--  ȸ���˻� -->
	<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
	    <tr>
	        <%-- �˻��� ����ǿ� �°� option �� ��� --%>
	        <c:choose>
	            <%-- �˻��� ���� ������ --%>
	            <c:when test="${not empty search.searchCondition}">
	                <td align="right">
	                    <select name="searchCondition" class="ct_input_g" style="width:80px">
	                        <%-- ��ǰ��ȣ�� ��ȸ�ߴٸ� --%>
	                        <c:choose>
	                            <c:when test="${search.searchCondition eq '0'}">
	                                <option value="0" selected>��ǰ��ȣ(no)</option>
	                                <option value="1">��ǰ��</option>
	                            </c:when>
	                            <c:otherwise>
	                                <option value="1" selected>��ǰ��</option>
	                                <option value="0">��ǰ��ȣ(no)</option>
	                            </c:otherwise>
	                        </c:choose>
	                    </select>
	                    <input type="text" name="searchKeyword" value="${search.searchKeyword}" class="ct_input_g" style="width:200px; height:19px" >
	                </td>
	            </c:when>
	            <%-- �˻��ϱ� �����̶�� --%>
	            <c:otherwise>
	                <td align="right">
	                    <select name="searchCondition" class="ct_input_g" style="width:80px">
	                        <option value="1">1�� ��ǰ��</option>
	                        <option value="0">0�� ��ǰ��ȣ</option>
	                    </select>
	                    <input type="text" name="searchKeyword" class="ct_input_g" style="width:200px; height:19px" >
	                </td>
	            </c:otherwise>
	        </c:choose>
	        
	        <!-- �˻� ��ư�� -->    
	        <td align="right" width="70">
	            <table border="0" cellspacing="0" cellpadding="0">
	                <tr>
	                    <td width="17" height="23">
	                        <img src="/images/ct_btnbg01.gif" width="17" height="23">
	                    </td>
	                    <td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">
	                        <a href="javascript:fncGetProductList(1);">�˻�</a>
	                    </td>
	                    <td width="14" height="23">
	                        <img src="/images/ct_btnbg03.gif" width="14" height="23">
	                    </td>
	                </tr>
	            </table>
	        </td>
	    </tr>
	</table>
	
	<!--  ��ǰ��� ���� -->
	<!-- user && �Ǹ��� �̸� '��ǰ�̸�' ��ũŬ���ǰ� -->
	<!-- admin && ����� �̸� '�����ڵ�' ��ũŬ���ǰ� -->
	<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
		<tr>
			<td colspan="11" >��ü  ${resultPage.getTotalCount()} �Ǽ�, ���� ${resultPage.getCurrentPage()} ������</td>
		</tr>
		<tr>
			<td class="ct_list_b" width="100">No</td>
			<td class="ct_line02"></td>
			<td class="ct_list_b" width="150">��ǰ��</td>
			<td class="ct_line02"></td>
			<td class="ct_list_b" width="150">����</td>
			<td class="ct_line02"></td>
			<td class="ct_list_b">�����</td>	
			<td class="ct_line02"></td>
			<td class="ct_list_b">�������</td>
		</tr>
		<tr>
			<td colspan="11" bgcolor="808285" height="1"></td>
		</tr>
		
		<!-- DB ��ȸ�� list ���� �ϳ��� vo �� ��Ƽ� �������� -->
		<c:set var="i" value="0" />
		<c:forEach var="product" items="${list}">	
			<c:set var="i" value="${ i+1 }" />
			<tr class="ct_list_pop">
				<td align="center">${ i }</td>
				<td></td>
				<td align="left">

					
					<c:if test="${product.proTranCode == '�Ǹ���'}">
						<a href="/product/getProduct?prodNo=${product.prodNo}">${product.prodName}</a>
					</c:if>
					
					<c:if test="${product.proTranCode != '�Ǹ���'}">
					    ${product.prodName}
					</c:if>
					
				</td>
				<td></td>
				<td align="left">${product.price}</td>
				<td></td>
				<td align="left">${product.regDate}</td>
				<td></td>
				
				<td align="left">
					<c:if test="${product.proTranCode == '�����'}">
						<a href="/purchase/process?prodNo=${product.prodNo}">${product.proTranCode}</a>
					</c:if>
					
					<c:if test="${product.proTranCode != '�����'}">
						${product.proTranCode}(listProduct.jsp)
					</c:if>
				</td>		
			</tr>
			<tr>
				<td colspan="11" bgcolor="D6D7D6" height="1"></td>
			</tr>
		</c:forEach>
	</table>	
	
	<!--  ������ �ѹ��� -->
	<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
		<tr>
			<td align="center">
		   	<!-- ���� currentPage �� ���� ����ְ� form post ��û ����.
		   	��ũŸ�� request �������� param �� ���� �� ���ϴϱ� post ��û�Ϸ��� �̷��°��� -->
		   	<input type="hidden" id="currentPage" name="currentPage" value=""/>
			   	
			   	<%-- 
			   		PageUnit (�� ȭ�鿡 ���� ������ ����5) ���� CurrentPage (���� ������6) �� ������ �� ���� ����
			   		BeginUnitPage (���� ���� ������ ��ȣ��6) ���� EndUnitPage (���� ū ��������) ���� �� ���
			   		EndUnitPage (���� ������ ��������) ���� MaxPage (������ ������ ��ȣ) �� ũ�� ���� �� ����
			   	--%> 
				
				<%-- /////////////////////// EL / JSTL �������� �ּ� ó�� //////////////////////// 		   
				<% if( resultPage.getCurrentPage() <= resultPage.getPageUnit() ){ %>
						�� ����
				<% }else{ %>
						<a href="javascript:fncGetUserList('<%=resultPage.getCurrentPage()-1%>')">�� ����</a>
				<% } %>
			
				<%	for(int i=resultPage.getBeginUnitPage();i<= resultPage.getEndUnitPage() ;i++){	%>
						<a href="javascript:fncGetUserList('<%=i %>');"><%=i %></a>
				<% 	}  %>
				
				<% if( resultPage.getEndUnitPage() >= resultPage.getMaxPage() ){ %>
						���� ��
				<% }else{ %>
						<a href="javascript:fncGetUserList('<%=resultPage.getEndUnitPage()+1%>')">���� ��</a>
				<% } %>
				 /////////////////////// EL / JSTL �������� �ּ� ó�� //////////////////////// --%>
		
				<jsp:include page="../common/pageNavigator.jsp"/>

				<br>
				<br>// 1. user �� ������Ʈ �������鼭 refactoring 1 �Ϸ�
				<br>// 2. JSPL �����ذ��鼭 proudct, user refactoring 2 �Ϸ�
				<br>// 3. ���� ��۱����Ϸ�
				<br>
				<br>// UI, ��ٱ���-�����Ǹ�(?) ��� �������ϰ� ������ �غ�
	    	</td>
		</tr>
	</table>
</form>


</body>
</html>