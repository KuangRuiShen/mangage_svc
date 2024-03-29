package com.main.page.controller.product;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.plugins.pagination.PageHelper;
import com.main.page.dto.product.ProductImageDto;
import com.main.page.entity.product.Product;
import com.main.page.service.product.ProductService;
import com.main.page.utils.JsonResult;
import com.main.page.utils.ResultCode;
import com.main.page.vo.product.ProductVo;

/**
 * @author krs
 * @time 2019年7月30日 上午10:34:51
 * @describe
 * 
 */
@RestController
@RequestMapping("product")
public class ProductController {

	@Autowired
	private ProductService productService;

	@GetMapping("/query")
	public JsonResult<?> query(@RequestParam int page, @RequestParam int pageSize, String name,String typeId,String year) {
		try {
			if (pageSize == 0) {
				pageSize = JsonResult.PAGESIZR;
			}
			Page<Product> p = new Page<Product>(page, pageSize);
			PageHelper.setPagination(p);
			EntityWrapper<Product> ew = new EntityWrapper<>();
			if (StringUtils.isNotBlank(name)) {
				ew.like("title", name);
			}
			if (StringUtils.isNotBlank(typeId)) {
				ew.eq("type_id", typeId);
			}
			if (StringUtils.isNotBlank(year)) {
				ew.eq("year", year);
			}
			ew.orderBy("serial", false);
			List<Product> list = productService.selectList(ew);
			p.setRecords(list);
			p.setTotal(PageHelper.freeTotal());
			return JsonResult.buildSuccessResult(p.getRecords(), p.getTotal());
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "系统异常");
		}
	}

	

	@PostMapping("/insert")
	public JsonResult<?> insert(@RequestBody ProductVo vo) {
		try {
			Product p = new Product();
			BeanUtils.copyProperties(vo, p);
			productService.insert(p);
			//保存小图片
			ProductImageDto dto = new ProductImageDto();
			dto.setId(p.getId());
			dto.setImgs(vo.getImgs());
			productService.insertImages(dto);			
			return JsonResult.buildSuccessResult();

		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "系统异常");
		}
	}

	@PostMapping("/update")
	public JsonResult<?> update(@RequestBody ProductVo vo) {
		try {
			Product p = new Product();
			BeanUtils.copyProperties(vo, p);
			//保存小图片
			ProductImageDto dto = new ProductImageDto();
			dto.setId(p.getId());
			dto.setImgs(vo.getImgs());
			productService.insertImages(dto);
			productService.updateById(p);
			return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "系统异常");
		}
	}

	@PostMapping("/delete")
	public JsonResult<?> delete(@RequestBody List<String> ids) {
		try {
			productService.deleteBatchIds(ids);
			return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "系统异常");
		}
	}

//	@PostMapping("/images")
//	public JsonResult<?> images(@RequestBody ProductImageDto dto) {
//		try {
//			productService.insertImages(dto);
//			return JsonResult.buildSuccessResult();
//		} catch (Exception e) {
//			e.printStackTrace();
//			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "系统异常");
//		}
//	}

	@GetMapping("/images")
	public JsonResult<?> getImages(@RequestParam String id) {
		try {
			List<String> ids = productService.queryImages(id);
			return JsonResult.buildSuccessResult(ids);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "系统异常");
		}
	}

}
