package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import service.MemberService;

@Configuration
public class ServiceConfig {

	@Bean
	public MemberService memberService() {
		return new MemberService();
	} 
	
	
}
