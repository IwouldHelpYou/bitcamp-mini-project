package com.model2.mvc.service.product.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.model2.mvc.common.Search;
import com.model2.mvc.domain.ProductVO;
import com.model2.mvc.service.product.ProductDAO;

//==> 회원관리 DAO CRUD 구현
@Repository("productDaoImpl")
public class ProductDaoImpl implements ProductDAO{
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	///Constructor
	public ProductDaoImpl() {
		System.out.println(this.getClass());
	}

	///Method
	public int insertProduct(ProductVO product) throws Exception {
		return sqlSession.insert("ProductMapper.addProduct", product);
	}

	public ProductVO findProduct(String productId) throws Exception {
		System.out.println(productId + "로 조회하는 findProduct");
		return sqlSession.selectOne("ProductMapper.getProduct", productId);
	}
	
	public void updateProduct(ProductVO product) throws Exception {
		sqlSession.update("ProductMapper.updateProduct", product);
	}

	public List<ProductVO> getProductList(Search search) throws Exception {
		System.out.println("DAO에서 매퍼에 getProductList 요청중");
		return sqlSession.selectList("ProductMapper.getProductList", search);
	}

	// 게시판 Page 처리를 위한 전체 Row(totalCount)  return
	public int getTotalCount(Search search) throws Exception {
		return sqlSession.selectOne("ProductMapper.getTotalCount", search);
	}

	@Override
	public int removeProduct(String productId) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
}