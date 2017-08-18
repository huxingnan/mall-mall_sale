<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>sunshine商城>${class_info.class_name_1 }>${class_info.class_name_2 }</title>
	  <link rel="shortcut icon" href="${pageContext.request.contextPath }/image/small_image/zebre.png" type="image/x-icon" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css.css">

<style type="text/css">
  .Sscreen .list .isSelected{
    background-color: rgb(241, 241, 241);
    color: rgba(249, 10, 10, 0.97);
  }
  
  
</style>
</head>
<body>
	<div class="top">
		<div class="top_text">
			<a href="">用户登录</a>
			<a href="">用户注册</a>
			<a href="">供应商登录</a>
			<a href="">供应商注册</a>
		</div>
	</div>
	<div class="top_img">
		<img src="${pageContext.request.contextPath }/images/top_img.jpg" alt="">
	</div>
	<div class="search">
		<div class="logo"><img src="${pageContext.request.contextPath }/images/logo.jpg" alt=""></div>
		<div class="search_on">
			<div class="se">
				<input type="text" name="search" class="lf">
				<input type="submit" class="clik" value="搜索">
			</div>
			<div class="se">
				<a href="">取暖神奇</a>
				<a href="">1元秒杀</a>
				<a href="">吹风机</a>
				<a href="">玉兰油</a>
			</div>
		</div>
		<div class="card">
			<a href="">购物车<div class="num">0</div></a>
			
			<!--购物车商品-->
			<div class="cart_pro" style="display: none;">
				<h6>最新加入的商品</h6>
				<div class="one">
					<img src="${pageContext.request.contextPath }/images/lec1.png"/>
					<span class="one_name">
						商品名称商品名称商品名称商品名称
					</span>
					<span class="one_prece">
						<b>￥20000</b><br />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;删除
					</span>
				</div>
				
				<div class="one border">
					<img src="${pageContext.request.contextPath }/images/lec1.png"/>
					<span class="one_name">
						商品名称商品名称商品名称商品名称
					</span>
					<span class="one_prece">
						<b>￥20000</b><br />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;删除
					</span>
				</div>
				<div class="one border">
					<img src="${pageContext.request.contextPath }/images/lec1.png"/>
					<span class="one_name">
						商品名称商品名称商品名称商品名称
					</span>
					<span class="one_prece">
						<b>￥20000</b><br />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;删除
					</span>
				</div>
				
				
				<div class="gobottom">
					共<span>2</span>件商品&nbsp;&nbsp;&nbsp;&nbsp;
					共计￥<span>20000</span>
					<button class="goprice">去购物车</button>
				</div>
				
				
			</div>
			
		</div>
	</div>
	<div class="menu">
		<div class="nav">
			<div class="navs">
				<div class="left_nav">
					全部商品分类
					<div class="nav_mini" style="display:none">
						
					</div>
				</div>
				<ul>
					<li><a href="">服装城</a></li>
					<li><a href="">美妆馆</a></li>
					<li><a href="">超市</a></li>
					<li><a href="">全球购</a></li>
					<li><a href="">闪购</a></li>
					<li><a href="">团购</a></li>
					<li><a href="">拍卖</a></li>
					<li><a href="">金融</a></li>
					<li><a href="">智能</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<!--筛选阶段-->
	<div class="filter">
	
		<h2>${class_info.class_name_1 } </h2>
		<span class="gt">&gt</span>
		<div class="filter_div">
			${class_info.class_name_2 }
		</div>
		<div class="filter_clear">
			清空筛选
		</div>
	</div>
	
	
	
	
	
	<div class="Sscreen">
		<div class="title">
			${class_info.class_name_2 } 商品筛选 共<span style="color: #f00" >${fn:length(sku_info_list)}</span>个商品
		</div>
		<c:if test="${not empty attrs}">
		<c:forEach items="${attrs}" var="attr"  >
		<div class="list" attr_id="${attr.attr_id}" >
			<span>${attr.attr_name}：</span>
			<c:if test="${not empty attr.attr_value_list}">
			 <c:forEach  items="${attr.attr_value_list}" var="attr_value" >
                <a href="javascript:;" onclick="search_by_sku_attr(this)"  attr_value_id="${attr_value.attr_value_id }" >${attr_value.attr_value}${attr_value.attr_value_name}</a>
             </c:forEach>
			</c:if>
		</div>
		</c:forEach>
		</c:if>
		
		
		<c:if test="${not empty brand_list}">
		<div class="list">
		<span>品牌：</span>
	      <c:forEach items="${brand_list}" var="brand"  >
	          <a href="javascript:;" onclick="brand_onclick_filter(this)"  brand_id="${brand.brand_id }" >${brand.brand_name}</a>
		  </c:forEach>
		  </div>
		</c:if>
		
		<div class="list">
			<span class="list_span" id="list_beas">销量</span>
			<span class="list_span">价格</span>
			<span class="list_span">评论数</span>
			<span class="list_span">上架时间</span>
		</div>
	</div>
	
	<div class="Sbox">
	 <c:if test="${not empty sku_info_list}">
	  <c:forEach items="${sku_info_list}" var="sku"  >
		<div class="list"  sku_id="${sku.sku_id}"  onclick="goto_product_detail_page(this)">
			<div class="img"><img src="${applicationScope.imagePath}${ sku.product_image}" alt=""></div>
			<div class="price">¥${sku.sku_price}</div>
			<div class="title">${sku.sku_name}</div>
		</div>
		</c:forEach>
	</c:if>
		
		<div class="list">
			<div class="img"><img src="${pageContext.request.contextPath }/images/img_4.jpg" alt=""></div>
			<div class="price">¥65.00</div>
			<div class="title">双箭 雅思两层带门收纳柜 整理柜储物柜书柜 木</div>
		</div>
	</div>

	<div class="footer">
		<div class="top"></div>
		<div class="bottom"><img src="${pageContext.request.contextPath }/images/foot.jpg" alt=""></div>
	</div>
	<div class="search_param_contaner" style="display: none;" >
		<c:if test="${not empty attrs}">
		  <c:forEach items="${attrs}" var="attr"  >
		    <div id="attr_id_${attr.attr_id}" attr_id="${attr.attr_id}" >
		            
		    </div>
		  </c:forEach>
		</c:if>
		</div>
		<div class="brand_list" style="display: none;">
		   
		</div>
