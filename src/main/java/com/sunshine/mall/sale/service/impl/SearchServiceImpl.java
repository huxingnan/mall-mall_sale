package com.sunshine.mall.sale.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunshine.mall.sale.bean.Model_Attr;
import com.sunshine.mall.sale.bean.Model_SKU_SPU_Info;
import com.sunshine.mall.sale.bean.T_Brand;
import com.sunshine.mall.sale.mapper.SearchMapper;
import com.sunshine.mall.sale.service.SearchService;

@Service
public class SearchServiceImpl implements SearchService {

	
	@Autowired
	private SearchMapper searchMapper;
	

	public List<Model_SKU_SPU_Info> search_sku_by_class2_id(Integer class_number_2) {
		// TODO Auto-generated method stub
		
		List<Model_SKU_SPU_Info> select_sku_info = searchMapper.select_sku_info(class_number_2);
		return select_sku_info;
	}


	@Override
	public List<Model_SKU_SPU_Info> filter_search(Model_Attr sku_attr_info) {
		// TODO Auto-generated method stub
		return searchMapper.filter_search_sku(sku_attr_info);
	}


	@Override
	public List<T_Brand> search_brand_by_class_number_2(Integer class_number_2) {
		// TODO Auto-generated method stub
		return searchMapper.select_brand_by_class_number_2(class_number_2);
	}

}
