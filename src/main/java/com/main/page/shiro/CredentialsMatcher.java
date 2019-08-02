package com.main.page.shiro;

import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;

import com.main.page.utils.MD5;

/**
 * @author krs
 * @time 2019年8月2日 上午11:42:24
 * @describe
 * 
 */
public class CredentialsMatcher extends SimpleCredentialsMatcher {
	 //校验
    @Override
    public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
        UsernamePasswordToken utoken=(UsernamePasswordToken) token;
        //获得用户输入的密码:(可以采用加盐(salt)的方式去检验)
        String inPassword = new String(utoken.getPassword());     
        //获得数据库中的密码
        String dbPassword=(String) info.getCredentials();
        //进行密码的比对
        return dbPassword.equals( MD5.enc(inPassword));
    }
}
