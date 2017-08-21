<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>sunshine商城${sku_detail.sku_name}</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/product_attr.css">
	 <link rel="shortcut icon" href="${pageContext.request.contextPath }/image/small_image/zebre.png" type="image/x-icon" />
</head>
<body>
	<%@ include file="/WEB-INF/jsp/include/top.jsp" %>
	<div class="top_img">
		<img src="${pageContext.request.contextPath}/images/top_img.jpg" alt="">
	</div>
	<%@ include file="/WEB-INF/jsp/include/search_input.jsp" %>
	<div class="menu">
		<div class="nav">
			<div class="navs">
				<div class="left_nav">
					全部商品分类
					<div class="nav_mini" style="display:none">
						<ul>
							<li>
								<a href="">家用电器</a>
								<div class="two_nav">
									<a href="">11111</a>
									<a href="">11111</a>
								</div>
							</li>
							<li><a href="">手机、数码、通信</a></li>
							<li><a href="">电脑、办公</a></li>
							<li><a href="">家具、家居、家装</a></li>
						</ul>
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
	
	<div class="Dbox">
		<div class="box">
			<div class="left">
				<div class="timg"><img width="350px" height="280px" src="${imagePath}${sku_detail.spu.spu_image}" alt=""></div>
				<div class="timg2">
					<div class="lf"><img src="${pageContext.request.contextPath}/images/lf.jpg" alt=""></div>
					<div class="center">
					<c:forEach items="${sku_detail.product_images}" var="image" >
					    <span><img src="${imagePath}${image.image_url}" width="40px" height="40px"  alt=""></span>
					</c:forEach>
					</div>
					<div class="rg"><img src="${pageContext.request.contextPath}/images/rg.jpg" alt=""></div>
				</div>
				<div class="goods"><img src="${pageContext.request.contextPath}/images/img_6.jpg" alt=""></div>
			</div>
			<div class="cent itemInfo-wrap">
			<div class="sku-name">${sku_detail.sku_name}</div>
			<div class="item hide" id="p-ad" clstag="shangpin|keycount|product|slogana" data-hook="hide" title="【薄出位 才有潮生活】8G内存配双硬盘 SSD要用Pci-e 确保飞速运行！1小时即可充电80% 窄边框更便携！" style="display: block;">【薄出位 才有潮生活】8G内存配双硬盘 SSD要用Pci-e 确保飞速运行！1小时即可充电80% 窄边框更便携！</div>
			<div class="activity-banner  J-seckill seckill" id="banner-miaosha" style="">
                        <div class="activity-type">
                            <i class="sprite-seckill"></i><strong>京东秒杀</strong>
                        </div>
                        <div class="activity-message">预计8月18日00:00开始</div>
                    </div>
             
				<div class="bg summary summary-first">
					<p>市场价：<strong >￥${sku_detail.sku_price}</strong></p>
					<p>促销价：<strong>￥${sku_detail.sku_price}</strong></p>
				</div>
    <div  class="summary p-choose-wrap">	
		 <div id="choose-attr-1" class="li p-choose" data-type="颜色" data-idx="0">
	         <div class="dt">选择颜色：</div>
	          <div class="dd">
	          <c:forEach items="${sku_detail.sku_versions}" var="sku_version" >
		      <div class='item  <c:if test="${sku_version.sku_id == param.sku_id }" > selected</c:if>' sku_id="${sku_version.sku_id}"   style="cursor: pointer;" onclick="goto_product_detail_page(this)" >
			  <b></b> 
			   <a href='${pageContext.request.contextPath}/sku/goto_product_detail_page.do?sku_id=${sku_version.sku_id}'   > 
			<img data-img="1" src="${imagePath}${sku_detail.spu.spu_image}" width="40" height="40" alt="${sku_version.sku_name}">
				<i>${sku_version.sku_name}</i>
			</a>
		    </div>
		    </c:forEach>
	       </div>
           </div>
              <div id="choose-suits" class="li choose-suits" style="">
	<div class="dt">套 装</div>
	<div class="dd clearfix">
		<div class="item" >
			<a href="#none"  data-drop="head" >优惠套装1</a>
			<div class="suits-panel J-suits-panel"></div>
		</div>
		<div class="item" >
			<a href="#none" data-drop="head" >优惠套装2</a>
			<div class="suits-panel J-suits-panel"></div>
		</div>
		<div class="item" >
			<a href="#none"  data-drop="head" >优惠套装3</a>
			<div class="suits-panel J-suits-panel"></div>
		</div>
	</div>
