<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<div class="shopCar_top">
	<div class="shopCar_top_left"></div>
	<div class="shopCar_top_right">
		<div class="shopcar_top_rignt_stepImg step3"></div>
		<span>1.购物车</span>
		<span>2.填写核对订单</span>
		<span><font color="#ff8800">3.成功提交订单</font></span>
	</div>
</div>
<div style="width:1000px;height:500px;border:1px solid #e4e4e4;margin:0 auto;">
	<h2 style="margin:10px 0 10px 15px;">订单提交成功！ >></h2> 
	<hr>
	<div class="order_submit" style="float:left;margin:10px 0 0 15px;">
		<a href="pay?orderFormId=<s:property value="orderFormId"/>">去付款</a>
	</div>
</div>