</body>
<script type="text/javascript" src='${pageContext.request.contextPath }/js/jquery/jquery-3.2.0.js'></script>
<script type="text/javascript" >
    //var class_number_2 = '${class_number_2}';
    function search_by_sku_attr(attr){
    	//console.log( $(attr).hasClass("isSelected"));
    	//点击之后 给改标签 安插 标记 
    	var isSelected=false;
    	 isSelected=($(attr).hasClass("isSelected"));
    	if(isSelected){
    		var attr_value_id =$(attr).attr("attr_value_id");
    		var attr_id=$(attr).parents("div").first().attr("attr_id");
    		//从过滤条件中 移除 改选项
    		$(".filter").first().find(".filter_div[value="+attr_value_id+"]").prev().remove();
    		$(".filter").first().find(".filter_div[value="+attr_value_id+"]").remove();
    		$("#attr_id_"+attr_id).find("div[attr_value_id="+attr_value_id+"]").remove();
    	}else{
    		//如果没有 被选中 则 添加至 属性过滤条件中
    		add_attr_to_filter(attr);
    	}
    	$(attr).toggleClass("isSelected");
    	
    	//获取属性 过滤条件 封装成json
    	var filter_param_json={};
    	 filter_param_json=attr_filter_to_json(filter_param_json);
    	//封装品牌 条件 brand_list
    	filter_param_json=brand_filter_to_json(filter_param_json);
    	//发起异步请求 至后台 筛选结果
    	sale_ajax_search(filter_param_json);
    }
    
    
    
    
    //添加
    function brand_onclick_filter(brand){
    	   var isSelected=false;
    	 isSelected=($(brand).hasClass("isSelected"));
    	 if(isSelected){
    	//如果已经选择 则 认为 是用户的取消改品牌 为过滤条件的 行为
    		 cancel_this_brand_for_filter(brand);
    	 }else{
    	//如果 没有选择 则 是 用户的 添加 改品牌的为过滤条件 的行为
    		 add_this_brand_for_filter(brand);
    	 }
    	 $(brand).toggleClass("isSelected");
    	//获取属性 过滤条件 封装成json
     	var filter_param_json={};
     	 filter_param_json=attr_filter_to_json(filter_param_json);
     	//封装品牌 条件 brand_list
     	filter_param_json=brand_filter_to_json(filter_param_json);
     	//发起异步请求 至后台 筛选结果
     	sale_ajax_search(filter_param_json);
    }
    
    
    function cancel_this_brand_for_filter(brand){
    	//品牌的过滤 不需显示 在 过滤条件 显示 框中 
    	//只需要 从 过滤 条件的容器里面 删除就可以了
    	//.brand_list
    	var brand_id = $(brand).attr("brand_id");
    	$(".brand_list").first().find("div[key="+brand_id+"]").remove();
    }
    function add_this_brand_for_filter(brand){
    	//添加 品牌 过滤条件到 品牌过滤条件 容器 内 
    	//.brand_list
    	var brand_id = $(brand).attr("brand_id");
    	$(".brand_list").first().append("<div  key="+brand_id+" >"+$(brand).html()+"</div>");
    }
    
    function sale_ajax_search(json){
    	json['class_number_2']=${class_info.class_number_2};
    	
    	$.getJSON("${pageContext.request.contextPath}/filter_search.do",json,function(a){
    		//console.log(a);
    		//将数据 展示在页面
    		//product_display
    		var product_list_size = a.length;
    		$(".Sscreen .title span").first().html(product_list_size);
    		var product_display = "";
    		$.each(a,function(i,n){
    			product_display+='<div class="list" sku_id='+n.sku_id+'  onclick="goto_product_detail_page(this)" >';
    			product_display+='<div class="img"><img src="${applicationScope.imagePath}'+n.product_image+'" alt=""></div>';
    			product_display+='<div class="price">¥'+n.sku_price+'</div>';
    			product_display+='<div class="title">'+n.sku_name+'</div>';
    		    product_display+='</div>';
    		});
    		$(".Sbox").first().html(product_display);
    	});
    	//console.log($(".Sbox").first());
    }
    //封装 品牌过滤条件 为 json 对象 
   function brand_filter_to_json(json){
	   var brand_div_list =$(".brand_list").first().find("div");
	   $.each(brand_div_list,function(i,n){
		   json['brand_list['+i+'].brand_id']=$(n).attr("key");
	   })
	   return json;
   }
    
  //获取属性 过滤条件 封装成json
  function attr_filter_to_json(filter_param_json){
	//获取过滤条件 封装成json
  	 var  filter_param_div=$(".search_param_contaner").first().find("div");
  	//异步请求 刷新筛选结果
  	 var attr_index=0;
  	//组织 json 对象
  	//封装 属性条件
  	$.each(filter_param_div,function(index,data){
  	var ele =$(data).find("div");
  	var attr_value_index=0;
  		//console.log($(data).find("div").length);
  		if(ele.length >0){
  		   filter_param_json["attr_list["+attr_index+"].attr_id"]=parseInt($(data).attr("attr_id"));
  		   $.each(ele,function(i,e){
  			   filter_param_json["attr_list["+attr_index+"].attr_value_list["+attr_value_index+"].attr_value_id"]=parseInt($(e).attr("attr_value_id"));
  			   attr_value_index++;
  		   });
  		   attr_index++;
  		}
  	});
  	
  	return filter_param_json;
  }
    
    //添加属性过滤条件
    function add_attr_to_filter(attr){
    	var filter_divs = $(".filter").first().find(".filter_div");
    	var attr_id=$(attr).parents("div").first().attr("attr_id");
    	var result=false;
    	//判断 是否 存在相同属性
    	$.each(filter_divs,function(index,element){
    		var key= $(element).attr("key");
    		var flag=(key==attr_id);
    		if(flag){
    			result=true;
    			return;
    		}
    	});
    	//显示 选择条件
    	var attr_id = $(attr).parents("div").first().attr("attr_id");
    	if(!result){
    		//如果没有同类的 属性条件 则 直接 加入 过滤条件
         	$(".filter").first().find(".filter_div").last().after("<span class='gt'>&gt</span><div class='filter_div' key="+attr_id+" value="+$(attr).attr('attr_value_id')+" >"+$(attr).html()+"</div>")
         	$("#attr_id_"+attr_id).append("<div  key="+attr_id+" attr_value_id="+$(attr).attr('attr_value_id')+" >"+$(attr).html()+"</div>");
    	}else{
    		//如果 有同属性 的条件 则 加入并列 条件
    		$(".filter").first().find(".filter_div[key="+attr_id+"]").last().after("<span class='gt'>&</span><div class='filter_div' key="+attr_id+"  value="+$(attr).attr('attr_value_id')+"  >"+$(attr).html()+"</div>")
    		$("#attr_id_"+attr_id).append("<div  key="+attr_id+" attr_value_id="+$(attr).attr('attr_value_id')+" >"+$(attr).html()+"</div>");
    	}
    }
    //点击商品 跳转到商品详情页面 
    function goto_product_detail_page(product){
    	//获取sku_id
    	var sku_id = $(product).attr("sku_id");
    	//发起页面跳转请求，
    	location.href="${pageContext.request.contextPath}/sku/goto_product_detail_page.do?sku_id="+sku_id;
    	//
    	
    }
    
</script>
</html>