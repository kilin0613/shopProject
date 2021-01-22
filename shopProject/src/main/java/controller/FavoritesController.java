package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import VO.FavoriteVo;
import VO.MemberVo;
import VO.ProductVo;
import service.FavoriteService;

@Controller
public class FavoritesController {

	@Autowired
	FavoriteService service;

	@GetMapping("/favorites")
	public String getFavorites(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		if (session.getAttribute("loginMember") == null) {
			return "redirect:/login";
		}
		MemberVo memberVo = (MemberVo) session.getAttribute("loginMember");
		List<ProductVo> favoriteProduct = service.selectAllFavorites(memberVo.getCustomer_id());
		model.addAttribute("favoriteProduct", favoriteProduct);
		return "member/myPage/favorites";
	}
	
	@ResponseBody
	@PostMapping("/product_detail/changeFavorites")
	public boolean changeFavorites(HttpServletRequest req, String product_id) {
		
		HttpSession session = req.getSession();

		String customer_id = ((MemberVo) session.getAttribute("loginMember")).getCustomer_id();
		FavoriteVo favoriteVo = new FavoriteVo();
		favoriteVo.setCustomer_id(customer_id);
		favoriteVo.setProduct_id(product_id);
		if(service.selectOneFavorites(favoriteVo)==null) {
			service.insertFavorites(favoriteVo);
			return true;
		}
		else {
			service.deleteFavorites(favoriteVo);
		}
		return false;
	}
	
	@ResponseBody
	@PostMapping("/product_detail/checkFavorites")
	public boolean checkFavorites(HttpServletRequest req, String product_id) {
		HttpSession session = req.getSession();

		String customer_id = ((MemberVo) session.getAttribute("loginMember")).getCustomer_id();
		FavoriteVo favoriteVo = new FavoriteVo();
		favoriteVo.setCustomer_id(customer_id);
		favoriteVo.setProduct_id(product_id);
		if(service.selectOneFavorites(favoriteVo)==null) {
			return false;
		}
		
		return true;
	}
	 
}
