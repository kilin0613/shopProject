package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import VO.ProductVo;
import service.ProductService;

@Controller
public class ProductConrtroller {
	
	@Autowired
	ProductService service;
	
	@GetMapping("/product_detail")
	public String getProductDetail(Model model, HttpServletRequest req,ProductVo productVo) {
		HttpSession session = req.getSession();
		String product_id = req.getParameter("product_id");
		productVo = (ProductVo)service.selectProductDetail(product_id);
		model.addAttribute(productVo);
		
		return "product/product_detail";
	}

}
