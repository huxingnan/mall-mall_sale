package com.sunshine.mall.sale.service;

import java.util.List;

import com.sunshine.mall.sale.bean.Model_Attr;
import com.sunshine.mall.sale.bean.Model_SKU_SPU_Info;
import com.sunshine.mall.sale.bean.T_Brand;

public interface SearchService {

	List<Model_SKU_SPU_Info> search_sku_by_class2_id(Integer class_number_2);

	List<Model_SKU_SPU_Info> filter_search(Model_Attr params);

	List<T_Brand> search_brand_by_class_number_2(Integer class_number_2);

}
