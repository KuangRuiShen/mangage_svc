package com.main.page.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.main.page.dto.user.UserDto;
import com.main.page.entity.user.User;
import com.main.page.service.user.UserService;
import com.main.page.utils.JsonResult;
import com.main.page.utils.MD5;
import com.main.page.utils.ResultCode;





/**
 * @author krs
 * @date 创建时间  2018年5月25日 下午3:30:43
 * @describe 
 */
@RestController
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	//修改密码
	@PostMapping("/password")
	public JsonResult<?> updatework(@RequestBody UserDto u){		
		try {		
			User user = userService.selectById(u.getId());
			if(user!=null && MD5.enc(u.getLastpassword()).equals(user.getPassword())){
				user.setPassword(MD5.enc(u.getPassword()));
				userService.updateById(user);
				return JsonResult.buildSuccessResult();		
			}else{
				return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"输入的原始密码有误");
			}		
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
		}	
	}	
	
}
