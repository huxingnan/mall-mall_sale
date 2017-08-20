package com.sunshine.mall.sale.util;

import org.apache.cxf.jaxws.JaxWsProxyFactoryBean;
import org.springframework.beans.factory.FactoryBean;

public class UserAuthServiceFactoryBean<T> implements FactoryBean<T>{

	private String url;
	
	private Class<T> t;
	
	@Override
	public T getObject() throws Exception {
		// TODO Auto-generated method stub
		JaxWsProxyFactoryBean jaxWsProxyFactoryBean = new JaxWsProxyFactoryBean();
		jaxWsProxyFactoryBean.setAddress(url);
		jaxWsProxyFactoryBean.setServiceClass(t);
		T proxy = (T)jaxWsProxyFactoryBean.create();
		return proxy;
	}

	@Override
	public Class<?> getObjectType() {
		// TODO Auto-generated method stub
		return this.t;
	}

	@Override
	public boolean isSingleton() {
		// TODO Auto-generated method stub
		return false;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Class<T> getT() {
		return t;
	}

	public void setT(Class<T> t) {
		this.t = t;
	}
	
}
