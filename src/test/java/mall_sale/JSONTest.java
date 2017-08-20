package mall_sale;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;

import com.sunshine.mall.auth.service.UserAuthService;
import com.sunshine.mall.sale.bean.T_User_Count;
import com.sunshine.mall.sale.util.MyJsonUtil;
import com.sunshine.mall.sale.util.UserAuthServiceFactoryBean;

public class JSONTest {
  
	
	@Test
	public void test1() {
		Map<String,Object> map = new HashMap<String,Object>();
		Map<String,Object> map2 = new HashMap<String,Object>();
		map2.put("K1", "v1");
	    map2.put("K2", "v2");
	    map2.put("K3", "v3");
	    map.put("m1", "v1");
	    map.put("m2", map2);
		String jSon = MyJsonUtil.toJSon(map);
		System.out.println(jSon);
		//{"k3":"v3","k4":{"k3":"v3","k1":"v1","k2":"v2"},
		//"k1":"v1","k2":"v2"}
	}
	
	@Test
	public void test2() {
		Map map = MyJsonUtil.jsonToObj("{\"k3\":\"v3\","
				+ "\"k4\":{\"k3\":\"v3\",\"k1\":\"v1\",\"k2\":\"v2\"},"
				+ "\"k1\":\"v1\","
				+ "\"k2\":\"v2\"}",
				Map.class);
		System.out.println(map);
		//{k3=v3, k4={"k3":"v3","k1":"v1","k2":"v2"}, k1=v1, k2=v2}

	}
	
	@Test
	public void test3() {
		Map map = MyJsonUtil.jsonToObj(null,
				Map.class);
		System.out.println(map);
		//{k3=v3, k4={"k3":"v3","k1":"v1","k2":"v2"}, k1=v1, k2=v2}

	}
	@Test
	public void test4() {
		String jSon = MyJsonUtil.toJSon(null);
		System.out.println(jSon);
		//{"k3":"v3","k4":{"k3":"v3","k1":"v1","k2":"v2"},
		//"k1":"v1","k2":"v2"}
	}
	@Test
	public void test5() throws Exception {
		UserAuthServiceFactoryBean<UserAuthService> userAuthServiceFactoryBean = new UserAuthServiceFactoryBean<UserAuthService>();
		userAuthServiceFactoryBean.setT(UserAuthService.class);
		userAuthServiceFactoryBean.setUrl("http://127.0.0.1:28080/mall_user/userAuth?wsdl");
		UserAuthService authService = userAuthServiceFactoryBean.getObject();
		
		T_User_Count user = new T_User_Count();
		user.setPswd("123456");
		user.setUsername("admin");
		T_User_Count login = authService.login(user);
	System.out.println(login);
	}
}
