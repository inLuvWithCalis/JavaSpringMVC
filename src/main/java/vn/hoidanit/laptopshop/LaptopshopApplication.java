package vn.hoidanit.laptopshop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication(
		exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class
)
public class LaptopshopApplication {

	public static void main(String[] args) {
		ApplicationContext context = SpringApplication.run(LaptopshopApplication.class, args);
		for (String s : context.getBeanDefinitionNames()) {
			System.out.println(s);
		}
	}
}