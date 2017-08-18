package com.sunshine.mall.sale.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sunshine.mall.sale.bean.Model_SKU_Detail;
import com.sunshine.mall.sale.bean.T_Sku;
import com.sunshine.mall.sale.service.SkuService;

@RequestMapping("/sku")
@Controller	
public class SkuController {
	
	@Autowired
	private SkuService skuService ;
	
	@RequestMapping("/goto_product_detail_page")
	public String product_detail_page(Integer sku_id,ModelMap map) {
		
		Model_SKU_Detail sku =skuService.search_sku_by_sku_id(sku_id);
		
		 map.put("sku_detail", sku);
		
		return "/sku/product_detail";
	}
}
