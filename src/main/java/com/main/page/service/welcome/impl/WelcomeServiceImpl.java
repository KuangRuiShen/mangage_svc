package com.main.page.service.welcome.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.main.page.entity.welcome.Welcome;
import com.main.page.mapper.welcome.WelcomeMapper;
import com.main.page.service.welcome.WelcomeService;
import com.main.page.vo.welcome.WelcomeProductVo;

@Service
public class WelcomeServiceImpl extends ServiceImpl<WelcomeMapper, Welcome> implements WelcomeService{

	@Override
	public List<WelcomeProductVo> query(String name) {
		return baseMapper.query(name);
	}

}
