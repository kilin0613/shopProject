package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import DAO.BasketDao;
import DAO.BoardDao;
import DAO.FavoriteDao;
import DAO.MemberDao;
import DAO.OrderDao;
import DAO.ProductDao;


@Configuration
public class DaoConfig {
	
	@Bean
	public MemberDao memberDao() {
		return new MemberDao(); 
	}
	@Bean
	public ProductDao productDao() {
		return new ProductDao(); 
	}
	@Bean
	public FavoriteDao favoriteDao() {
		return new FavoriteDao();
	}
	@Bean
	public OrderDao orderDao() {
		return new OrderDao();
	}
	@Bean
	public BasketDao basketDao() {
		return new BasketDao();
	}
	@Bean
	public BoardDao boardDao() {
		return new BoardDao();
	}
}