</div>
        </div>
				<div class="clear2" style="margin-top:20px;display: inline-block;">
					<div class="min_t" style="line-height:36px;display: inline-block;">数量：</div>
					<div class="num_box"   >
							<img src="${pageContext.request.contextPath}/images/jia.jpg" id='jia' alt=""  style="float: left ;margin-right: 5px"   >
							<input type="text" name="num" value="1" style="width:20px;height:20px;text-align:center;float:left">
							<img src="${pageContext.request.contextPath}/images/jian.jpg" id='jian'  style="float: left;margin-left: 5px"   alt="">
					</div>
				</div>
				<div class="choose-btns clearfix" style="margin-top:20px;">
					<img src="${pageContext.request.contextPath}/images/mai.jpg"  style="cursor: pointer;" sku_id="${sku_detail.sku_id }"   onclick="alert('a')"  alt="">
					<img src="${pageContext.request.contextPath}/images/shop.jpg" 
					style="cursor: pointer;"  
					sku_name="${sku_detail.sku_name }" 
					sku_price="${sku_detail.sku_price }"
					sku_image="${sku_detail.spu.spu_image}" 
					spu_id="${sku_detail.spu.spu_id }"  
					sku_id="${sku_detail.sku_id }" 
					repository_addr="${sku_detail.repository_addr}"
					onclick="add_sku_to_cart(this)"  alt="">
				</div>
			</div>
		</div>
	</div>
	<div class="Dbox1">
		<div class="boxbottom">
		
			<div class="top tab-main large">
			     
				<span>商品详情</span>
				<span>评价</span>
			</div>
			<div class="btm">
				<div class="p-parameter">
                          <ul id="parameter-brand" class="p-parameter-list">
                            <li title="联想（Lenovo）">品牌： <a href="" clstag="shangpin|keycount|product|pinpai_1" target="_blank">${sku_detail.brand.brand_name }</a>
                            </li>
                        </ul>
                <ul class="parameter2 p-parameter-list">
                <c:if test="${not empty sku_detail.sku_attrs}" >
                <c:forEach items="${sku_detail.sku_attrs }" var="item" >
                   <li title="${item.attr_name}">${item.attr_name}：${item.attr_value}${item.attr_value_name }</li>
                </c:forEach>
                </c:if>
                 </ul>
                  <p class="more-par">
                   <a href="" class="J-more-param">更多参数<s class="txt-arr">&gt;&gt;</s></a>
                   </p>
                </div>
                
                <div style="align-content: center;">
                <c:if test="${not empty sku_detail.product_images }">
                 <c:forEach items="${sku_detail.product_images }" var="image" >
                    <div style="margin-left: 250px;margin-top: 10px" >
                   <img alt="" src="${imagePath}${image.image_url}">
                   </div>
                </c:forEach>
                   
                </c:if>
                   
                </div>
                
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="top"></div>
		<div class="bottom"><img src="${pageContext.request.contextPath}/images/foot.jpg" alt=""></div>
	</div>
</body>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery/jquery-3.2.0.js" ></script>

<script type="text/javascript">

//点击商品 跳转到商品详情页面 
function goto_product_detail_page(product){
	//获取sku_id
	cosole.log(product);
	var sku_id = $(product).attr("sku_id");
	//发起页面跳转请求，
	location.href="${pageContext.request.contextPath}/sku/goto_product_detail_page.do?sku_id="+sku_id;
	//
	
}

   function add_sku_to_cart(add_cart_btn){
	  //获取sku信息 创建mini购物车
	  var json={};
	  var btn=$(add_cart_btn);
	 var sku_id = btn.attr("sku_id");
	 var sku_name = btn.attr("sku_name");
	 var sku_image = btn.attr("sku_image");
	 var sku_price =btn.attr("sku_price");
	 var product_id=btn.attr("spu_id");
	 var repository_addr=btn.attr("repository_addr");
	 json["sku_id"]=sku_id;
	 json["sku_name"]=sku_name;
	 json["product_image"]=sku_image;
	 json["sku_price"]=sku_price;
	 json["product_id"]=product_id;
	 json["number"]=1;
	 json["repository_addr"]=repository_addr;
	 json["selected"]="0";
	 var url="${pageContext.request.contextPath}/cart/add_cart.do";
	 $.post(url,json,function(data){
		 //console.log(data);
		 if(data.success){
			 console.log("aaa");
			 alert("添加成功");
		 }
	 });
   }
  
   $("#settleup-2014 .cw-icon a").unbind();
   $("#settleup-2014 .cw-icon a").mouseenter(function(){
	   var url="${pageContext.request.contextPath}/cart/mini_cart_inner.do";
		 $.post(url,function(data){
			$("#settleup-content").html(data);
			
		 },"html");
		 
   });

</script>
</html>