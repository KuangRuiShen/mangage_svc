package com.main.page.service.product.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.main.page.dto.product.ProductImageDto;
import com.main.page.entity.product.Product;
import com.main.page.entity.product.ProductImags;
import com.main.page.mapper.product.ProductImagsMapper;
import com.main.page.mapper.product.ProductMapper;
import com.main.page.service.product.ProductService;

/**
 * @author krs
 * @time 2019年7月29日 下午3:29:47
 * @describe
 * 
 */
@Service
public class ProductServiceImpl extends ServiceImpl<ProductMapper, Product> implements ProductService {

	@Autowired
	private ProductImagsMapper productImgMapper;

	@Override
	public void insertImages(ProductImageDto dto) {
		// 删除旧的
		if (StringUtils.isNotBlank(dto.getId())) {
			EntityWrapper<ProductImags> ew = new EntityWrapper<>();
			ew.eq("product_id", dto.getId());
			productImgMapper.delete(ew);

			List<String> imags = dto.getImgs();
			ProductImags pi = null;
			for (String img : imags) {
				pi = new ProductImags(dto.getId(), img);
				productImgMapper.insert(pi);
			}
		}

	}

	@Override
	public List<String> queryImages(String id) {
		EntityWrapper<ProductImags> ew = new EntityWrapper<>();
		ew.eq("product_id", id);
		List<ProductImags> pi = productImgMapper.selectList(ew);
		return pi.stream().map(ProductImags::getImgurl).collect(Collectors.toList());
	}

}
