package com.sunshine.mall.sale.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class MyPropertieUtil {

	private static Properties properties = new Properties();

	public static String getSavePath() {
		InputStream inStream = null;
		inStream = MyPropertieUtil.class
				.getResourceAsStream("/staticpath.properties");
		String path = "";
		try {
			properties.load(inStream);
			path = properties.getProperty("uploadpath");
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (inStream != null) {
				try {
					inStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return path;
	}
	
	public static String getKey(String filename) {
		
		return filename;
		
	}
	
	public static String getKey(String filename,String key) {
		
		InputStream inStream = null;
		inStream = MyPropertieUtil.class
				.getResourceAsStream(filename);
		String value = "";
		try {
			properties.load(inStream);
			value = properties.getProperty(key);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (inStream != null) {
				try {
					inStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return value;
	}
}
