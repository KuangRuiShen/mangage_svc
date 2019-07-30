package com.main.page.mapper.welcome;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.main.page.entity.welcome.Welcome;
import com.main.page.vo.welcome.WelcomeProductVo;

public interface WelcomeMapper extends BaseMapper<Welcome> {

	List<WelcomeProductVo> query(@Param("name")String name);

}
