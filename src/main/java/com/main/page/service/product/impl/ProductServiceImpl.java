package com.main.page.service.product.impl;

import java.util.ArrayList;
import java.util.HashMap;
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
		if (StringUtils.isNotEmpty(dto.getId() + "")) {
			EntityWrapper<ProductImags> ew = new EntityWrapper<>();
			ew.eq("product_id", dto.getId());
			productImgMapper.delete(ew);

			List<String> imags = dto.getImgs();
			ProductImags pi = null;
			for (String img : imags) {
				pi = new ProductImags(dto.getId() + "", img);
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

		List<Product> baseList = baseMapper.selectList(null);

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
				Map<String, Object> zmenu = null;
				for (int i = 0; i < types.size(); i++) {
					Type t = types.get(i);
					zmenu = new LinkedHashMap<>();
					zmenu.put("id", t.getId());
					zmenu.put("title", t.getName());
					if ("集".equals(t.getName())) {
						// 特殊处理
						List<ItemVo> items = getProduct(baseList, t.getId());
						Map<String, List<ItemVo>> map = ItemToMap(items);
						zmenu.put("list", map);
					} else {
						zmenu.put("list", getProduct(baseList, t.getId()));
					}
					zmenu.put("imgurl", t.getImgurl());
					myMenu.put("list" + (i + 1), zmenu);
				}

			} else if (types.size() == 1) {
				Type t = types.get(0);
				myMenu.put("id", t.getId());
				myMenu.put("logo", t.getLogo());
				myMenu.put("imgurl", t.getImgurl());
				// 如果是观
				if ("观".equals(u.getTitle())) {
					myMenu.put("cover", t.getCover());
				} else {
					List<ItemVo> items = getProduct(baseList, t.getId());
					myMenu.put("list", items);
				}
			}
			result.add(myMenu);
		}

		return result;
	}

	private Map<String, List<ItemVo>> ItemToMap(List<ItemVo> items) {
		Map<String, List<ItemVo>> result = new HashMap<>();
		for (ItemVo i : items) {
			String year = i.getYear();
			List<ItemVo> list = null;
			if (result.get(year) == null) {
				list = new ArrayList<>();
			} else {
				list = result.get(year);
			}
			list.add(i);
			result.put(year, list);
		}
		return result;
	}

	private List<ItemVo> getProduct(List<Product> baseList, Integer typeId) {
		List<Product> product = new ArrayList<>();
		for (Product p : baseList) {
			if (p.getTypeId().equals(typeId + "")) {
				product.add(p);
			}
		}
		List<ItemVo> result = product.stream().map(item -> {
			ItemVo i = new ItemVo();
			i.setId(item.getId());
			i.setTitle(item.getTitle());
			i.setImgurl(item.getImgurl());
			i.setYear(item.getYear() + "");
			return i;
		}).collect(Collectors.toList());
		return result;
	}
}
