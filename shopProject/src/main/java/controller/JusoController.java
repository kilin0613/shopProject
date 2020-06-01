package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class JusoController {
	@GetMapping("/popup/jusoPopup")
	public String getLogin(Model model) {

		return "/popup/jusoPopup";
	}
}
