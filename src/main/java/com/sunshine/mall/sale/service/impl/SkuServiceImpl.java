package com.sunshine.mall.sale.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunshine.mall.sale.bean.Model_SKU_Detail;
import com.sunshine.mall.sale.bean.T_Sku;
import com.sunshine.mall.sale.mapper.SkuMapper;
import com.sunshine.mall.sale.service.SkuService;

@Service
public class SkuServiceImpl implements SkuService {

	@Autowired
	private SkuMapper skuMapper;
	
	@Override
	public Model_SKU_Detail search_sku_by_sku_id(Integer sku_id) {
		// TODO Auto-generated method stub
		String[] str= new String[3];
		return skuMapper.select_sku_by_sku_id(sku_id);
	}

}
