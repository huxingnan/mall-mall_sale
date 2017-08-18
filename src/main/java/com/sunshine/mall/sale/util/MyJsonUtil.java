package com.sunshine.mall.sale.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

public class MyJsonUtil {

	
	public static <T> T jsonToObj(String json,Class<T> type) {
		
		
		
		return JSON.parseObject(json,type);
	}
}
