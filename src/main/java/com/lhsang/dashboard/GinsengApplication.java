package com.lhsang.dashboard;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;

import com.lhsang.dashboard.configuration.HibernateConfiguration;

@SpringBootApplication
public class GinsengApplication {

	public static void main(String[] args) {
		SpringApplication.run(GinsengApplication.class, args);
	}
}
