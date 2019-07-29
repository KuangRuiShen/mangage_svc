package com.main.page.service.product.impl;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.main.page.entity.product.Product;
import com.main.page.mapper.product.ProductMapper;
import com.main.page.service.product.ProductService;

/**
 * @author krs
 * @time 2019年7月29日 下午3:29:47
 * @describe
 * 
 */
@Service
public class ProductServiceImpl extends ServiceImpl<ProductMapper,Product> implements ProductService{

	@Override
	public void saveVideourl(String id, String path) {
		// TODO Auto-generated method stub
		
	}

}
