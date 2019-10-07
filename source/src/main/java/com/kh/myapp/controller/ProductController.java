package com.kh.myapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {
	private static final Logger logger
	= LoggerFactory.getLogger(ProductController.class);

	String viewname = null;
	
	//상품목록 페이지
	@GetMapping("/productList")
	public String productList(Model model) {
		logger.info("productList() 호출됨");
		viewname = "/product/productList";
		return viewname;
	}
}
