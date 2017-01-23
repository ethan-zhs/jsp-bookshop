<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>


<div class="shopCar_top">
	<div class="shopCar_top_left"></div>
	<div class="shopCar_top_right">
		<div class="shopcar_top_rignt_stepImg step2"></div>
		<span >1.购物车</span>
		<span><font color="#ff8800">2.填写核对订单</font></span>
		<span>3.成功提交订单</span>
	</div>
</div>
<div class="orderForm_content">
	<div class="orderForm_title">
		<div class="orderForm_title_margin"><h2>填写核对订单信息</h2></div>
	</div>
	<div class="reciever_message">
		<div class="reciever_message_content">
			<p class="reciever_message_title">收件人信息</p>
			<p class="reciever_message_a">[<a onclick="changeMessage()">修改</a>]</p>
		</div>
		<div class="reciever_message_detail">
			<s:if test="#session.userLogin.address==null">
				<p>暂无</p>
			</s:if>
			<s:else>
				<p><span><s:property value="#session.userLogin.reciever"/> </span> <span> <s:property value="#session.userLogin.phone"/></span></p>
				<p><span><s:property value="#session.userLogin.youbian"/> </span> <span> <s:property value="#session.userLogin.address"/></span></p>
			</s:else>
		</div>
		<div class="yichang_input" id="changeMessage">			
			<form action="changeReciever" method="post">
				<p class="reciever_name">				
					收件人：<input type="text" name="reciever" style="margin-right:15px"/>
					电话：<input type="text" name="phone"/><br/>
				</p>
				<p class="reciever_name">
					邮&nbsp;&nbsp;&nbsp;编：<input type="text" name="youbian" style="margin-right:15px;width:60px;"/>
					详细地址：<input type="text" name="address" style="width:210px;"/><br/>
				</p>
				<p class="reciever_name">
					<input type="submit" value="保存修改" class="save_button"/>
				</p>
			</form>
		</div>
	</div>
	<div class="reciever_message">
		<div class="reciever_message_content">
			<p class="reciever_message_title">支付方式</p>
			<p class="reciever_message_a">[<a onclick="changePayWay()">修改</a>]</p>
		</div>
		<div class="reciever_message_detail">			
			<p><s:property value="#session.userLogin.payWay"/></p>
			<p>快递运输</p>			
		</div>
		<div style="width:997px;border:2px #ff8800 solid;height:170px;display:none;" id="changePayWay">			
			<form action="changePayWay" method="post">	
				<p class="reciever_name">				
					<input type="radio" name="payWay" value="网上支付" checked="true"/> 网上支付 <br/>
				</p>
				<p class="reciever_name">
					<input type="radio" name="payWay" value="货到付款"/>	货到付款<br/>
				</p>
				<p class="reciever_name">
					<input type="submit" value="保存修改" class="save_button"/>
				</p>
			</form>
		</div>
	</div>
	<div class="orderDetail_width">
		<div class="orderDetail_title">
			<p class="orderDetail_title_big">购物清单</p>
			<p class="return_shopCar"><a href="showShopCar">返回修改购物车</a></p>
		</div>
		<table class="orderForm_everyBook">
			<tr bgColor="#f2f2f2" align="center" height="25px">
				<td width="50%">商品</td>
				<td width="20%">价格</td>
				<td width="20%">数量</td>
				<td width="10%">库存状况</td>
			</tr>
			<s:iterator value="shopCars">	
				<tr class="shopOrder" height="80px">							
			 		<s:iterator value="books">
			 		
						<s:if test="bookId==id">							
							<td>
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
							</td>
							<td align="right"><span>¥ <s:property value="singlePrice"/></span></td>
							<td align="center"><span><s:property value="num"/></span></td>
							<td align="center">
								<s:if test="bookNum>0">
									<span>有货</span>
								</s:if>
							</td>								
						</s:if>						
					</s:iterator>
				</tr>
			</s:iterator>
		</table>
		<div class="order_sumprice">
			<div class="order_sumprice_margin">
				<p><span style="left:0px;top:0px;">总额：</span> <span style="right:0px;top:0px;">¥ <s:property value="sumPrice"/></span></p><br/>
				<p><span style="left:0px;bottom:0px;">运费：</span> <span style="right:0px;bottom:0px;">¥ 0.0</span></p>
			</div>
		</div>
	</div>
</div>
<div class="order_submit_width">
	<div style="float:right;" class="order_submit"><a href="sendOrder?sumPrice=<s:property value="sumPrice"/>">提交订单</a></div>
	<div class="should_pay_sumprice">
		<span>应付总额： </span>
		<span class="shopCar_sumPrice_num">¥ <s:property value="sumPrice"/></span>	
	</div>
</div>

