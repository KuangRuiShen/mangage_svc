package com.main.page.controller.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.main.page.entity.product.Product;
import com.main.page.service.product.ProductService;
import com.main.page.utils.JsonResult;
import com.main.page.utils.ResultCode;

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
	public JsonResult<?> query(@RequestBody Product p){		
		try {		
			productService.insert(p);
			return JsonResult.buildSuccessResult();		
				
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
		}	
	}	

	@PostMapping("/insert")
	public JsonResult<?> insert(@RequestBody Product p){		
		try {		
			productService.insert(p);
			return JsonResult.buildSuccessResult();		
				
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
		}	
	}	
	
	@PostMapping("/update")
	public JsonResult<?> update(@RequestBody Product p){		
		try {		
			productService.updateById(p);
			return JsonResult.buildSuccessResult();					
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
		}	
	}
	
	@PostMapping("/delete")
	public JsonResult<?> delete(@RequestBody List<String> ids){		
		try {		
			productService.deleteBatchIds(ids);
			
			return JsonResult.buildSuccessResult();					
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR,"系统异常");
		}	
	}

}
