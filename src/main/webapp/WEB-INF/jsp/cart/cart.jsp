<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>首页</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css.css">
	
	  <link rel="shortcut icon" href="${pageContext.request.contextPath }/image/small_image/zebre.png" type="image/x-icon" />
	  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/product_attr.css">
	<script type="text/javascript" src='${pageContext.request.contextPath }/js/jquery/jquery-3.2.0.js'></script>
	<link rel="stylesheet" href="css/style.css">
</head>
<style type="text/css">
	td{vertical-align: middle !important;}
	.form-group{padding: 5px 0;}
</style>
<body>
	<%@ include file="/WEB-INF/jsp/include/top.jsp" %>
	<div class="top_img">
		<img src="./images/top_img.jpg" alt="">
	</div>
	<%@ include file="/WEB-INF/jsp/include/search_input.jsp" %>
	<div class="Cbox">
		<table class="table table-striped table-bordered table-hover">
		   <thead>
		     <tr>
		       <th>商品图片</th>
		       <th>商品名称</th>
		       <th>商品属性</th>
		       <th>商品价格</th>
		       <th>商品数量</th>
		       <th>操作</th>
		     </tr>
		   </thead>
		   <tbody>
		     <tr>
		       <td><img src="images/icon_2.jpg" alt=""></td>
		       <td>商品名称</td>
		       <td>
		       		颜色：<span style='color:#ccc'>白色</span><br>
		       		尺码：<span style='color:#ccc'>L</span>
		       </td>
		       <td>199.00</td>
		       <td><input type="text" name="min" value="1" style="width:50px;text-align:center"></td>
		       <td>删除</td>
		     </tr>
		     <tr>
		       <td><img src="images/icon_2.jpg" alt=""></td>
		       <td>商品名称</td>
		       <td>
		       		颜色：<span style='color:#ccc'>白色</span><br>
		       		尺码：<span style='color:#ccc'>L</span>
		       </td>
		       <td>199.00</td>
		       <td><input type="text" name="min" value="1" style="width:50px;text-align:center"></td>
		       <td>删除</td>
		     </tr>
		     <tr>
		       <td><img src="images/icon_2.jpg" alt=""></td>
		       <td>商品名称</td>
		       <td>
		       		颜色：<span style='color:#ccc'>白色</span><br>
		       		尺码：<span style='color:#ccc'>L</span>
		       </td>
		       <td>199.00</td>
		       <td><input type="text" name="min" value="1" style="width:50px;text-align:center"></td>
		       <td>删除</td>
		     </tr>
		   </tbody>
	 	</table>
	</div>
	<div class="Cprice">
		<div class="price">总价：199.00</div>
		<div class="jiesuan">结算</div>
	</div>
	<div class="footer">
		<div class="top"></div>
		<div class="bottom"><img src="images/foot.jpg" alt=""></div>
	</div>

<!-- 模态弹出窗内容 -->
<div class="modal" id="mymodal-data" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title">新添收货地址</h4>
			</div>
			<div class="modal-body" style="overflow:hidden">
				<div class="form-group">
				    <div class="col-sm-10">
				      <input type="email" class="form-control" id="inputEmail3" placeholder="请输入您的所在地区">
				    </div>
				    <br>
				</div>
				<div class="form-group">
				    <div class="col-sm-10">
				      <input type="email" class="form-control" id="inputEmail3" placeholder="请输入您的详细地址">
				    </div>
				    <br>
				</div>
				<div class="form-group">
				    <div class="col-sm-10">
				      <input type="email" class="form-control" id="inputEmail3" placeholder="请输入您的邮政编码">
				    </div>
				    <br>
				</div>
				<div class="form-group">
				    <div class="col-sm-10">
				      <input type="email" class="form-control" id="inputEmail3" placeholder="请输入您的收货人姓名">
				    </div>
				    <br>
				</div>
				<div class="form-group">
				    <div class="col-sm-10">
				      <input type="email" class="form-control" id="inputEmail3" placeholder="请输入您的手机号码">
				    </div>
				    <br>
				</div>
				<div class="form-group">
				    <div class="col-sm-10">
				      <input type="email" class="form-control" id="inputEmail3" placeholder="请输入您的电话号码">
				    </div>
				    <br>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary">保存</button>
			</div>
		</div>
	</div>
</div>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
</body>
</html>