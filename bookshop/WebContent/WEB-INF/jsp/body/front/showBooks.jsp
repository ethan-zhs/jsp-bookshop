<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>

<s:property value="xx"/>
<div class="content_width">
	<div class="content_nav">
		<div class="content_nav_title">
			<p>书籍分类</p>
		</div>
		<div id="menu">
			<%int i = 1;%>
			<s:iterator value="bookList">		
				<div class="tit" id="menu<%=i%>">
					<a href="#nojs" class="off" ><s:property value="bookListName"/></a>
			    </div>
					
				<div class="list" id="menu<%=i++%>_child">				
					<ul>					
						<s:iterator value="bookListDetail">								
							<li id="xx">						
								<a href="findById?bookListDetailId=<s:property value="id"/>">
									<s:property value="listDetailName"/>
								</a>
							</li>											
						</s:iterator>
					</ul>
				</div>								
			</s:iterator>			
		</div>	
	</div>
	<div class="content_right">		
		<div class="showBooks_right_top">
			<div class="showBooks_right_top_message">IT信息类  >> 前台开发 </div>
			<div class="showBooks_right_top_img">
				<img src="${pageContext.request.contextPath}/lib/bookImages/showbook.jpg"/>
			</div>
		</div>
		<!-- 书籍列表 -->
		<div class="showBooks_right_content">
			<div class="showBooks_content_top">
				<s:if test="findWay=='id'">
					<a href="findByPrice?bookListDetailId=<s:property value="bookListDetailId"/>&findWay=id">价格</a>
					<a href="findBySaleNum?bookListDetailId=<s:property value="bookListDetailId"/>&findWay=id">销量</a> 
					<a href="findByTime?bookListDetailId=<s:property value="bookListDetailId"/>&findWay=id">最新</a> 
				</s:if>
				<s:elseif test="findWay=='classify'">
					<a href="findByPrice?classify=<s:property value="classify"/>&findWay=classify">价格</a>
					<a href="findBySaleNum?classify=<s:property value="classify"/>&findWay=classify">销量</a> 
					<a href="findByTime?classify=<s:property value="classify"/>&findWay=classify">最新</a> 
				</s:elseif>
				<s:elseif test="findWay=='search'">
					<a href="findByPrice?searchKey=<s:property value="searchKey"/>&findWay=search">价格</a>
					<a href="findBySaleNum?searchKey=<s:property value="searchKey"/>&findWay=search">销量</a> 
					<a href="findByTime?searchKey=<s:property value="searchKey"/>&findWay=search">最新</a> 
				</s:elseif>
				<label style="margin:8px 25px 0 0;float:right;">查询结果 ( 20 )</label>
			</div>
			<div style="min-height:340px;height:auto;width:975px;border:1px #f2f2f2 solid;margin-top:10px;">
				<s:iterator value="books">				
					<div class="saleWell_content">
						<div class="saleWell_img">
							<s:if test="imgName==null">
								<a href="bookDetails?bookId=<s:property value="id"/>">
									<img alt="书本图片" src="${pageContext.request.contextPath}/lib/bookImages/moren.jpg"/>
								</a>
							</s:if>
							<s:else>
								<a href="bookDetails?bookId=<s:property value="id"/>">
									<img alt="书本图片" src="${pageContext.request.contextPath}/lib/bookImages/upload/<s:property value="imgName"/>"/>
								</a>
							</s:else>
						</div>
						<div class="saleWell_word">
							<a href="bookDetails?bookId=<s:property value="id"/>"><s:property value="bookName"/></a>
							<p class="price_style">¥ <s:property value="singlePrice"/></p>
							<p>作者：<s:property value="author"/></p>
							<p>出版社：<s:property value="publishMessage"/></p>
							<p>出版时间：20<s:property value="publishTime"/></p>	
						</div>
					
					</div>
				</s:iterator>	
				<div class="clear"></div>
			</div>			
			<div class="clear"></div>
		</div>
	</div>
	<div class="clear"></div></div>