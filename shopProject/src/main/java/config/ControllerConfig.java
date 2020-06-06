package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import controller.LoginController;
import controller.MemberController;
import controller.ProductConrtroller;

@Configuration
public class ControllerConfig {

	@Bean
	public MemberController memberController() {
		return new MemberController();
	}
	
	@Bean
	public LoginController loginController() {
		return new LoginController();
	}
	@Bean
	public ProductConrtroller conrtroller() {
		return new ProductConrtroller();
	}


}
