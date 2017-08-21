<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <style>
 
	
	#settleup {
	position: absolute;
	right: 99px;
	top: 25px
}

#settleup .cw-icon {
	width: 188px;
	height: 33px;
	background-color: #fff;
	text-align: center;
	line-height: 33px
}

#settleup .cw-icon .iconfont {
	margin-right: 3px;
	font-size: 16px;
	color: #f10214
}

#settleup .cw-icon a {
	color: #f10214
}

#settleup .ci-count {
	position: absolute;
	top: 5px;
	left: 140px;
	right: auto;
	display: inline-block;
	*zoom: 1;
	*display: inline;
	padding: 1px;
	font-size: 12px;
	line-height: 12px;
	color: #fff;
	background-color: #f10215;
	-moz-border-radius: 7px;
	border-radius: 7px;
	min-width: 12px;
	text-align: center
}

#settleup .dorpdown-layer {
	top: 35px;
	right: 0;
	width: 308px
}

.cart_empty {
	height: 49px;
	margin: auto;
	padding: 10px 0;
	text-align: center;
	line-height: 49px;
	overflow: hidden;
	color: #999
}

.cart_empty_img {
	display: inline-block;
	*display: inline;
	*zoom: 1;
	vertical-align: middle;
	width: 56px;
	height: 49px;
	background-image:
		url(//img11.360buyimg.com/uba/jfs/t3571/299/131233948/1117/a1196554/58004d6dN2927f0f7.png)
}

.cart_pop {
	position: relative;
	z-index: 2;
	width: 100%;
	background: #fff
}

.cart_hd {
	height: 25px;
	padding: 6px 8px;
	line-height: 25px
}

.cart_bd {
	background: #fff;
	height: auto !important;
	height: 344px;
	max-height: 344px;
	overflow-y: auto
}

.cart_ft {
	padding: 8px;
	background: #f5f5f5;
	text-align: right;
	_height: 45px;
	_padding-top: 15px;
	_padding-bottom: 0
}

.cart_num {
	font-weight: 700
}

.cart_ft_info {
	float: left;
	line-height: 29px
}

.cart_ft_lk {
	float: right;
	height: 29px;
	padding: 0 10px;
	background: #e4393c;
	color: #fff;
	text-align: center;
	font-weight: 700;
	line-height: 29px;
	border-radius: 3px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px
}

.cart_ft_lk:hover {
	color: #fff
}

.cart_giftlist, .cart_manjianlist, .cart_manzenglist, .cart_singlelist,
	.cart_suitlist {
	margin-top: -1px
}

.cart_item {
	line-height: 17px;
	vertical-align: bottom;
	*zoom: 1;
	background: #fff
}

.cart_item:hover {
	background: #f5f5f5
}

.cart_item_mz {
	color: #999
}

.cart_item_mz:hover {
	background: #fff
}

.cart_item_hd, .cart_item_inner {
	padding: 6px 0px;
	border-top: 1px dotted #ccc;
	overflow: hidden
}

.cart_item_hd_info {
	float: left
}

.cart_item_hd_price {
	float: right;
	margin-left: 10px
}

.cart_item_hd .cart_tag {
	float: none
}

.cart_gift {
	height: 17px;
	clear: both;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap
}

.cart_gift_lk {
	color: #999
}

.cart_gift_jq {
	color: #999;
	clear: both
}

.cart_img {
	float: left;
	width: 50px;
	height: 50px;
	border: 1px solid #ddd;
	padding: 0;
	margin-right: 10px;
	font-size: 0;
	overflow: hidden
}

.cart_img_lk {
	display: block
}

.cart_name {
	float: left;
	width: 120px;
	height: 52px;
	overflow: hidden
}

.cart_info {
	float: right;
	text-align: right;
	width: 85px
}

.cart_delete, .cart_price, .cart_tag {
	float: right;
	clear: both;
	max-width: 85px;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden
}

.cart_tag {
	display: inline-block;
	margin-bottom: 2px;
	color: #fff;
	*zoom: 1;
	padding: 0 2px;
	line-height: 16px;
	vertical-align: top
}

.cart_tag_orange {
	background: #f60
}

.cart_tag_green {
	background: #3b0
}

.cart_price {
	font-weight: 700
}

.cart_item_hd {
	overflow: hidden
}

.cart_suitlist .cart_item_hd {
	background: #d3ebff
}

.cart_manjianlist .cart_item_hd, .cart_manjianlist .cart_item_hd:hover,
	.cart_manzenglist .cart_item_hd, .cart_manzenglist .cart_item_hd:hover
	{
	background: #bffab1
}

.cart_suit_tag {
	font-weight: 700
}

.cart_suit_virtual, .cart_suit_virtual .cart_item_hd, .cart_suit_virtual .cart_item_hd:hover,
	.cart_suit_virtual .cart_item_inner, .cart_suit_virtual .cart_item_inner:hover,
	.cart_suit_virtual:hover {
	background: #f7f7f7
}

.cart_suit_virtual .cart_item_bd {
	padding: 0 8px
}

.cart_suit_virtual .cart_item_inner {
	padding-left: 0;
	padding-right: 0
}

.cart_suit_virtual .cart_delete {
	margin-left: 12px
}

.cart_suit .cart_num {
	font-weight: 400
}

.cart_suit_virtual .cart_num {
	font-weight: 700
}
</style>
    
<div class="w">
    <div id="logo-2014">
        <a href="${pageContext.request.contextPath}" style="background: url(${pageContext.request.contextPath}/images/logo-201305.png) no-repeat 0 0"  class="logo">京东</a>
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
            <a target="_blank" clstag="shangpin|keycount|topitemnormal|b05"  style="border-radius: 3px;-moz-border-radius: 3px;" href="cart.action">我的购物车</a>
        </div>
        <div class="dorpdown-layer">
        <div class="spacer"></div>
        <style type="text/css" >
        </style>
        <div id="settleup-content">
          
          <span style="background: url('${pageContext.request.contextPath}/images/loading.gif') no-repeat center center ;" class="loading">
        </span>
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
<script type="text/javascript" >
 $("#settleup-2014 .cw-icon a").unbind();
   $("#settleup-2014 .cw-icon a").mouseenter(function(){
	   
	   var url="${pageContext.request.contextPath}/cart/mini_cart_inner.do";
		 $.post(url,function(data){
			 
			$("#settleup-content").html(data);
			
		 },"html");
		 
   });
   </script>