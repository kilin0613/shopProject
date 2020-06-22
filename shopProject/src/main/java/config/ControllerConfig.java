package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import controller.BasketController;
import controller.FavoritesController;
import controller.LoginController;
import controller.MemberController;
import controller.OrderController;
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
	@Bean
	public OrderController orderController() {
		return new OrderController();
	}
	@Bean
	public FavoritesController favoritesController() {
		return new FavoritesController();
	}
	@Bean
	public BasketController basketController() {
		return new BasketController();
	}

}
