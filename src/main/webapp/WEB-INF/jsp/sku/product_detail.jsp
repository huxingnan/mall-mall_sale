<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>首页</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/product_attr.css">
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
		<img src="${pageContext.request.contextPath}/images/top_img.jpg" alt="">
	</div>
	<div class="w">
    <div id="logo-2014">
        <a href="${pageContext.request.contextPath}"  class="logo">京东</a>
    </div>
    <div id="search-2014">
        <ul id="shelper" class="hide" style="display: none;"></ul>
        <div class="form">
            <input type="text" onkeydown="javascript:if(event.keyCode==13) search('key');" autocomplete="off" id="key" accesskey="s" class="text" clstag="shangpin|keycount|topitemnormal|b02">
            <button onclick="search('key');return false;" class="button cw-icon" clstag="shangpin|keycount|topitemnormal|b03"><i></i>搜索</button>
        </div>
    </div>
    <div id="settleup-2014" class="dorpdown">
        <div class="cw-icon">
            <i class="ci-left"></i>
            <i class="ci-right">&gt;</i><i class="ci-count" id="shopping-amount">1</i>
            <a target="_blank" clstag="shangpin|keycount|topitemnormal|b05" href="cart.action">我的购物车</a>
        </div>
        <div class="dorpdown-layer">
        <div class="spacer"></div>
        <div id="settleup-content"><span class="loading"></span>
        </div>
        </div>
    </div>
    <div id="hotwords">
    <a target="_blank" data-gid="1974" data-id="5137" href="">笔记本电脑</a>
    <a target="_blank" data-gid="1974" data-id="5138" href="">台式电脑</a>
    <a target="_blank" data-gid="1974" data-id="5139" href="">thinkpad</a>
    <a target="_blank" data-gid="1974" data-id="5140" href="">空调</a>
    <a target="_blank" data-gid="1974" data-id="5141" href="">电视</a>
    </div>
    <span class="clr"></span>
</div>
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
									<a href="">11111</a>
									<a href="">11111</a>
									<a href="">11111</a>
									<a href="">11111</a>
									<a href="">11111</a>
									<a href="">11111</a>
									<a href="">11111</a>
									<a href="">11111</a>
									<a href="">11111</a>
								</div>
							</li>
							<li><a href="">手机、数码、通信</a></li>
							<li><a href="">电脑、办公</a></li>
							<li><a href="">家具、家居、家装</a></li>
							<li><a href="">男装、女装、内衣</a></li>
							<li><a href="">个户化妆</a></li>
							<li><a href="">鞋靴</a></li>
							<li><a href="">户外运动</a></li>
							<li><a href="">汽车</a></li>
							<li><a href="">母婴</a></li>
							<li><a href="">食品</a></li>
							<li><a href="">营养保健</a></li>
							<li><a href="">图书</a></li>
							<li><a href="">彩票</a></li>
							<li><a href="">理财</a></li>
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
		      <div class="item  selected" data-sku="${sku_version.sku_id}" data-value="${sku_version.sku_name}" >
			  <b></b> 
			   <a href="javascipt:;" > 
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
				<div class="clear" style="margin-top:20px;display: inline-block;">
					<div class="min_t" style="line-height:36px">数量：</div>
					<div class="num_box">
						<input type="text" name="num" value="1" style="width:40px;height:32px;text-align:center;float:left">
						<div class="rg">
							<img src="${pageContext.request.contextPath}/images/jia.jpg" id='jia' alt="">
							<img src="${pageContext.request.contextPath}/images/jian.jpg" id='jian' alt="">
						</div>
					</div>
				</div>
				<div class="choose-btns clearfix" style="margin-top:20px;">
					<img src="${pageContext.request.contextPath}/images/mai.jpg"  style="cursor: pointer;" sku_id="${sku_detail.sku_id }"   onclick="alert('a')"  alt="">
					<img src="${pageContext.request.contextPath}/images/shop.jpg" style="cursor: pointer;" sku_id="${sku_detail.sku_id }" onclick="add_sku_to_cart(this)"  alt="">
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
   function add_sku_to_cart(add_cart_btn){
	  
   }
</script>
</html>