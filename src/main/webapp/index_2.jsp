<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="shortcut icon" href="${pageContext.request.contextPath }/image/small_image/zebre.png" type="image/x-icon" />
<title>sunshine 商城</title>
<style type="text/css">
   .nav_menu_item:hover{
      color:#f00;
   }
   
    li{
       width: 100px;
   }
</style>
</head>
<body>
测试
<ul  id="sale_index_navCtn_menu" >
    
   
</ul>
<ul  id="sale_index_class2_menu" >
    
   
</ul>
</body>
<script type="text/javascript"  src="${pageContext.request.contextPath }/js/jquery/jquery-3.2.0.js"></script>
<script type="text/javascript">
   $.getJSON("${pageContext.request.contextPath}/js/json/class_number_1.js",function(data){
	   sale_index_navCtn_menu_context="";
	   $.each(data,function(i,n){
		   sale_index_navCtn_menu_context+='<li   class="nav_menu_item" key='+n.id+' >'+n.class_name_1+'</li>';
	   });
	   
	   $("#sale_index_navCtn_menu").html(sale_index_navCtn_menu_context);
	   $(".nav_menu_item").mouseover(function(){
		   var class_number_1=$(this).attr("key");
		   $.getJSON("${pageContext.request.contextPath}/js/json/class_number_2_"+class_number_1+".js",function(data){
			   
			   class2_menu="";
			   $.each(data,function(i,n){
				   class2_menu+='<li   class="nav_menu_item" key='+n.id+' ><a href="${pageContext.request.contextPath}/search_sku_list_by_class2.do?class_number_2='+n.id+'">'+n.class_name_2+'</a></li>';
			   });
			   $("#sale_index_class2_menu").html(class2_menu);
		   })
	   });
   });
   
  
   
</script>
</html>