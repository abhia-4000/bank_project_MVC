package com.tech.appconfig;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class initilizer implements WebApplicationInitializer {

	@Override
	public void onStartup(ServletContext sc) throws ServletException {
		
		AnnotationConfigWebApplicationContext a=new AnnotationConfigWebApplicationContext();
		a.register(appconfig.class);
		a.setServletContext(sc);
		ServletRegistration.Dynamic srd= sc.addServlet("DispatcherServlet", new DispatcherServlet(a));
		srd.addMapping("/");
		
	}

}
