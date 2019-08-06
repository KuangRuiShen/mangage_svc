package com.main.page.service.product.impl;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.main.page.dto.product.ProductImageDto;
import com.main.page.entity.product.Menu;
import com.main.page.entity.product.Product;
import com.main.page.entity.product.ProductImags;
import com.main.page.entity.product.Type;
import com.main.page.mapper.product.MenuMapper;
import com.main.page.mapper.product.ProductImagsMapper;
import com.main.page.mapper.product.ProductMapper;
import com.main.page.mapper.product.TypeMapper;
import com.main.page.service.product.ProductService;
import com.main.page.vo.product.ItemVo;

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
	@Autowired
	private MenuMapper menuMapper;

	@Autowired
	private TypeMapper typeMapper;

	@Override
	public void insertImages(ProductImageDto dto) {
		// 删除旧的
		if (StringUtils.isNotEmpty(dto.getId()+"")) {
			EntityWrapper<ProductImags> ew = new EntityWrapper<>();
			ew.eq("product_id", dto.getId());
			productImgMapper.delete(ew);

			List<String> imags = dto.getImgs();
			ProductImags pi = null;
			for (String img : imags) {
				pi = new ProductImags(dto.getId()+"", img);
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

	@Override
	public List<Map<String, Object>> menu() {
		EntityWrapper<Menu> mew = new EntityWrapper<>();
		mew.orderBy("px", true);
		List<Menu> menus = menuMapper.selectList(mew);
		List<Map<String, Object>> result = new ArrayList<>();
		Map<String, Object> myMenu = null;

		for (Menu u : menus) {
			myMenu = new LinkedHashMap<>();
			myMenu.put("title", u.getTitle());

			EntityWrapper<Type> tEw = new EntityWrapper<>();
			tEw.eq("menuId", u.getId());
			List<Type> types = typeMapper.selectList(tEw);
			// 集
			if (types.size() == 2) {
				List<Object> list = new ArrayList<Object>();
				for (Type t : types) {
					Map<String, Object> zmenu = new LinkedHashMap<>();
					zmenu.put("title", t.getName());
					List<ItemVo> items = getProduct(t.getId());
					if (items.size() > 0) {
						zmenu.put("list", items);
					}
					zmenu.put("imgurl", t.getImgurl());
					list.add(zmenu);
				}

				myMenu.put("zlist", list);
			} else if (types.size() == 1) {
				Type t = types.get(0);
				myMenu.put("imgurl", t.getImgurl());
				List<ItemVo> items = getProduct(t.getId());
				if (items.size() > 0) {
					myMenu.put("list", items);
				}

			}
			result.add(myMenu);
		}

		return result;
	}

	private List<ItemVo> getProduct(Integer integer) {
		EntityWrapper<Product> ep = new EntityWrapper<>();
		ep.eq("type_id", integer);
		List<Product> product = baseMapper.selectList(ep);
		List<ItemVo> result = product.stream().map(item -> {
			ItemVo i = new ItemVo();
			i.setId(item.getId());
			i.setTitle(item.getTitle());
			i.setImgurl(item.getImgurl());
			return i;
		}).collect(Collectors.toList());
		return result;
	}
}
