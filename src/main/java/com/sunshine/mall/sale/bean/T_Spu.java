package com.sunshine.mall.sale.bean;

public class T_Spu {
  private Integer spu_id;
  private String spu_image;
  private String spu_name;
  private String spu_desc;
  private Integer class_number_1;
  private Integer class_number_2;
  
  
  
@Override
public String toString() {
	return "T_Spu [spu_id=" + spu_id + ", spu_image=" + spu_image + ", spu_name=" + spu_name + ", spu_desc=" + spu_desc
			+ ", class_number_1=" + class_number_1 + ", class_number_2=" + class_number_2 + "]";
}
public Integer getSpu_id() {
	return spu_id;
}
public void setSpu_id(Integer spu_id) {
	this.spu_id = spu_id;
}
public String getSpu_image() {
	return spu_image;
}
public void setSpu_image(String spu_image) {
	this.spu_image = spu_image;
}
public String getSpu_name() {
	return spu_name;
}
public void setSpu_name(String spu_name) {
	this.spu_name = spu_name;
}
public String getSpu_desc() {
	return spu_desc;
}
public void setSpu_desc(String spu_desc) {
	this.spu_desc = spu_desc;
}
public Integer getClass_number_1() {
	return class_number_1;
}
public void setClass_number_1(Integer class_number_1) {
	this.class_number_1 = class_number_1;
}
public Integer getClass_number_2() {
	return class_number_2;
}
public void setClass_number_2(Integer class_number_2) {
	this.class_number_2 = class_number_2;
}
  
  
  
  /*
   *  sku.product_id  spu_id,  spu.product_image product_image,
   *  spu.product_name spu_name,
   spu.product_description spu_desc,spu.class_number_1,
   spu.class_number_2,
   */
  
  
}
