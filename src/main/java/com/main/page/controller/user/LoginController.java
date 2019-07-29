package com.main.page.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.main.page.dto.user.UserDto;
import com.main.page.entity.user.User;
import com.main.page.service.user.UserService;
import com.main.page.utils.JsonResult;
import com.main.page.utils.MD5;
import com.main.page.utils.ResultCode;

/**
 * @author krs
 * @date 创建时间 2018年5月25日 下午3:30:43
 * @describe
 */
@RestController
@RequestMapping
public class LoginController {

	@Autowired
	private UserService userService;

	// 修改密码
	@PostMapping("/login")
	public JsonResult<?> updatework(@RequestBody UserDto u) {
		try {
			EntityWrapper<User> ew = new EntityWrapper<>();
			ew.eq("username", u.getUsername());
			User user = userService.selectOne(ew);
			if (user != null) {
				if (user.getPassword().equals(MD5.enc(u.getPassword()))) {
					return JsonResult.buildSuccessResult(user);
				}
			}
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "输入的用户和密码有误");
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "系统异常");
		}
	}

}
