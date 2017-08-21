<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="top">
		<div class="top_text">
		  <c:if test="${not empty sale_user}">
		     <img src="${imagePath}${sale_user.picture}" width="20px" height="20px" /> 
		     <a href="${pageContext.request.contextPath }/user/goto_logout.do" >退出</a>
		     <a href="goto_user_detail.do?user_id=${sale_user.id}">欢迎,${sale_user.nickname}</a>
		  </c:if>
		    <c:if test="${ empty sale_user}">
		      <a href="${pageContext.request.contextPath }/user/goto_login.do">用户登录</a>
		      <a href="${pageContext.request.contextPath }/user/goto_regist.do">用户注册</a>
		  </c:if>
			<a href="">供应商登录</a>
			<a href="">供应商注册</a>
		</div>
		</div>
		
