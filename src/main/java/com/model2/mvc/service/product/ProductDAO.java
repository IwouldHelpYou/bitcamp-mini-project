package com.model2.mvc.service.product;

import java.util.List;

import com.model2.mvc.common.Search;
import com.model2.mvc.domain.ProductVO;

//==> ȸ���������� CRUD �߻�ȭ/ĸ��ȭ�� DAO Interface Definition
public interface ProductDAO {
	
	// INSERT
	public int insertProduct(ProductVO product) throws Exception ;

	// SELECT ONE
	public ProductVO findProduct(int prodNo) throws Exception ;

	// SELECT LIST
	public List<ProductVO> getProductList(Search search) throws Exception ;

	// UPDATE
	public void updateProduct(ProductVO product) throws Exception ;
	
	// �Խ��� Page ó���� ���� ��üRow(totalCount)  return
	public int getTotalCount(Search search) throws Exception ;

	int removeProduct(String productId) throws Exception;
	
}