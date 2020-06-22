package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import VO.BasketVo;
import VO.MemberVo;
import service.BasketService;

@Controller
public class BasketController {

	@Autowired
	BasketService service;

	@PostMapping("/basket")
	public String postBasket(Model model, HttpServletRequest req, BasketVo basketVo) {
		HttpSession session = req.getSession();
		if (session.getAttribute("loginMember") == null) {
			return "redirect:/login";
		}

		MemberVo memberVo = (MemberVo) session.getAttribute("loginMember");
		String customer_id = memberVo.getId();
		
		String product_id = req.getParameter("product_id");
		String color_id = "1";
		String size_type = req.getParameter("size_option");
		String name = req.getParameter("product_name");
		int quantity = Integer.parseInt(req.getParameter("quantity"));
	
		basketVo.setCustomer_id(customer_id);
		basketVo.setColor_id(color_id);
		basketVo.setName(name);
		basketVo.setProduct_id(product_id);
		basketVo.setSize_type(size_type);
		basketVo.setQuantity(quantity);
		List<BasketVo> basketList = service.selectBasket(customer_id);
		service.insertBasket(basketVo);
		basketList.add(basketVo);
		model.addAttribute("basketVo", basketList);
		return "redirect:/basket";
	}

	@GetMapping("/basket")
	public String getBasket(Model model, HttpServletRequest req, String customer_id) {
		
		HttpSession session = req.getSession();
		if (session.getAttribute("loginMember") == null) {
			return "redirect:/login";
		}

		MemberVo memberVo = (MemberVo) session.getAttribute("loginMember");
		
		List<BasketVo> basketVo = service.selectBasket(memberVo.getId());
		model.addAttribute("basketVo", basketVo);
		return "member/myPage/basket";
	}
	
	 @PostMapping("/deleteBasket")
	   public String delBasket(Model model, HttpServletRequest req,BasketVo basketVo) {
	      HttpSession session = req.getSession();
	      MemberVo memberVo = (MemberVo)session.getAttribute("loginMember");
	      String customer_id = memberVo.getId();
	      String product_id=req.getParameter("product_id");
	      basketVo.setCustomer_id(customer_id);
	      basketVo.setProduct_id(product_id);
	      service.deleteBasket(basketVo);
	      
	      List<BasketVo> basketVo1= service.selectBasket(memberVo.getId());
	      model.addAttribute("basketVo", basketVo1); 
	      return "redirect:/basket";
	   }


}