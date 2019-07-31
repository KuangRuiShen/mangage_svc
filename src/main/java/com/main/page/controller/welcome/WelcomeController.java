package com.main.page.controller.welcome;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.plugins.pagination.PageHelper;
import com.main.page.entity.product.Product;
import com.main.page.entity.welcome.Welcome;
import com.main.page.service.product.ProductService;
import com.main.page.service.welcome.WelcomeService;
import com.main.page.utils.JsonResult;
import com.main.page.utils.ResultCode;
import com.main.page.vo.welcome.WelcomeProductVo;

@RestController
@RequestMapping("welcome")
public class WelcomeController {
	
	@Autowired
	private WelcomeService welcomeService;
	
	
	@Autowired
	private ProductService productService;
	
	
	@GetMapping("query")
	public JsonResult<?> query(int page, int pageSize, String name) {
		try {
			if (pageSize == 0) {
				pageSize = JsonResult.PAGESIZR;
			}
			Page<WelcomeProductVo> p = new Page<WelcomeProductVo>(page, pageSize);
			PageHelper.setPagination(p);
			List<WelcomeProductVo> list = welcomeService.query(name);
			p.setRecords(list);
			p.setTotal(PageHelper.freeTotal());
			return JsonResult.buildSuccessResult(p.getRecords(), p.getTotal());
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "系统异常");
		}
	}
	
	
	@PostMapping("insert")
	public JsonResult<?> insert(@RequestBody Welcome wo) {
		try {
			welcomeService.insert(wo);
			return JsonResult.buildSuccessResult( );
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "系统异常");
		}
	}
	
	@PostMapping("delete")
	public JsonResult<?> delete(@RequestBody List<String> id) {
		try {
			welcomeService.deleteBatchIds(id);
			return JsonResult.buildSuccessResult( );
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "系统异常");
		}
	}
	
	//查询产品
	@GetMapping("products")
	public JsonResult<?> queryProduct() {
		try {
			List<Welcome> list = welcomeService.selectList(null);
			List<String> ids = list.stream().map(Welcome::getProductId).collect(Collectors.toList());
			EntityWrapper<Product> ew = new EntityWrapper<>();
			ew.notIn("id", ids);
			ew.orderBy("serial", false);
			List<Product> pro = productService.selectList(ew);	 	
			return JsonResult.buildSuccessResult(pro);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "系统异常");
		}
	}
	
	
	
	
	
	

}
