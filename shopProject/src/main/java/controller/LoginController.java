package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import VO.MemberVo;
import service.MemberService;

@Controller
public class LoginController {

	@Autowired
	MemberService service;

	@GetMapping("/login")
	public String getLogin(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		if (session.getAttribute("loginMember") == null) {
			return "member/login/login";
		}
		return "redirect:/";
	}

	@ResponseBody
	@PostMapping("/login")
	public boolean postLogin(Model model, HttpServletRequest req, MemberVo memberVo) {
		
		memberVo.setId(req.getParameter("id"));
		memberVo.setPassword(req.getParameter("password"));
		if ((memberVo = service.loginService(memberVo)) != null) {
			HttpSession session = req.getSession();
			session.setAttribute("loginMember", memberVo);
		}
		else {
			return false;
		}
		return true;
	}

	@PostMapping("**/logOut")
	public String postLogOut(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();

		session.removeAttribute("loginMember");

		return "redirect:/";
	}
	
	@ResponseBody
	@PostMapping("product_detail/checkLogin")
	public boolean checkLogin(HttpServletRequest req) {
		HttpSession session = req.getSession();
		if(session.getAttribute("loginMember")==null) {
			return false;
		}
		return true;
	}

}
