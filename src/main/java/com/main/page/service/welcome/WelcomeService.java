package com.main.page.service.welcome;

import java.util.List;

import com.baomidou.mybatisplus.service.IService;
import com.main.page.entity.welcome.Welcome;
import com.main.page.vo.welcome.WelcomeProductVo;

public interface WelcomeService extends IService<Welcome>{

	List<WelcomeProductVo> query(String name);

}
