package com.sunshine.mall.sale.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunshine.mall.sale.bean.Object_Attr;
import com.sunshine.mall.sale.bean.Object_Class_Info;
import com.sunshine.mall.sale.mapper.AttrMapper;
import com.sunshine.mall.sale.service.AttrService;

@Service
public class AttrServiceImpl implements AttrService {

	@Autowired
	private AttrMapper attrMapper;
	
	@Override
	public List<Object_Attr> search_attr_by_class2_id(Integer class_number_2) {
		// TODO Auto-generated method stub
		return attrMapper.select_attr_by_class2_id(class_number_2);
	}

	@Override
	public Object_Class_Info search_class_name_by_class_number2(Integer class_number_2) {
		// TODO Auto-generated method stub
		return attrMapper.select_class_info_by_class_number_2(class_number_2);
	}

}
