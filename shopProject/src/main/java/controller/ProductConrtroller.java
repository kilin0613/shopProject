package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import VO.ProductVo;

@Controller
public class ProductConrtroller {
	
	@GetMapping("/product_detail")
	public String getProductDetail(Model model, HttpServletRequest req,ProductVo productVo) {
		HttpSession session = req.getSession();
		
		return "product/product_detail";
	}

}
