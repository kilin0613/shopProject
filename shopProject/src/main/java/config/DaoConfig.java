package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import DAO.MemberDao;


@Configuration
public class DaoConfig {
	
	@Bean
	public MemberDao memberDao() {
		return new MemberDao(); 
	}
	
}
