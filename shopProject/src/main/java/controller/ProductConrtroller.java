package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import VO.FavoriteVo;
import VO.MemberVo;
import VO.ProductVo;
import service.FavoriteService;
import service.ProductService;

@Controller
public class ProductConrtroller {

	@Autowired
	ProductService product_service;

	@Autowired
	FavoriteService favorites_service;

	
	
	@GetMapping("/product_detail")
	public String getProductDetail(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.getAttribute("loginMember"); //세션정보
		String product_id = req.getParameter("product_id");	
		ProductVo productVo = (ProductVo) product_service.selectProductDetail(product_id); //상품id로  detail정보 Vo로 저장
		
		model.addAttribute(productVo); //상품 모델에 저장
		
		if (session.getAttribute("loginMember") != null) {
			MemberVo memberVo = (MemberVo) session.getAttribute("loginMember"); //로그인중인 회원
			FavoriteVo favoriteVo = new FavoriteVo();
			favoriteVo.setCustomer_id(memberVo.getCustomer_id());
			favoriteVo.setProduct_id(product_id);
			
			favoriteVo = favorites_service.selectOneFavorites(favoriteVo); //선택한 상품의 즐겨찾기 상태 미리 조회			
			if(favoriteVo!=null) {
				model.addAttribute(favoriteVo);
			}
			session.setAttribute("favorites", favoriteVo);
		}			
			return "product/product_detail";
	}
	
	@GetMapping("/category")
	   public String getCategory(Model model, HttpServletRequest req,@RequestParam("name") String name) {
	      //코드
	      HttpSession session = req.getSession();
	      session.getAttribute("loginMember");
	      String product_id = req.getParameter("product_id");
	      List<ProductVo> productVo;
	      switch(name) {
	      case "outer_man":
	    	  productVo = product_service.selectOuterMan(product_id);
	         model.addAttribute("productVo", productVo); 
	         /* req.setAttribute("productVo", productVo); */
	         break;
	      case "outer_woman":
	         productVo= product_service.selectOuterWoMan(product_id);
	         model.addAttribute("productVo", productVo); 
	         break;
	      case "tee_man":
	         productVo= product_service.selectOuterMan(product_id);
	         model.addAttribute("productVo", productVo); 
	         break;
	      case "tee_woman":
	         productVo= product_service.selectOuterMan(product_id);
	         model.addAttribute("productVo", productVo); 
	         break;
	      case "pants_man":
	        productVo= product_service.selectOuterMan(product_id);
	         model.addAttribute("productVo", productVo); 
	         break;
	      case "pants_woman":
	        productVo= product_service.selectOuterMan(product_id);
	         model.addAttribute("productVo", productVo); 
	         break;
	         
	      }
	      return "home";
	   }
	
	@PostMapping("/search")
	public String postSearch(Model model,HttpServletRequest req) {
		String keyword = (String)req.getParameter("keyword");
		List<ProductVo> productVo = product_service.selectProductSearch(keyword);
		model.addAttribute("productVo",productVo);
		return "home";
	}
	
	
}
