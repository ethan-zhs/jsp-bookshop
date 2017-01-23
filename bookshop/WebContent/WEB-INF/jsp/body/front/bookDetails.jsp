<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>

<div class="content_width">
	<div class="content_nav">
		<div id=con>
		    <ul id=tags>
		         <li><a onClick="selectTag('tagContent0',this)" href="javascript:void(0)">销量领先</a> </li>
		         <li class=selectTag><a onClick="selectTag('tagContent1',this)" href="javascript:void(0)">热门推荐</a> </li>
		  	</ul>
		    <div id=tagContent>
		        <div class=tagContent id=tagContent0>
		        	<ul>
			        	<s:iterator value="bookSaleWell" begin="0" end="4">
			        		<li>
			        			<div class="detail_nav_content">
			        				<div class="detail_nav_content_img">
					        			<s:if test="imgName==null">
											<a href="bookDetails?bookId=<s:property value="id"/>">
												<img alt="书本图片" src="${pageContext.request.contextPath}/lib/bookImages/moren.jpg" width="60px" height="60px"/>
											</a>
										</s:if>
										<s:else>
											<a href="bookDetails?bookId=<s:property value="id"/>">
												<img alt="书本图片" src="${pageContext.request.contextPath}/lib/bookImages/upload/<s:property value="imgName"/>" width="60px" height="60px"/>
											</a>
										</s:else>
									</div>
									<div class="detail_nav_content_word">
										<a href="bookDetails?bookId=<s:property value="id"/>"><s:property value="bookName"/></a>
										<p class="price">¥ <s:property value="singlePrice"/></p>
										<p>销量：<s:property value="saleNum"/>本</p>
									</div>
				        		</div>	
				        	</li>
			        	</s:iterator>
		        	</ul>
		        </div>
		        <div class="tagContent selectTag" id=tagContent1>
		        	<ul>
			        	<s:iterator value="bookhot" begin="0" end="4">
			        		<li>
			        			<div class="detail_nav_content">
			        				<div class="detail_nav_content_img">
					        			<s:if test="imgName==null">
											<a href="bookDetails?bookId=<s:property value="id"/>">
												<img alt="书本图片" src="${pageContext.request.contextPath}/lib/bookImages/moren.jpg" width="60px" height="60px"/>
											</a>
										</s:if>
										<s:else>
											<a href="bookDetails?bookId=<s:property value="id"/>">
												<img alt="书本图片" src="${pageContext.request.contextPath}/lib/bookImages/upload/<s:property value="imgName"/>" width="60px" height="60px"/>
											</a>
										</s:else>
									</div>
									<div class="detail_nav_content_word">
										<a href="bookDetails?bookId=<s:property value="id"/>"><s:property value="bookName"/></a>
										<p class="price">¥ <s:property value="singlePrice"/></p>
										<p>销量：<s:property value="saleNum"/>本</p>
									</div>
				        		</div>	
				        	</li>
			        	</s:iterator>
		        	</ul>
		        </div>
			</div>
			<div class="nowday_seem">
				<p>最近浏览</p>
			</div>
			<div>
				<br/>
				<p> &nbsp;&nbsp;&nbsp;暂无内容</p>
			</div>
		</div>	
	</div>
	<div class="bookDetail_width">		
		<div class="bookDetail_book">
			<div class="bookDetail_img">
				<div class="container"> <img id="idImage2" class="izImage2" />
					<div id="idViewer2" class="izViewer2"></div>
				</div>
				<div id="idList" class="list" style="display:none;"></div>
				<div id="idHandle3" class="handle2"></div>
				<s:if test="book.imgName==null">
					<input type="hidden" id="imgname" value="${pageContext.request.contextPath}/lib/bookImages/moren.jpg"/>
				</s:if>
				<s:else>					
					<input type="hidden" id="imgname" value="${pageContext.request.contextPath}/lib/bookImages/upload/<s:property value="book.imgName"/>"/>
				</s:else>
			</div>
			<div class="bookDetail_word">
				<h2><s:property value="book.bookName"/></h2>
				<p><span id="word_margin">价</span><span>格：</span><span class="price_style">¥ <s:property value="book.singlePrice"/></span></p>
				<p><span>图书简介：</span><s:property value="book.bookIntroduce"/></p>
				<p><span id="word_margin">作</span><span>者：</span><s:property value="book.author"/></p>
				<p><span>作者简介：</span><s:property value="book.authorIntroduce"/></p>
				<p><span id="word_margin">存</span><span>货：</span><s:property value="book.bookNum"/>本</p>
				<p>
					<span style="float:left;">购买数量：</span>
					<button onclick="sub();" class="bb">-</button>	
					<form action="addShopCar?bookId=<s:property value="book.id"/>" method="post" name="f1">																
						<input type="text" name="num" value="1" style="width:40px;text-align:center;"/>
						<s:if test="book.bookNum>0">
							<input type="submit" value="> 加入购物车" class="addShopCar"/>
						</s:if>
						<s:else>
							<h3 style="color:#999;position:absolute; left:80px;bottom:70px;">暂时无货</h3>
						</s:else>
					</form>
					<button onclick="add();">+</button>
				</p><br/>
				<p><span>出版时间：</span><s:property value="book.publishTime"/></p>
				<p><span>出版信息：</span><s:property value="book.publishMessage"/></p>				
			</div>			
		</div>			
		<div class="review_and_detail">
			<div class="review_and_detail_top">
				<div class="review_botton">
					<p>商品详情</p>
				</div>
				<div class="detail_botton">
					<p>相关评论</p>
				</div>
			</div>
			<div style="border:1px #e4e4e4  solid;width:980px;height:auto;min-height:200px">
				<pre style="margin:15px;">暂无内容</pre>
			</div>
			<div class="clear"></div>		
		</div>		
	</div>	
	<div class="clear"></div>
</div>
<script type="text/javascript">
(function(){

	var iz = new ImageZoom( "idImage2", "idViewer2", {
		mode: "handle", handle: "idHandle3"
	});

	var arrPic = [], list = $$("idList"), image = $$("idImage2");

	arrPic.push({ originPic: document.getElementById("imgname").value, zoomPic: document.getElementById("imgname").value });

	$$A.forEach(arrPic, function(o, i){
		var img = list.appendChild(document.createElement("img"));
		img.src = o.smallPic;
		img.onmouseover = function(){
			iz.reset({ originPic: o.originPic, zoomPic: o.zoomPic });
			$$A.forEach(list.getElementsByTagName("img"), function(img){ img.className = ""; });
			this.className = "on";
		}
		if(!i){ img.onmouseover(); }
	})
})()
</script>