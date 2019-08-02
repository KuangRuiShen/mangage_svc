package com.main.page.controller.user;

import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.main.page.dto.user.UserDto;
import com.main.page.entity.user.User;
import com.main.page.utils.JsonResult;
import com.main.page.utils.ResultCode;

/**
 * @author krs
 * @date 创建时间 2018年5月25日 下午3:30:43
 * @describe
 */
@RestController
@RequestMapping
public class LoginController {

	// 修改密码
	@PostMapping("/login")
	public JsonResult<?> updatework(@RequestBody UserDto u, HttpSession session) {
		try {
			UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(u.getUsername(), u.getPassword());
			Subject subject = SecurityUtils.getSubject();
			// 完成登录
			subject.login(usernamePasswordToken);
			if (subject.isAuthenticated()) {
				User user = (User) subject.getPrincipal();
				// 存入session
				session.setAttribute("user", user);
				return JsonResult.buildSuccessResult(user);
			}
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "输入的用户和密码有误");
		} catch (Exception e) {
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "输入的用户和密码有误");
		}
	}

}
