package com.model2.mvc.web.purchase;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.model2.mvc.common.Page;
import com.model2.mvc.common.Search;
import com.model2.mvc.domain.ProductVO;
import com.model2.mvc.domain.PurchaseVO;
import com.model2.mvc.domain.User;
import com.model2.mvc.service.product.ProductService;
import com.model2.mvc.service.product.impl.ProductServiceImpl;
import com.model2.mvc.service.purchase.PurchaseService;
import com.model2.mvc.service.user.UserService;


@Controller
@RequestMapping("/purchase/*")
public class PurchaseController {
	////////////Business logic UserService DI/////////////////////
	///Field

	@Autowired
	@Qualifier("purchaseServiceImpl")
	private PurchaseService purchaseService;
	
	///Constructor
	public PurchaseController() {
		System.out.println(this.getClass());
	}

	// �����̷� Ŭ����
	@RequestMapping(value ="listPurchase")
	public String listPurchase(@RequestParam("test") String test) throws Exception {

		System.out.println(test);
		System.out.println("/purchase/listPurchase ���ߵ�");
		
		return "forward:/purchase/listPurchase.jsp";
	}
	
	// ��ǰ�󼼺��⿡�� ���Ź�ư Ŭ����
	@RequestMapping( value="execPurchase", method=RequestMethod.GET )
	public String purchaseProduct(@RequestParam("prodNo") String prodNo ) {
		
		System.out.println("/purchase/execPurchase : "+ prodNo);
		
		// �ش� product �� �Աݴ�������� ����
		// �ش� user�� product �����ֱ�
		
		return "forward:/purchase/purchaseConfirmView.jsp";
	}
	
	// ������ư Ŭ���� View ������
	@RequestMapping( value="payment", method=RequestMethod.GET )
	public String payment(@RequestParam String prodNo) {

		System.out.println("/purchase/payment : GET "+prodNo);
		
		return "forward:/purchase/paymentView.jsp";
	}

	// View���� �������������� ���� ó����
	@RequestMapping( value="payment", method=RequestMethod.POST )
	public String payment(@ModelAttribute() PurchaseVO purchase) {
		
		System.out.println("/purchase/payment : POST");
		
		// �ش� product �� ��������� ����
		
		return "forward:/purchase/paymentConfirmView.jsp";
	}
	
	// ����߽� admin�� ��ǰ��ũ������ ��ۿϷ�ó���ϵ���
	@RequestMapping( value="process")
	public String process() {
		
		System.out.println("/purchase/process");
		
		return "forward:/purchase/process.jsp";
	}
}//CLASS
