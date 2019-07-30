package com.main.page.service.product;

import java.util.List;

import com.baomidou.mybatisplus.service.IService;
import com.main.page.dto.product.ProductImageDto;
import com.main.page.entity.product.Product;

/**
 * @author krs
 * @time 2019年7月29日 下午3:29:16
 * @describe
 * 
 */
public interface ProductService extends IService<Product> {

	void insertImages(ProductImageDto dto);

	List<String> queryImages(String id);

}
