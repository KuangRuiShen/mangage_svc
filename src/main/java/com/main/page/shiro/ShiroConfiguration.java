package com.main.page.shiro;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.Filter;

import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.spring.LifecycleBeanPostProcessor;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.CookieRememberMeManager;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.web.servlet.SimpleCookie;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;

/**
 * @author krs
 * @time 2019年8月2日 上午11:44:42
 * @describe
 * 
 */

//@Configuration
public class ShiroConfiguration {
	/**
	 * 配置ShiroFilter
	 */
	@Bean(name = "shiroFilter")
	public ShiroFilterFactoryBean shiroFilter(@Qualifier("securityManager") SecurityManager manager) {
		ShiroFilterFactoryBean bean = new ShiroFilterFactoryBean();
		bean.setSecurityManager(manager);
		// bean.setSuccessUrl("/index");
		// 配置访问权限
		LinkedHashMap<String, String> filterChainDefinitionMap = new LinkedHashMap<>();
		// Subject subject = SecurityUtils.getSubject();
		// System.out.println(subject.toString());

//		filterChainDefinitionMap.put("/login", "anon");
//		filterChainDefinitionMap.put("/loginUser", "anon");
//		filterChainDefinitionMap.put("/logout", "anon");

		// authc 表示需要认证才可以访问
		filterChainDefinitionMap.put("/*", "anon"); // "authc");
		filterChainDefinitionMap.put("/**", "anon"); // "authc");
		filterChainDefinitionMap.put("/*.*", "anon"); // "authc");

		bean.setFilterChainDefinitionMap(filterChainDefinitionMap);

		// 设置拦截器
		Map<String, Filter> filterMap = new HashMap<>();
		bean.setFilters(filterMap);
		bean.setSecurityManager(manager);
		bean.setUnauthorizedUrl("/401");
		// 配置登录的url和登录成功的url
		bean.setLoginUrl("/login");

		return bean;
	}

	/* 配置核心安全事务管理器 */
	@Bean(name = "securityManager")
	public SecurityManager securityManager() {
		DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager(); // 设置realm.
		securityManager.setRealm(userRealm());
		return securityManager;

	}

	// 加入注解的使用，不加入这个注解不生效
	@Bean
	public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(SecurityManager securityManager) {
		AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor = new AuthorizationAttributeSourceAdvisor();
		authorizationAttributeSourceAdvisor.setSecurityManager(securityManager);
		return authorizationAttributeSourceAdvisor;
	}

	/* 配置自定义的权限登录器 */
	@Bean
	public AuthRealm userRealm() {
		AuthRealm authRealm = new AuthRealm();
		/* 配置自定义的密码比较器 */
		authRealm.setCredentialsMatcher(new CredentialsMatcher());
		return authRealm;
	}

	/* 管理shiro bean生命周期 */
	@Bean
	public LifecycleBeanPostProcessor lifecycleBeanPostProcessor() {
		return new LifecycleBeanPostProcessor();
	}

	@Bean
	public DefaultAdvisorAutoProxyCreator defaultAdvisorAutoProxyCreator() {
		DefaultAdvisorAutoProxyCreator creator = new DefaultAdvisorAutoProxyCreator();
		creator.setProxyTargetClass(true);
		return creator;
	}

	/**
	 * cookie管理对象
	 */
	@Bean
	public CookieRememberMeManager rememberMeManager() {
		/* 这个参数是cookie的名称，对应前端的checkbox的name = rememberMe */
		SimpleCookie simpleCookie = new SimpleCookie("rememberMe");
		/* 记住我cookie生效时间7天 ,单位秒; */
		simpleCookie.setMaxAge(60 * 60 * 24 * 7);
		CookieRememberMeManager cookieRememberMeManager = new CookieRememberMeManager();
		cookieRememberMeManager.setCookie(simpleCookie);
		return cookieRememberMeManager;
	}
}
