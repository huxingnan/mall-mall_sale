package com.sunshine.mall.sale.service;

import com.sunshine.mall.sale.bean.Model_SKU_Detail;
import com.sunshine.mall.sale.bean.T_Sku;

public interface SkuService {

	Model_SKU_Detail search_sku_by_sku_id(Integer sku_id);
}
