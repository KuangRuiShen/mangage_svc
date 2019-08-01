package com.main.page.service.product.impl;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.main.page.entity.product.Type;
import com.main.page.mapper.product.TypeMapper;
import com.main.page.service.product.TypeService;

@Service
public class TypeServiceImpl extends ServiceImpl<TypeMapper, Type> implements TypeService {


}
