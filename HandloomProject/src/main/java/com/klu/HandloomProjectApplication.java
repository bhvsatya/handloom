package com.klu;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
public class HandloomProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(HandloomProjectApplication.class, args);
		System.out.println("Handloom Marketplace is Running");
	}

}
