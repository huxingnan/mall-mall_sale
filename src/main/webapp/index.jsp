<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>首页</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css.css">
	
	  <link rel="shortcut icon" href="${pageContext.request.contextPath }/image/small_image/zebre.png" type="image/x-icon" />
	<script type="text/javascript">
	
	</script>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/include/top.jsp" %>
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
					<div class="nav_mini">
						<ul id="sale_index_navCtn_menu">
							<li>
								<div class="two_nav"  >
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
	<div class="banner">
		<div class="ban">
			<img src="${pageContext.request.contextPath }/images/banner.jpg" width="980" height="380" alt="">
		</div>
	</div>
</body>
<script type="text/javascript" src='${pageContext.request.contextPath }/js/jquery/jquery-3.2.0.js'></script>
<script type="text/javascript">



   $.getJSON("${pageContext.request.contextPath}/js/json/class_number_1.js",function(data){
	   sale_index_navCtn_menu_context="";
	   $.each(data,function(i,n){
		   sale_index_navCtn_menu_context='<li class="nav_menu_item"  key='+n.id+'   ><a  href="javascript:; ">'+n.class_name_1+'</a></li>';
		   $("#sale_index_navCtn_menu").append(sale_index_navCtn_menu_context);
	   });
	   
	   
	  // $("#sale_index_navCtn_menu").html(sale_index_navCtn_menu_context);
	   $(".nav_menu_item").mouseover(function(){
		   var class_number_1=$(this).attr("key");
		     var thisli=$(this);
		     if(thisli.find("div").length != 0){
		    	 thisli.find("div").first().show();
		    	 return ;
		     }
		      $.getJSON("${pageContext.request.contextPath}/js/json/class_number_2_"+class_number_1+".js",function(data){
			   
			   class2_menu='<div class="two_nav">';
			   $.each(data,function(i,n){
				   class2_menu+='<a    href="${pageContext.request.contextPath}/search_sku_list_by_class2.do?class_number_2='+n.id+'">'+n.class_name_2+'</a>';
			   });
			   class2_menu+="</div>";
			   thisli.find("div").remove();
			   thisli.find("a").after(class2_menu);
			  
		   });
	   });
	   
	   $(".nav_menu_item").mouseout(function(){
		   var thisli=$(this);
		   thisli.find("div").first().hide();
	   });
   });
   
</script>

</html>