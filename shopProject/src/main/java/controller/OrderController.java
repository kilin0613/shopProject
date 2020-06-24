package controller;

import java.util.ArrayList;
import java.util.Base64;
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
import VO.OrderVo;
import service.BasketService;
import service.OrderService;

@Controller
public class OrderController {

	@Autowired
	BasketService basket_service;
	@Autowired
	OrderService order_service;

	@PostMapping("/orderAndPaymentOne") // 단일주문
	public String getOrderAndPaymentOne(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		MemberVo memberVo = (MemberVo)session.getAttribute("loginMember");
		if (session.getAttribute("loginMember") == null) {
			return "redirect:/login";
		}
		String product_id = req.getParameter("product_id");
		String name = req.getParameter("product_name");
		String size_option = req.getParameter("size_option");
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		int price = Integer.parseInt(req.getParameter("price"));
		String address = req.getParameter("address");
		String address_detail = req.getParameter("address_detail");
		String p_blob = req.getParameter("p_blob");
		String color_id = req.getParameter("color_id");
		
		
		
		OrderVo orderVo = new OrderVo();
		orderVo.setName(name);
		orderVo.setProduct_id(product_id);
		orderVo.setColor_id(color_id);
		orderVo.setQuantity(quantity);
		orderVo.setSize_type(size_option);
		orderVo.setPrice(price * quantity);
		orderVo.setAddress(address+address_detail);
		orderVo.setP_blob(p_blob);
		orderVo.setColor(order_service.getColorNameService(color_id));
		
		
		List<OrderVo> orderList = new ArrayList<OrderVo>();
		orderList.add(orderVo);
		model.addAttribute("address",memberVo.getAddress());
		model.addAttribute("orderList", orderList);

		return "order/orderAndPayment";
	}

	@PostMapping("/orderAndPayment") // 장바구니 ->주문화면
	public String getOrderAndPayment(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();

		if (session.getAttribute("loginMember") == null) {
			return "redirect:/login";
		}
		MemberVo memberVo = (MemberVo) session.getAttribute("loginMember");
		String customer_id = memberVo.getCustomer_id();
		List<BasketVo> orderList = basket_service.selectBasket(customer_id);
	
		model.addAttribute("address",memberVo.getAddress());
		model.addAttribute("orderList", orderList);

		return "order/orderAndPayment";
	}

	@PostMapping("/order")
	public String postOrder(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		if (session.getAttribute("loginMember") == null) {
			return "redirect:/login";
		}
		MemberVo memberVo = (MemberVo) session.getAttribute("loginMember");

		OrderVo orderVo = new OrderVo();
		String name[] = req.getParameterValues("name");
		String size_type[] = req.getParameterValues("size_type");
		String quantity[] = req.getParameterValues("quantity");
		String price[] = req.getParameterValues("price");
		String product_id[] = req.getParameterValues("product_id");
		String payment_info = req.getParameter("payment");
		String customer_id = memberVo.getCustomer_id();
		String address = req.getParameter("address");
		String address_detail = req.getParameter("address_detail");
		String color_id[] = req.getParameterValues("color_id");
		int total_price = 0;

		List<OrderVo> orderList = new ArrayList<OrderVo>();

		for (int i = 0; i < price.length; i++) {
			total_price += Integer.parseInt(price[i]);
		}

		for (int i = 0; i < name.length; i++) {
			orderVo = new OrderVo();
			orderVo.setCustomer_id(customer_id); // main
			orderVo.setPayment_info(payment_info); // main
			orderVo.setTotal_price(total_price); // main
			orderVo.setAddress(address); // main
			orderVo.setProduct_id(product_id[i]); // detail
			orderVo.setSize_type(size_type[i]); // detail
			orderVo.setQuantity(Integer.parseInt(quantity[i])); // detail
			orderVo.setColor_id(color_id[i]); // detail
			orderVo.setAddress(address+address_detail);
			orderList.add(orderVo);
		}

		order_service.orderService(orderList);

		return "order/paymentCompleted";
	}

	@GetMapping("/delivery")
	public String getDelivery(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		MemberVo memberVo = (MemberVo) session.getAttribute("loginMember");

		if (session.getAttribute("loginMember") == null) {
			return "redirect:/login";
		}
		
		
		  List<OrderVo> orderList = order_service.selectDelivery(memberVo);
		  model.addAttribute("orderList", orderList);
		 
		
		return "member/myPage/delivery";
	}

}
