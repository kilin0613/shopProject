package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import service.BasketService;
import service.BoardService;
import service.FavoriteService;
import service.MainService;
import service.MemberService;
import service.OrderService;
import service.ProductService;

@Configuration
public class ServiceConfig {

	@Bean
	public MainService mainService() {
		return new MainService();
	} 
	
	@Bean
	public MemberService memberService() {
		return new MemberService();
	} 
	
	@Bean
	public ProductService productService() {
		return new ProductService();
	}
	@Bean
	public FavoriteService favoriteService() {
		return new FavoriteService();
	}
	@Bean
	public OrderService orderService() {
		return new OrderService();
	}
	@Bean
	public BasketService basketService() {
		return new BasketService();
	}
	@Bean
	public BoardService boardService() {
		return new BoardService();
	}
	
}
