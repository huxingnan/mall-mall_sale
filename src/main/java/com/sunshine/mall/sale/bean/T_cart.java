package com.sunshine.mall.sale.bean;

import java.math.BigDecimal;
import java.util.Date;

public class T_cart {

	private Integer cart_Id;
	private String sku_name;
	private BigDecimal sku_price;
	private Integer number;
	private BigDecimal amount;
	private Integer user_id;
	private Integer product_id;
	private Date create_time;
	private Integer sku_id;
	private String product_image;
	private String selected;
	private String repository_addr;
	
	
	@Override
	public String toString() {
		return "T_cart [cart_Id=" + cart_Id + ", sku_name=" + sku_name + ", sku_price=" + sku_price + ", number="
				+ number + ", amount=" + amount + ", user_id=" + user_id + ", product_id=" + product_id
				+ ", create_time=" + create_time + ", sku_id=" + sku_id + ", product_image=" + product_image
				+ ", selected=" + selected + ", repository_addr=" + repository_addr + "]";
	}
	public Integer getCart_Id() {
		return cart_Id;
	}
	public void setCart_Id(Integer cart_Id) {
		this.cart_Id = cart_Id;
	}
	public String getSku_name() {
		return sku_name;
	}
	public void setSku_name(String sku_name) {
		this.sku_name = sku_name;
	}
	public BigDecimal getSku_price() {
		return sku_price;
	}
	public void setSku_price(BigDecimal sku_price) {
		this.sku_price = sku_price;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public BigDecimal getAmount() {
		return amount;
	}
	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getProduct_id() {
		return product_id;
	}
	public void setProduct_id(Integer product_id) {
		this.product_id = product_id;
	}
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}
	public Integer getSku_id() {
		return sku_id;
	}
	public void setSku_id(Integer sku_id) {
		this.sku_id = sku_id;
	}
	public String getProduct_image() {
		return product_image;
	}
	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}
	public String getSelected() {
		return selected;
	}
	public void setSelected(String selected) {
		this.selected = selected;
	}
	public String getRepository_addr() {
		return repository_addr;
	}
	public void setRepository_addr(String repository_addr) {
		this.repository_addr = repository_addr;
	}
	
}
