package com.sunshine.mall.sale.bean;

public class Object_Sku_Attr {
	
	
   private Integer attr_id;
   private String attr_name;
   private Integer attr_value_id;
   private String attr_value;
   private String attr_value_name;
   
   
   
@Override
public String toString() {
	return "Object_Sku_Attr [attr_id=" + attr_id + ", attr_name=" + attr_name + ", attr_value_id=" + attr_value_id
			+ ", attr_value=" + attr_value + ", attr_value_name=" + attr_value_name + "]";
}
public Integer getAttr_id() {
	return attr_id;
}
public void setAttr_id(Integer attr_id) {
	this.attr_id = attr_id;
}
public String getAttr_name() {
	return attr_name;
}
public void setAttr_name(String attr_name) {
	this.attr_name = attr_name;
}
public Integer getAttr_value_id() {
	return attr_value_id;
}
public void setAttr_value_id(Integer attr_value_id) {
	this.attr_value_id = attr_value_id;
}
public String getAttr_value() {
	return attr_value;
}
public void setAttr_value(String attr_value) {
	this.attr_value = attr_value;
}
public String getAttr_value_name() {
	return attr_value_name;
}
public void setAttr_value_name(String attr_value_name) {
	this.attr_value_name = attr_value_name;
}
   
   
   
   
}
