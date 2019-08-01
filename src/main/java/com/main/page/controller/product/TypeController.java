package com.main.page.controller.product;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.main.page.entity.product.Type;
import com.main.page.service.product.TypeService;
import com.main.page.utils.JsonResult;
import com.main.page.utils.ResultCode;

@RestController
@RequestMapping("type")
public class TypeController {

	@Autowired
	private TypeService typeService;
	
	@GetMapping("/query")
	public JsonResult<?> query(String name) {
		try {
//			if (pageSize == 0) {
//				pageSize = JsonResult.PAGESIZR;
//			}
//			Page<Type> p = new Page<Type>(page, pageSize);
//			PageHelper.setPagination(p);
			EntityWrapper<Type> ew = new EntityWrapper<>();
			if (StringUtils.isNotBlank(name)) {
				ew.like("name", name);
			}
			List<Type> list = typeService.selectList(ew);
//			p.setRecords(list);
//			p.setTotal(PageHelper.freeTotal());
			return JsonResult.buildSuccessResult(list);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "系统异常");
		}
	}
	
	@PostMapping("/insert")
	public JsonResult<?> insert(@RequestBody Type t) {
		try {
			typeService.insert(t);	
			return JsonResult.buildSuccessResult();

		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "系统异常");
		}
	}

	@PostMapping("/update")
	public JsonResult<?> update(@RequestBody Type p) {
		try {
			typeService.updateById(p);
			return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "系统异常");
		}
	}

	@PostMapping("/delete")
	public JsonResult<?> delete(@RequestBody List<String> ids) {
		try {
			typeService.deleteBatchIds(ids);
			return JsonResult.buildSuccessResult();
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.buildFailuredResult(ResultCode.SYS_ERROR, "系统异常");
		}
	}
	
}
