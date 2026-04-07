package com.codeShareBox;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.codeShareBox")
public class CodeShareBoxApplication {

	public static void main(String[] args) {
		SpringApplication.run(CodeShareBoxApplication.class, args);
	}

}
