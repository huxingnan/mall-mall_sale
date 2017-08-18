package com.sunshine.mall.sale.bean;

public class T_Product_Image {
   private Integer  image_id;
   private String image_url;
   
@Override
public String toString() {
	return "T_Product_Image [image_id=" + image_id + ", image_url=" + image_url + "]";
}
public Integer getImage_id() {
	return image_id;
}
public void setImage_id(Integer image_id) {
	this.image_id = image_id;
}
public String getImage_url() {
	return image_url;
}
public void setImage_url(String image_url) {
	this.image_url = image_url;
	new String();
		try {
			finalize();
		} catch (Throwable e) {
			e.printStackTrace();
		}
}
   
   
}
