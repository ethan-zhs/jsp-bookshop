<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>

<div class="shopCar_top">
	<div class="shopCar_top_left"></div>
	<div class="shopCar_top_right">
		<div class="shopcar_top_rignt_stepImg step1"></div>
		<span ><font color="#ff8800">1.购物车</font></span>
		<span>2.填写核对订单</span>
		<span>3.成功提交订单</span>
	</div>
</div>
<form action="checkOut" method="post" name="f2">
	<div class="shopCar_content">
		<h2>我的购物车</h2>
		
		<div class="shopCar_everyBook_title">
			<p>
				<span>
					<input type="checkbox" name="all" checked="true" onclick="selectAll(<s:property value="sumPrice"/>)"/> 全选
				</span>
				<span style="margin-left:20px;">商品</span>
				<span style="margin-left:340px;">价格</span>
				<span style="margin-left:200px;">数量</span>
				<span style="margin-left:80px;">操作</span>
			</p>
		</div>
		<input type="hidden" name="sumPrice" id="sumprice" value="<s:property value="sumPrice"/>">
		<s:iterator value="shopCars">	
			<div class="everyBook">			
	 			<s:iterator value="books">
					<s:if test="bookId==id">
						<div class="shopCar_everyBook_choose">
							<input type="checkbox" name="bookIds" id="check<s:property value="bookId"/>" value="<s:property value="bookId"/>" checked="true" onclick="
							culcus(<s:property value="singlePrice"/>,<s:property value="num"/>,<s:property value="bookId"/>)"/>
						</div>	
						
						<div class="shopCar_everyBook_img">
							<s:if test="imgName==null">
								<a href="bookDetails?bookId=<s:property value="id"/>">
									<img alt="书本图片" src="${pageContext.request.contextPath}/lib/bookImages/moren.jpg" width="55px" height="55px"/>
								</a>
							</s:if>
							<s:else>
								<a href="bookDetails?bookId=<s:property value="id"/>">
									<img alt="书本图片" src="${pageContext.request.contextPath}/lib/bookImages/upload/<s:property value="imgName"/>" width="55px" height="55px"/>
								</a>
							</s:else>
						</div>
						<div class="shopCar_everyBook_name">
							<a href="bookDetails?bookId=<s:property value="id"/>"><s:property value="bookName"/></a>
						</div>
						<div class="shopCar_everyBook_price">¥ <s:property value="singlePrice"/></div>
						<div class="shopCar_bookNum">
							<a href="subNum?bookId=<s:property value="bookId"/>">-</a>						
							<input type="text" name="num" value="<s:property value="num"/>"/>
							<a href="addNum?bookId=<s:property value="bookId"/>">+</a>
						</div>
					</s:if>
				</s:iterator>
				<div class="shopCar_delete"><a href="shopCarDelete?shopCarId=<s:property value="id"/>">删除</a></div>
			</div>
		</s:iterator>
	</div>
	<div class="shopCar_sumPrice">
		<p>
			<span class="shopCar_sumPrice_word">总计 ( 不含运费 )：</span>
			<span id="sum" class="shopCar_sumPrice_num">¥ <s:property value="sumPrice"/></span>
		</p>
	</div>
	<div class="shopCar_bottom">
		<a href="index">继续购物</a>
		<input type="submit" value="结算 >" class="shopCar_submit"/>
	</div>	
</form>