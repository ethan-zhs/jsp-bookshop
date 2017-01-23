<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib  prefix="s" uri="/struts-tags"%>


<div class="backOrder">
	<div class="backOrder_top">
		<label style="margin:10px 0 0 20px;position:absolute;">最新订单</label>		
	</div>
	<table class="backOrder_table">
		<tr align="center" height="30px" bgcolor="#ffffcc">
			<td width="10%">订单号</td>
			<td width="30%">详细订单</td>
			<td width="10%">顾客</td>
			<td width="10%">支付方式</td>
			<td width="20%">收件人信息</td>
			<td width="10%">总额</td>
			<td width="10%">订单状况</td>
		</tr>
		<s:iterator value="orderForm" id="form">
			<tr>
				<td align="center"><s:property value="orderFormNo"/></td>				
				<td>					
					<s:iterator value="orderDetail" id="detail">
						<s:if test="#form.id==orderId">	
							<div style="width:380px;height:50px;border-bottom:1px dashed #e4e4e4;margin:5px 0 0 10px;">															
								<s:iterator value="books">									
									<s:if test="#detail.bookId==id">										
										<div style="width:180px;float:left;margin-top:15px;">
											<s:property value="bookName"/>
										</div>
										<div style="width:70px;float:left;margin-top:15px;text-align:right">
											<s:property value="#detail.num"/>本
										</div>
										<div style="width:80px;float:left;margin-top:15px;text-align:right">
											¥ <s:property value="singlePrice"/>
										</div>
									</s:if>
								</s:iterator>
							</div>
						</s:if>
					</s:iterator>					
				</td>
				<s:iterator value="users">
					<s:if test="#form.userId==id">
						<td align="center"><s:property value="username"/></td>
						<td align="center"><s:property value="payWay"/></td>
						<td><s:property value="address"/></td>
					</s:if>
				</s:iterator>
				<td align="right">¥ <s:property value="sumPrice"/> &nbsp;&nbsp;</td>
				<td align="center">
					<s:if test="handle==0">
						<p>未付款</p>
					</s:if>
					<s:if test="handle==1">
						<p><a href="sendGoods?orderFormId=<s:property value="#form.id"/>">发货</a></p>
						<p>已付款</p>
					</s:if>
					<s:if test="handle==2">
						<p>已发货</p>
						<p>等待买家确认</p>
					</s:if>
					<s:if test="handle==3">
						<p>完成</p>
					</s:if>
				</td>
			</tr>
		</s:iterator>
	</table>
</div>