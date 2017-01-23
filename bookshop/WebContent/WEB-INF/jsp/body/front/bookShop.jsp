<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>

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
		<!-- 主页图片 -->
		<div class="ads_picture">
			<img src="${pageContext.request.contextPath}/lib/bookImages/front.jpg">
		</div>
		<!-- 热门推荐 -->		
		<div class="showBook_width">
			<div class="book_top">
				<label class="book_label">热门推荐</label>
			</div>
			<div class="bookhot_content">
				<s:iterator value="bookhot" begin="0" end="5">
					<div class="bookhot_book">
						<div class="bookhot_img">
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
						<div class="bookhot_word">
							<a href="bookDetails?bookId=<s:property value="id"/>"><s:property value="bookName"/></a>
							<p class="price_style">¥ <s:property value="singlePrice"/></p>	
							<p>作者：<s:property value="author"/> &nbsp; &nbsp; &nbsp;出版社：<s:property value="publishMessage"/></p>
							<p>销量：<s:property value="saleNum"/>本 &nbsp; &nbsp; &nbsp;出版时间：20<s:property value="publishTime"/></p>						
						</div>
					</div>
				</s:iterator>
				<div class="clear"></div>
			</div>			
			<div class="clear"></div>
		</div>
		<!-- 销量领先 -->	
		<div class="showBook_width">
			<div class="book_top">
				<label class="book_label">销量领先</label>
			</div>
			<s:iterator value="bookSaleWell" begin="0" end="7">
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
		<!-- 新书出版 -->	
		<div class="showBook_width">
			<div class="book_top">
				<label class="book_label">新书出版</label>
			</div>
			<div class="newBook_content">
				<s:iterator value="bookNew" begin="0" end="3">
					<div class="newBook_book">
							<div class="bookhot_img">
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
							<div class="bookhot_word">
								<a href="bookDetails?bookId=<s:property value="id"/>"><s:property value="bookName"/></a>
								<p class="price_style">¥ <s:property value="singlePrice"/></p>	
								<p>作者：<s:property value="author"/> &nbsp; &nbsp; &nbsp;出版社：<s:property value="publishMessage"/></p>
								<p>销量：<s:property value="saleNum"/>本 &nbsp; &nbsp; &nbsp;出版时间：20<s:property value="publishTime"/></p>						
							</div>
					</div>
				</s:iterator>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<div class="clear"></div>
</div>
