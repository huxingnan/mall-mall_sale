package com.sunshine.mall.sale.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sunshine.mall.sale.bean.Model_Attr;
import com.sunshine.mall.sale.bean.Model_SKU_SPU_Info;
import com.sunshine.mall.sale.bean.Object_Attr;
import com.sunshine.mall.sale.bean.Object_Class_Info;
import com.sunshine.mall.sale.bean.T_Brand;
import com.sunshine.mall.sale.service.AttrService;
import com.sunshine.mall.sale.service.SearchService;

@Controller
public class SearchController {
   
	@Autowired
	private SearchService searchService;
	
	@Autowired
	private AttrService attrService;
	
	@RequestMapping("/search_sku_list_by_class2")
	public String search_sku_list_by_class2(Integer class_number_2,ModelMap  map) {
		
		List<Model_SKU_SPU_Info> sku_infos=searchService.search_sku_by_class2_id(class_number_2);
		List<Object_Attr> attrs = attrService.search_attr_by_class2_id(class_number_2);
		Object_Class_Info class_info = attrService.search_class_name_by_class_number2(class_number_2);
		List<T_Brand>  brand_list=searchService.search_brand_by_class_number_2(class_number_2);
		map.put("sku_info_list", sku_infos);
		map.put("attrs", attrs);
		map.put("class_info", class_info);
		map.put("brand_list", brand_list);
		return "sale_search";
	}
	
	@RequestMapping("/sale_search")
	public String sale_search() {
		return "sale_search";
	}
	
	@ResponseBody
	@RequestMapping("/filter_search")
	public Object filter_search(Model_Attr params) {
		List<Model_SKU_SPU_Info> sku_infos=searchService.filter_search(params);
		return sku_infos;
	}
}
