<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="shortcut icon" href="${pageContext.request.contextPath }/image/small_image/zebre.png" type="image/x-icon" />
<title>sunshine 商城</title>
</head>
<body>
<div>
  <c:if test="${not empty attrs}">
     <c:forEach items="${attrs}" var="attr"  >
         <div attr_id="${attr.attr_id}" >${attr.attr_name}:
         <c:if test="${not empty attr.attr_value_list}">
             <c:forEach  items="${attr.attr_value_list}" var="attr_value" >
                <a href="javascript:;" onclicl="search_by_sku_attr(this)"  attr_value_id="${attr_value.attr_value_id }" >${attr_value.attr_value}${attr_value.attr_value_name}</a>
             </c:forEach>
         </c:if>
         </div>
     </c:forEach>
  </c:if>
</div>
<hr/>
  <c:if test="${not empty sku_info_list}">
     <c:forEach items="${sku_info_list}" var="sku"  >
      <div style="height: 200px;width: 200px;float: left;display: inline-block;margin-left: 10px;border: 1px solid #101010;cursor: pointer;">
       <img style="height: 100px;width: 150px;margin-right: 25px" alt="" src="${pageContext.request.contextPath}/upload/image/${ sku.product_image}">
       <span style="display: inline-block;">${sku.sku_name}</span>
       <span style="display: inline-block;margin-bottom: 0">价格:${sku.sku_price}</span>
     </div>
     </c:forEach>
  </c:if>
  
   <c:if test="${ empty sku_info_list}">
   
  </c:if>
</body>
</html>