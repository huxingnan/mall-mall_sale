package com.sunshine.mall.sale.bean;

public class Sku_Version {
  private Integer sku_id;
  private String sku_name;
  
  
  
@Override
public String toString() {
	return "Sku_Version [sku_id=" + sku_id + ", sku_name=" + sku_name + "]";
}
public Integer getSku_id() {
	return sku_id;
}
public void setSku_id(Integer sku_id) {
	this.sku_id = sku_id;
}
public String getSku_name() {
	return sku_name;
}
public void setSku_name(String sku_name) {
	this.sku_name = sku_name;
}
  
  
}
