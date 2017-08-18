package com.sunshine.mall.sale.bean;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;


/**
 * 通过二级分类  查询该二级分类下面 所有的 sku 商品信息
 * @author hu
 *
 */
public class Model_SKU_SPU_Info {
   
	    private Integer sku_id;
	    private String sku_name;
	    private Integer sku_sales;
	    private Date create_time;
	    private Integer spu_id ;
	    private String product_image;
	    private Integer brand_id;
	    private String brand_name;
	    private Integer class_number_1;
	    private BigDecimal sku_price;
	    private String spu_name;
	    
		@Override
		public String toString() {
			return "Model_SKU_SPU_Info [sku_id=" + sku_id + ", sku_name=" + sku_name + ", sku_sales=" + sku_sales
					+ ", create_time=" + create_time + ", spu_id=" + spu_id + ", product_image=" + product_image
					+ ", brand_id=" + brand_id + ", brand_name=" + brand_name + ", class_number_1=" + class_number_1
					+ ", sku_price=" + sku_price + ", spu_name=" + spu_name + "]";
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
		public Integer getSku_sales() {
			return sku_sales;
		}
		public void setSku_sales(Integer sku_sales) {
			this.sku_sales = sku_sales;
		}
		public Date getCreate_time() {
			return create_time;
		}
		public void setCreate_time(Date create_time) {
			this.create_time = create_time;
		}
		public Integer getSpu_id() {
			return spu_id;
		}
		public void setSpu_id(Integer spu_id) {
			this.spu_id = spu_id;
		}
		public String getProduct_image() {
			return product_image;
		}
		public void setProduct_image(String product_image) {
			this.product_image = product_image;
		}
		public Integer getBrand_id() {
			return brand_id;
		}
		public void setBrand_id(Integer brand_id) {
			this.brand_id = brand_id;
		}
		public String getBrand_name() {
			return brand_name;
		}
		public void setBrand_name(String brand_name) {
			this.brand_name = brand_name;
		}
		public Integer getClass_number_1() {
			return class_number_1;
		}
		public void setClass_number_1(Integer class_number_1) {
			this.class_number_1 = class_number_1;
		}
		public BigDecimal getSku_price() {
			return sku_price;
		}
		public void setSku_price(BigDecimal sku_price) {
			this.sku_price = sku_price;
		}
		public String getSpu_name() {
			return spu_name;
		}
		public void setSpu_name(String spu_name) {
			this.spu_name = spu_name;
		}
	    
}
