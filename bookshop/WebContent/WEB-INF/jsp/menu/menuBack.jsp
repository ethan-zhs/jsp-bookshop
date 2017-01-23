<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>

<div class="menu_back">
	<ul>
		<li><a href="backLogon">首页</a></li>
		<li><a href="">订单管理</a></li>
		<li><a href="bookManage">书籍分类</a></li>
		<li><a href="">最新评论</a></li>
		<li><a href="">个人信息</a></li>
		<li><a href="">新增书籍</a></li>
		<li style="margin-left:440px;">销售员：<s:property value="#session.saleUserLogin.username"/></li>
	</ul>
</div>