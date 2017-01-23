<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>

<div class="shopCar_top">
	<div class="shopCar_top_left"></div>
</div>
<div class="login_content">
	<div class="login_content_inleft">
		<img src="${pageContext.request.contextPath}/lib/bookImages/login.jpg" width="600px" height="300px"/>
	</div>
	<div class="login_content_inright">
		<div class="login_content_inright_top">
			<div class="login_content_inright_title">销售员登陆</div>			
		</div>
		<p class="login_content_inright_error"><s:property value="errorMessage"/></p>
		<form action="saleLogin" method="post">
			<p>用户名：<input type="text" name="userNo"/></p>
			<p>密&nbsp;&nbsp;&nbsp;码：<input type="password" name="password"/></p><br>
			<p style="margin-left:50px;"><input type="submit" value="登录" class="save_button" style="height:25px;width:205px;"/></p>
		</form>
	</div>
</div>