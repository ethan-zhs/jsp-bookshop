<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>

<div class="header_top">
	<p class="header_userMessage">
		<span>您好，欢迎来到海豚书城！ </span>		
		<span><a href="index">海豚首页</a></span>
		<s:if test="#session.userLogin.userNo!=null">
			<span><a href=""><s:property value="#session.userLogin.userNo"/></a></span>
		</s:if>
		<s:else>
			<span>[<a href="toLogin">登录</a>]</span>
		</s:else>
		<span>[<a href="toZhuce">免费注册</a>]</span>
		<span><a href="showOrderForm">我的订单</a></span>
		<s:if test="#session.userLogin.userNo!=null">
			<span><a href="outSystem">安全退出</a></span>
		</s:if>
	</p>	
</div>
<div class="search_width">
	<div class="search_left"></div>
	<div class="search_content">
		<form action="findBySearch" method="post" class="search">
			<div style="border:2px #ff8800 solid;">
				<input type="text" name="searchKey" class="searchInput"/>
				<input type="submit" value="搜索" class="searchButton">
			</div>
		</form>
	</div>
	<a href="showShopCar">
		<div class="shopCar_logo"></div>
		<div class="shopCar_num"><s:property value="shopCarNum"/></div>
	</a>
</div>