package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import DTO.BasketDto;
import DTO.OrderDto;
import VO.MemberVo;
import service.BasketService;

@Controller
public class BasketController {

	@Autowired
	BasketService service;

	@PostMapping("/addBasket")
	public String postBasket(Model model, HttpServletRequest req, BasketDto basketDto) {
		HttpSession session = req.getSession();
		if (session.getAttribute("loginMember") == null) {
			return "redirect:/login";
		}

		MemberVo memberVo = (MemberVo) session.getAttribute("loginMember");
		basketDto.setCustomer_id(memberVo.getCustomer_id());
		service.insertBasket(basketDto);

		return "redirect:/basket";
	}

	@GetMapping("/basket")
	public String getBasket(Model model, HttpServletRequest req, OrderDto orderDto) {

		HttpSession session = req.getSession();
		if (session.getAttribute("loginMember") == null) {
			return "redirect:/login";
		}

		MemberVo memberVo = (MemberVo) session.getAttribute("loginMember");
		List<BasketDto> basketList = service.selectBasket(memberVo.getCustomer_id());
		model.addAttribute("basketList", basketList);
		
		return "member/myPage/basket";
	}

	@PostMapping("/deleteBasket")
	public String delBasket(Model model, HttpServletRequest req, OrderDto orderDto) {

		HttpSession session = req.getSession();
		if (session.getAttribute("loginMember") == null) {
			return "redirect:/login";
		}

		MemberVo memberVo = (MemberVo) session.getAttribute("loginMember");

		String customer_id = memberVo.getCustomer_id();
		int deleteNum = Integer.parseInt(req.getParameter("deleteNum"));

		orderDto.getBasketDto().get(deleteNum).setCustomer_id(customer_id);

		service.deleteBasket(orderDto.getBasketDto().get(deleteNum));

		List<BasketDto> basketList = service.selectBasket(customer_id);

		model.addAttribute("basketList", basketList);

		return "redirect:/basket";
	}

}