/*
Group members: Dita Pelaj, Egor Kolonyuk, Anass El Aqli

Project Name: Programming Online Courses Project
Our Project is an educational website that offers programming online courses.
The user can add the courses to "Add to Cart" in order to purchase them.
So far we have two tables, one is the Users table which has user info (such as username, email, etc.) 
and the other table is the Courses table which includes courses' data (such as course name, price, etc.).
*/

package com.pte.project;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@SpringBootApplication
@EnableSwagger2
public class ProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProjectApplication.class, args);
	}

}
