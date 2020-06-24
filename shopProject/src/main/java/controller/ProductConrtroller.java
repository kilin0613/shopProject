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

import VO.BoardVo;
import VO.ColorVo;
import VO.FavoriteVo;
import VO.MemberVo;
import VO.ProductVo;
import service.BoardService;
import service.FavoriteService;
import service.ProductService;

@Controller
public class ProductConrtroller {

	@Autowired
	ProductService product_service;

	@Autowired
	FavoriteService favorites_service;

	@Autowired
	BoardService board_service;
	
	@GetMapping("/product_detail")
	public String getProductDetail(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.getAttribute("loginMember"); //세션정보
		String product_id = req.getParameter("product_id");	
		
		ProductVo productVo = (ProductVo) product_service.selectProductDetail(product_id); //상품id로  detail정보 Vo로 저장
		
		List<ColorVo> colorList = product_service.selectProductColor(product_id);
		
		model.addAttribute("colorList",colorList);
		model.addAttribute(productVo); //상품 모델에 저장
		
		List<BoardVo> BoardVo = board_service.selectBoard(product_id);
	    model.addAttribute("BoardVo", BoardVo);
		
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
	   public String getCategory(Model model, HttpServletRequest req,@RequestParam("category1") String category1,@RequestParam("category2") String category2) {
	      //코드
	      HttpSession session = req.getSession();
	      session.getAttribute("loginMember");
	     
	      List<ProductVo> productVo=product_service.selectCategoryService(category1,category2);
	      model.addAttribute("productVo",productVo);
	      return "home";
	   }
	
	@PostMapping("/search")
	public String postSearch(Model model,HttpServletRequest req) {
		String keyword = (String)req.getParameter("keyword");
		List<ProductVo> productVo = product_service.selectProductSearch(keyword);
		model.addAttribute("productVo",productVo);
		return "home";
	}
	
	@GetMapping("/board")
	   public String insertBoard(Model model, HttpServletRequest req,ProductVo productVo,BoardVo boardVo) {
	      HttpSession session = req.getSession();
	      session.getAttribute("loginMember");
	      MemberVo memberVo = (MemberVo)session.getAttribute("loginMember");
	      if(memberVo == null) {
	         return "redirect:/login";
	      }
	      String customer_id = memberVo.getId();
	      String product_id = req.getParameter("product_id");
	      String b_title="제목";
	      String b_content=req.getParameter("b_content");
	      
	      
	      boardVo.setProduct_id(product_id);
	      boardVo.setCustomer_id(customer_id);
	      boardVo.setB_title(b_title);
	      boardVo.setB_content(b_content);
	      
	      board_service.insertBoard(boardVo);
	      model.addAttribute("BoardVo",boardVo);
	      return "redirect:/product_detail/?product_id=" + product_id;
	   }
	
}
