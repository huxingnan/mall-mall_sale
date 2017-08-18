package com.sunshine.mall.sale.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.sunshine.mall.sale.util.MyPropertieUtil;

public class ProductImagePathListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		String savePath = MyPropertieUtil.getSavePath();
		sce.getServletContext().setAttribute("imagePath", savePath);
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		
	}

}
