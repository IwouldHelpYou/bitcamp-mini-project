package com.model2.mvc.web.product;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model2.mvc.common.Page;
import com.model2.mvc.common.Search;
import com.model2.mvc.domain.ProductVO;
import com.model2.mvc.domain.User;
import com.model2.mvc.service.product.ProductService;
import com.model2.mvc.service.product.impl.ProductServiceImpl;
import com.model2.mvc.service.user.UserService;


@Controller
@RequestMapping("/product/*")
public class ProductController {
	////////////Business logic UserService DI/////////////////////
	///Field

	@Autowired
	@Qualifier("productServiceImpl")
	private ProductService productService;
	///Constructor
	public ProductController() {
		System.out.println(this.getClass()+"����");
	}
	
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
	
	//������ �Ѿ�� ����Ʈ�� �� �پ��?
	@RequestMapping( value="listProduct" )
	public String listProduct(@ModelAttribute("search") Search search, @RequestParam String menu, Model model) throws Exception {

		System.out.println("/product/listProduct");
		
		System.out.println("param : "+menu);
		
		if(search == null) {
			search = new Search();
		}
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		System.out.println(search);
		
		Map<String , Object> map = productService.getProductList(search);
		System.out.println("listProduct ��ȸ��� : "+map);
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println(resultPage);
		
		// Model �� View ����
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		model.addAttribute("param", menu);
		
		return "forward:/product/listProduct.jsp";
	}
	
	@RequestMapping( value="getProduct", method=RequestMethod.GET )
	public String getProduct(@RequestParam("prodNo") int prodNo, Model model) throws Exception {
		
		System.out.println("/product/getProduct");
		
		//Product No���� DB��ȸ
		ProductVO product= productService.findProduct(prodNo);
		//��ȸ�� ��� 'vo' �� �̸����� �� �ֱ�
		model.addAttribute("vo",product);
		
		return "forward:/product/readProduct.jsp";
	}

	// @RequestBody ��ôµ� �ٷ� �����ΰ�ü ���ε� �ȵ�
	// @ModelAttribute �� query �� �޾ƿ��� �ֵ�.. �����ΰ�ü ���ε� ������?
	// pjt ���� �����ѰŰ����� �� product �� null �� ���?
	// ModelAttribute("<-���->") ������Ÿ�� ��� // �̷��� �ΰ���������ϳ�? ���� �ǹ̸� ���°��� 
	// -> enctype �ƹ��ų��ᵵ requestbody�� ��. ���������� (text/plain �б⽱�� �⺻�� param)����
	// �ٵ� modelAttribute ������ �⺻Ÿ�Խ��
	
	@RequestMapping( value="addProduct", method=RequestMethod.GET )
	public String addProductView() {
		
		return "forward:/product/addProductView.jsp";
	}
	
	@RequestMapping( value="addProduct", method=RequestMethod.POST )
	public String addProduct(@ModelAttribute("product") ProductVO product) throws Exception {
		
		System.out.println("/product/addProduct : POST" );
		//Business Logic
		
		product.setProTranCode("�Ǹ���");
		//Date result = product.getManuDate();
		
		System.out.println(product.toString());
		String rawManuDate = product.getManuDate().replaceAll("-", "");
		product.setManuDate(rawManuDate);
		
		productService.addProduct(product);
		
		
		return "forward:/product/addProductConfirm.jsp";
	}
	
	//���� ȭ�� ����
	@RequestMapping( value="updateProduct", method=RequestMethod.GET )
	public ModelAndView updateProduct(@RequestParam("prodNo") int prodNo) throws Exception {
		
		
		System.out.println("/product/updateProduct : GET");
		System.out.println(prodNo);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("ProductVO", productService.findProduct(prodNo));
	
		//modelAndView.addObject("userId", user.getUserId()); //������
		modelAndView.setViewName("forward:/product/updateProduct.jsp");
		
		return modelAndView;
	}
	
	//���� ȭ�鿡�� �����ϴ�
	@RequestMapping( value="updateProduct", method=RequestMethod.POST )
	public ModelAndView updateProduct(@ModelAttribute("product") ProductVO productVO) throws Exception {
		
		System.out.println("/product/updateProduct : POST");
		System.out.println(productVO);

		// ���� ��ư�� �������� DB�� �����ϰ� �ֽ� user���� ����
		productService.updateProduct(productVO);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("productVO", productVO); //������
		modelAndView.setViewName("redirect:/product/getProduct?prodNo="+productVO.getProdNo()); //VIEW����
		return modelAndView;
	}
	
}//CLASS
