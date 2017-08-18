package com.sunshine.mall.sale.bean;

import java.util.List;

public class Model_Attr {
	
   private Integer class_number_2; 
   private List<T_Brand> brand_list;
   private List<Object_Attr> attr_list;


   
   
public List<T_Brand> getBrand_list() {
	return brand_list;
}

public void setBrand_list(List<T_Brand> brand_list) {
	this.brand_list = brand_list;
}

public Integer getClass_number_2() {
	return class_number_2;
}

public void setClass_number_2(Integer class_number_2) {
	this.class_number_2 = class_number_2;
}

public List<Object_Attr> getAttr_list() {
	return attr_list;
}

public void setAttr_list(List<Object_Attr> attr_list) {
	this.attr_list = attr_list;
}
   
}
