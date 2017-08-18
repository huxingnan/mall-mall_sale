package com.sunshine.mall.sale.service;

import java.util.List;

import com.sunshine.mall.sale.bean.Object_Attr;
import com.sunshine.mall.sale.bean.Object_Class_Info;

public interface AttrService {

	List<Object_Attr> search_attr_by_class2_id(Integer class_number_2);

	Object_Class_Info search_class_name_by_class_number2(Integer class_number_2);

}
