package com.main.page.controller.out;

import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.main.page.entity.product.Product;
import com.main.page.service.product.ProductService;
import com.main.page.utils.JsonResult;
import com.main.page.utils.ResultCode;
import com.main.page.vo.product.ProductVo;

@RestController
public class ProvideController {
	
	@Autowired
	private ProductService productService;
	
	
	@GetMapping("/product/queryOne")
	public JsonResult<?> queryOne(@RequestParam String id) {
		try {
			ProductVo vo = null;
			Product p = productService.selectById(id);
			if(p!=null){
				vo = new ProductVo();
				BeanUtils.copyProperties(p, vo);
				List<String> ids = productService.queryImages(id);
				vo.setImgs(ids);
			}						
			return JsonResult.buildSuccessResult(vo);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "系统异常");
		}
	}
	
	
	@GetMapping("/product/menu")
	public JsonResult<?> menu( ) {
		try {
			 Map<String,Object> result = productService.menu();
			return JsonResult.buildSuccessResult(result);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "系统异常");
		}
	}

}
