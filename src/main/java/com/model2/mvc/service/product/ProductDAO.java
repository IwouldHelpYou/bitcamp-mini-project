package com.model2.mvc.service.product;

import java.util.List;

import com.model2.mvc.common.Search;
import com.model2.mvc.domain.ProductVO;

//==> 회원관리에서 CRUD 추상화/캡슐화한 DAO Interface Definition
public interface ProductDAO {
	
	// INSERT
	public int insertProduct(ProductVO product) throws Exception ;

	// SELECT ONE
	public ProductVO findProduct(int prodNo) throws Exception ;

	// SELECT LIST
	public List<ProductVO> getProductList(Search search) throws Exception ;

	// UPDATE
	public void updateProduct(ProductVO product) throws Exception ;
	
	// 게시판 Page 처리를 위한 전체Row(totalCount)  return
	public int getTotalCount(Search search) throws Exception ;

	public int removeProduct(String productId) throws Exception;
	
	public List<String> getProductAll(String value) throws Exception;
}