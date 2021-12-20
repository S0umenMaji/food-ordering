package com.example.demo;

import java.util.Arrays;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.example.demo.repo.Customerrepo;

@SpringBootApplication
//@ComponentScan({ "com.example.demo.repo" })
//@EnableJpaRepositories("com.example.demo")
public class FoodApplication {

	public static void main(String[] args) {
		SpringApplication.run(FoodApplication.class, args);
		System.out.println("j");
	}
//		@Bean
//	    public CommandLineRunner mappingDemo(Customerrepo custRepository,
//	                                         productrepo proRepository) {
//	        return args -> {
//
//	            // create a student
//	            Customer s = new Customer();
//s.setName("ram");
//s.setEmail("dfkj");
//s.setPass("lkdf");
//	            // save the student
//	            custRepository.save(s);
//
//	            // create three courses
//	            Product course1 = new Product(1,"Machine Learning", 12, 1500);
//	            Product course2 = new Product(2,"Database Systems", 8, 800);
//	            Product course3 = new Product(3,"Web Basics", 10, 0);
//
//	            // save courses
//	            proRepository.saveAll(Arrays.asList(course1, course2, course3));
//
//	            // add courses to the student
//	            Customer.getProdct().addAll(Arrays.asList(course1, course2, course3));
//
//	            // update the student
//	            custRepository.save(s);
//	        };
//	    
//	}

}
