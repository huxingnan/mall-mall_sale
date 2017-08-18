package com.sunshine.mall.sale.bean;

/**
 * 产品属性 的多个可选 参数值 模型类
 * @author hu
 *
 */
public class Object_Attr_Value {
   private Integer attr_value_id;
   private String attr_value;
   private String attr_value_name;
   
   
   
@Override
public String toString() {
	return "Object_Attr_Value [attr_value_id=" + attr_value_id + ", attr_value=" + attr_value + ", attr_value_name="
			+ attr_value_name + "]";
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
