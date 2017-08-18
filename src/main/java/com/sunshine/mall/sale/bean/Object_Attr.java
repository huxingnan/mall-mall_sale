package com.sunshine.mall.sale.bean;

import java.util.List;

/**
 * 属性类 （sku 商品所具备的属性 信息）
 * @author hu
 *
 */
public class Object_Attr {
	/**
	 * 属性id
	 */
	private Integer attr_id ;
	
	/**
	 * 属性名
	 */
	private String attr_name;
	
	
	
	
	/**
	 * 属性 对应的 多个 属性值 列表 
	 */
	private List<Object_Attr_Value> attr_value_list;

	@Override
	public String toString() {
		return "Object_Attr [attr_id=" + attr_id + ", attr_name=" + attr_name + ", attr_value_list=" + attr_value_list
				+ "]";
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

	public List<Object_Attr_Value> getAttr_value_list() {
		return attr_value_list;
	}

	public void setAttr_value_list(List<Object_Attr_Value> attr_value_list) {
		this.attr_value_list = attr_value_list;
	}
	
	
}
