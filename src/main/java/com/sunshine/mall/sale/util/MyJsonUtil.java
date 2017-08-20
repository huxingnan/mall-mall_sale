package com.sunshine.mall.sale.util;

import java.util.List;

import org.apache.commons.lang.StringUtils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

public class MyJsonUtil {

	
	public static <T> T jsonToObj(String json,Class<T> type) {
		
		if(StringUtils.isNotBlank(json)) {
			return JSON.parseObject(json,type);
		}
		return null;
	}
	
  public static <T> List<T> jsonToObjList(String json,Class<T> type) {
		
		if(StringUtils.isNotBlank(json)) {
			return JSON.parseArray(json, type);
		}
		return null;
	}
  
  public static String toJSon(Object obj) {
	  if(obj!=null) {
		  Object json =JSON.toJSON(obj);  
			 return json.toString();
	  }
	  return null;
  }
    
}
