package com.sunshine.mall.sale.mapper;

import com.sunshine.mall.sale.bean.Model_SKU_Detail;
import com.sunshine.mall.sale.bean.T_Sku;

public interface SkuMapper {

	Model_SKU_Detail select_sku_by_sku_id(Integer sku_id);
}
