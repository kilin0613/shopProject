package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import VO.MemberVo;
import service.MemberService;

@Controller
public class LoginController {

	@Autowired
	MemberService service;

	@GetMapping("/login")
	public String getLogin(Model model) {

		return "member/login/login";
	}

	@PostMapping("/login")
	public String postLogin(Model model, HttpServletRequest req, MemberVo memberVo) {

		if (memberVo.getId() != "" && memberVo.getPassword() != "") {// 정상동작시 (추후 null체크는 스크립트로 변환) null이 아닌""값넣어주네;
			if (service.loginService(memberVo) != null) {
				System.out.println("정상동작일때");
				HttpSession session = req.getSession();
				session.setAttribute("loginMember", memberVo);
				return "home";
			}
		}

		return "redirect:/";

	}
}
