package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import service.MainService;
import service.MemberService;

@Configuration
public class ServiceConfig {

	@Bean
	public MemberService memberService() {
		return new MemberService();
	} 
	
	@Bean
	public MainService mainService() {
		return new MainService();
	} 
	
	
}
