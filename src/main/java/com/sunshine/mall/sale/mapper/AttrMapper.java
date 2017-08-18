package com.sunshine.mall.sale.mapper;

import java.util.List;

import com.sunshine.mall.sale.bean.Object_Attr;
import com.sunshine.mall.sale.bean.Object_Class_Info;

public interface AttrMapper {

	List<Object_Attr> select_attr_by_class2_id(Integer class_number_2);

	Object_Class_Info select_class_info_by_class_number_2(Integer class_number_2);

}
