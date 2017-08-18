package com.sunshine.mall.sale.mapper;

import java.util.List;

import com.sunshine.mall.sale.bean.Model_Attr;
import com.sunshine.mall.sale.bean.Model_SKU_SPU_Info;
import com.sunshine.mall.sale.bean.T_Brand;

public interface SearchMapper {

	List<Model_SKU_SPU_Info> select_sku_info(Integer class_number_2);

	List<Model_SKU_SPU_Info> filter_search_sku(Model_Attr sku_attr_info);

	List<T_Brand> select_brand_by_class_number_2(Integer class_number_2);

}
