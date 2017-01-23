<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>


<div class="shopCar_top">
	<div class="shopCar_top_left"></div>
</div>
<div class="myOrder_top">
	<h2 style="margin:5px 0 0 15px;">我的订单</h2>
</div>
<div class="myOrder_content">
	<table class="myOrder_table">
		<tr align="center" height="30px" bgcolor="#f2f2f2">
			<td width="20%">订单号</td>
			<td width="50%">详细订单</td>
			<td width="10%">总额</td>
			<td width="20%">订单状况</td>
		</tr>
		<s:iterator value="orderForm" id="form">
			<tr>
				<td align="center"><s:property value="orderFormNo"/></td>				
				<td>					
					<s:iterator value="orderDetail" id="detail">
						<s:if test="#form.id==orderId">	
							<div class="myOrder_detail_width">															
								<s:iterator value="books">									
									<s:if test="#detail.bookId==id">
										<div class="myOrder_detail_img">
											<s:if test="imgName==null">
												<a href="bookDetails?bookId=<s:property value="id"/>">
													<img alt="书本图片" src="${pageContext.request.contextPath}/lib/bookImages/moren.jpg"/>
												</a>
											</s:if>
											<s:else>
												<a href="bookDetails?bookId=<s:property value="id"/>">
													<img alt="书本图片" src="${pageContext.request.contextPath}/lib/bookImages/upload/<s:property value="imgName"/>" />
												</a>
											</s:else>
										</div>
										<div class="myOrder_detail_bookName">
											<a href="bookDetails?bookId=<s:property value="id"/>"><s:property value="bookName"/></a>
										</div>
										<div class="myOrder_detail_bookNum">
											<s:property value="#detail.num"/>本
										</div>
										<div class="myOrder_detail_price">
											¥ <s:property value="singlePrice"/>
										</div>
									</s:if>
								</s:iterator>
								
								
							</div>
						</s:if>
					</s:iterator>					
				</td>
				<td align="right">¥ <s:property value="sumPrice"/> &nbsp;&nbsp;</td>
				<td align="center">
					<s:if test="handle==0">
						<a href="pay?orderFormId=<s:property value="#form.id"/>">付款</a>
					</s:if>
					<s:if test="handle==1">
						<p>已付款</p>
						<p>等待卖家发货</p>
					</s:if>
					<s:if test="handle==2">
						<p><a href="confirm?orderFormId=<s:property value="#form.id"/>">确认收货</a></p>
						<p>卖家已发货</p>
					</s:if>
					<s:if test="handle==3">
						<p>完成</p>
					</s:if>
				</td>
			</tr>
		</s:iterator>
	</table>
</div>
