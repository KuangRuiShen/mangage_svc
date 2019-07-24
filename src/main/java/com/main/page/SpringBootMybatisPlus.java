package com.main.page;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.baomidou.mybatisplus.plugins.PaginationInterceptor;

/**
 * Hello world!
 *
 */
@MapperScan("com.main.page.mapper*")
@SpringBootApplication
public class SpringBootMybatisPlus  {
    	public static void main(String[] args) {
    		// TODO Auto-generated method stub
    		SpringApplication.run(SpringBootMybatisPlus.class, args);
    	}

    	@Bean
        public PaginationInterceptor paginationInterceptor() {
            return new PaginationInterceptor();
        }

  
}
