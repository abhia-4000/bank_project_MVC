package com.tech.appconfig;

import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;


@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.tech")
public class appconfig {

	@Bean
	public InternalResourceViewResolver ViewResolver() {
		InternalResourceViewResolver ivr=new InternalResourceViewResolver();
		ivr.setSuffix(".jsp");
		return ivr;
		
	}
	@Bean
	public DriverManagerDataSource datasource() {
		
		DriverManagerDataSource dmd=new DriverManagerDataSource();
		dmd.setDriverClassName("com.mysql.jdbc.Driver");
		dmd.setUrl("jdbc:mysql://localhost:3306/bank_project");
		dmd.setUsername("root");
		dmd.setPassword("root");
		return dmd;
	}
	
	@Bean
	public LocalSessionFactoryBean sf() {
		LocalSessionFactoryBean lb=new LocalSessionFactoryBean();
		lb.setDataSource(datasource());
		
		Properties p=new Properties();
		p.setProperty("org.hibernate.dialect.MySQL55Dialect", "hibernate.dialect");
		p.setProperty("hibernate.hbm2ddl.auto", "update");
		p.setProperty("hibernate.show_sql","true");	
		lb.setHibernateProperties(p);
		lb.setAnnotatedClasses(com.tech.model.Customer.class);
		return lb;
	}
}
