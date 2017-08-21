<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	
	
	
	<div id="J_cart_pop" class="cart_pop">
		<div class="cart_hd">
			<h4 class="cart_hd_title">最新加入的商品</h4>
		</div>

		<div class="cart_bd J_cart_bd">
		   
			<ul class="cart_manzenglist">
				<li class="cart_item">
					<ul class="cart_item_bd">
						<c:if test="${isNull == 0 }">
                  <c:forEach items="${shopping_cart}" var="item" >
                  <li class="cart_item">
							<div class="cart_item_inner">
								<div class="cart_img">
									<a class="cart_img_lk" href="${pageContext.request.contextPath}/sku/goto_product_detail_page.do?sku_id=${item.sku_id}"
										target="_blank"> <img
										src="${imagePath}${item.product_image}"
										width="50" height="50" alt="">
									</a>
								</div>
								<div class="cart_name">
									<a class="cart_name_lk" href="${pageContext.request.contextPath}/sku/goto_product_detail_page.do?sku_id=${item.sku_id}"
										target="_blank">${item.sku_name}</a>
								</div>
								<div class="cart_info">
									<div class="cart_price">¥${item.sku_price}×${item.number}</div>
									<a class="cart_delete J_delete"  href="${pageContext.request.contextPath }/cart/delete_cart_item.do?sku_id=${item.sku_id}">删除</a>
								</div>
						
							</div>
						</li>
						</c:forEach>
						</c:if>
						<c:if test="${isNull == 1 }">
						    <li class="cart_item">
							<div class="cart_item_inner">
							   <span>购物车 空空如也，快去购物吧</span>
						          
							</div>
						</li>
						</c:if>
					</ul>
				</li>
			</ul>
			
		</div>
		<div class="cart_ft">
			<c:if test="${isNull == 0 }">
			<div class="cart_ft_info">
		
				共<span class="cart_num">${totalNum}</span>件商品 共计<span class="cart_num">¥
					${totalAmount}</span>
			</div>
			<a class="cart_ft_lk" href="//cart.jd.com/" title="去购物车">去购物车</a>
			</c:if>
		</div>
	</div>
	
