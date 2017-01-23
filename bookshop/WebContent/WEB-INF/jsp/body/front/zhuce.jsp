<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>

<div class="shopCar_top">
	<div class="shopCar_top_left"></div>
</div>
<div class="zhuce_content">
	<div class="zhuce_content_top">
		<h3 style="margin:5px 0 0 15px;color:#646464">用户注册  >> <a href="index">回到首页</a></h3>
	</div>
	<form action="zhuce" method="post" name="f3">
		<p>用&nbsp;&nbsp;户&nbsp;&nbsp;名：<input type="text" name="userNo"/></p>
		<p>
			姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text" name="username" style="width:80px"/>
			&nbsp;&nbsp;性 别：<select name="gender">
					<option>男</option>
					<option>女</option>
				</select>
		</p>
		<p>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="password"/></p>
		<p>确认密码：<input type="password" name="cpassword"/></p>
		<p>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：<input type="text" name="email"/></p>		
		<p><input type="submit" value="提交" onclick="return zhuceCheak();" class="save_button" style="height:25px;"/></p>	
	</form>
	<div class="zhuce_right_pictrue">
		<img src="${pageContext.request.contextPath}/lib/bookImages/login.jpg" width="600px" height="280px"/>
	</div>
</div>