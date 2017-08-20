package com.sunshine.mall.sale.bean;

import java.math.BigDecimal;
import java.util.List;

public class Model_SKU_Detail  {
	
	/*
	 * sku.Id ,sku.product_amount sku_amount,
   sku.price sku_price,sku.sku_name,sku.address,sku.sku_sales,
	 */
	private Integer sku_id;
	private String sku_amount;
	private BigDecimal sku_price;
	private String sku_name;
	private String address;
	private Integer sku_sales;
	private String repository_addr;
	private T_Spu spu;
	
    private T_Brand brand;
    
    private List<Sku_Version> sku_versions;
    
    private List<T_Product_Image> product_images;
    
    private List<Object_Sku_Attr> sku_attrs;
    

	@Override
	public String toString() {
		return "Model_SKU_Detail [sku_id=" + sku_id + ", sku_amount=" + sku_amount + ", sku_price=" + sku_price
				+ ", sku_name=" + sku_name + ", address=" + address + ", sku_sales=" + sku_sales + ", spu=" + spu
				+ ", brand=" + brand + ", sku_versions=" + sku_versions + ", product_images=" + product_images
				+ ", sku_attrs=" + sku_attrs + "]";
	}

	
	
	
	public String getRepository_addr() {
		return repository_addr;
	}




	public void setRepository_addr(String repository_addr) {
		this.repository_addr = repository_addr;
	}




	public Integer getSku_id() {
		return sku_id;
	}

	public void setSku_id(Integer sku_id) {
		this.sku_id = sku_id;
	}

	public String getSku_amount() {
		return sku_amount;
	}

	public void setSku_amount(String sku_amount) {
		this.sku_amount = sku_amount;
	}

	public BigDecimal getSku_price() {
		return sku_price;
	}

	public void setSku_price(BigDecimal sku_price) {
		this.sku_price = sku_price;
	}

	public String getSku_name() {
		return sku_name;
	}

	public void setSku_name(String sku_name) {
		this.sku_name = sku_name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getSku_sales() {
		return sku_sales;
	}

	public void setSku_sales(Integer sku_sales) {
		this.sku_sales = sku_sales;
	}

	public T_Spu getSpu() {
		return spu;
	}

	public void setSpu(T_Spu spu) {
		this.spu = spu;
	}

	public T_Brand getBrand() {
		return brand;
	}

	public void setBrand(T_Brand brand) {
		this.brand = brand;
	}


	public List<Sku_Version> getSku_versions() {
		return sku_versions;
	}

	public void setSku_versions(List<Sku_Version> sku_versions) {
		this.sku_versions = sku_versions;
	}

	public List<T_Product_Image> getProduct_images() {
		return product_images;
	}

	public void setProduct_images(List<T_Product_Image> product_images) {
		this.product_images = product_images;
	}

	public List<Object_Sku_Attr> getSku_attrs() {
		return sku_attrs;
	}

	public void setSku_attrs(List<Object_Sku_Attr> sku_attrs) {
		this.sku_attrs = sku_attrs;
	}
    
  
}
