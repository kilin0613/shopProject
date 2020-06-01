package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import controller.JusoController;
import controller.LoginController;
import controller.MemberController;

@Configuration
public class ControllerConfig {

	
	@Bean
	public JusoController jusoController() {
		return new JusoController();
	} 

	@Bean
	public MemberController memberController() {
		return new MemberController();
	}
	
	@Bean
	public LoginController loginController() {
		return new LoginController();
	}


}
