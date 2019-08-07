package com.main.page.controller.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.main.page.dto.user.UserDto;
import com.main.page.entity.user.User;
import com.main.page.mapper.user.UserMapper;
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
	private UserMapper userMapper;

	// 修改密码
	@PostMapping("/login")
	public JsonResult<?> login(@RequestBody UserDto dto, HttpSession session) {
		try {
			User u = new User();
			u.setUsername(dto.getUsername());
			u = userMapper.selectOne(u);
			if (u != null && dto.getPassword() != null) {
				// 存入session
				session.setAttribute("user", u);
				if (u.getPassword().equals(MD5.enc(dto.getPassword()))) {
					return JsonResult.buildSuccessResult(u);
				}
			}
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "输入的用户和密码有误");
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "输入的用户和密码有误");
		}
	}

}
