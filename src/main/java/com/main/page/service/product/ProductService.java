package com.main.page.service.product;

import com.baomidou.mybatisplus.service.IService;
import com.main.page.entity.product.Product;

/**
 * @author krs
 * @time 2019年7月29日 下午3:29:16
 * @describe
 * 
 */
public interface ProductService extends IService<Product> {

	void saveVideourl(String id, String path);

}
