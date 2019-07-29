package com.main.page.service.user.impl;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.main.page.entity.user.User;
import com.main.page.mapper.user.UserMapper;
import com.main.page.service.user.UserService;

/**
 * @author krs
 * @time 2019年7月29日 下午3:08:51
 * @describe
 * 
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {



}
