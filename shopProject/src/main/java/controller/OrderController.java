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

import DTO.BasketDto;
import DTO.DeliveryDto;
import DTO.OrderDto;
import VO.MemberVo;
import service.BasketService;
import service.OrderService;

@Controller
public class OrderController {

	@Autowired
	BasketService basket_service;
	@Autowired
	OrderService order_service;

	@PostMapping("/order")	
	public String postOrder(Model model, HttpServletRequest req , OrderDto orderDto ) {
	
		HttpSession session = req.getSession();
		if (session.getAttribute("loginMember") == null) {
			
			return "redirect:/login";
		}
		
		String customer_id = ((MemberVo)session.getAttribute("loginMember")).getCustomer_id();
		
		orderDto.setCustomer_id(customer_id);
		
		order_service.orderService(orderDto); 
	
		return "order/paymentCompleted";
	}
	
	@PostMapping("/orderAndPayment") 
	public String postOrderAndPayment(Model model, HttpServletRequest req, OrderDto orderList, BasketDto basketDto) {
		HttpSession session = req.getSession();

		if (session.getAttribute("loginMember") == null) {
			return "redirect:/login";
		}
		
		//단일상품주문
		if (orderList.getBasketDto() == null) {
			basketDto.setColor(order_service.getColorNameService(basketDto.getColor_id()));
			basketDto.setSize_name(order_service.getSizeNameService(basketDto.getSize_id()));
			
			int total_price = basketDto.getQuantity()*basketDto.getTotal_price();	
			orderList.setFinal_price(total_price);
			basketDto.setTotal_price(total_price);
			List<BasketDto> basketList = new ArrayList<BasketDto>();
			basketList.add(basketDto);

			orderList.setBasketDto(basketList);
		}
		else {//장바구니 주문 (fianl_price구하기)
			int final_price=0;
			for(int i=0; i<orderList.getBasketDto().size();i++) {
				final_price = final_price + orderList.getBasketDto().get(i).getTotal_price();
			}
			orderList.setFinal_price(final_price);
		}
		
		model.addAttribute("orderList",orderList);
		
		return "order/orderAndPayment";
	}

	@GetMapping("/delivery")
	public String getDelivery(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		MemberVo memberVo = (MemberVo) session.getAttribute("loginMember");

		if (session.getAttribute("loginMember") == null) {
			return "redirect:/login";
		}
		
		  List<DeliveryDto> deliveryList = order_service.selectDelivery(memberVo.getCustomer_id());
		  model.addAttribute("deliveryList", deliveryList);
		
		return "member/myPage/delivery";
	}

}
