<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib  prefix="s" uri="/struts-tags"%>

<style type="text/css">
	#preview{
		width:180px;
		height:180px;
		border:1px solid #999;
		overflow:hidden;
		margin-top:15px;
		margin-bottom:15px;
	}
	#imghead {
		filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=image);
	}
</style>

<div class="book_manage">
	<div class="showBookBack_top">
		<div style="margin:8px 0 0 20px;">
			<s:property value="book.bookName"/>
		</div>
	</div>
	<div style="width:800px;height:400px;border:1px #e4e4e4 solid;margin:0 auto;margin-top:20px;">
		<div style="width:200px;height:200px;border-right:2px #999 solid;border-bottom:2px #999 solid;margin:20px 0 0 50px;float:left;">
			<s:if test="book.imgName==null">
				<img alt="书本图片" src="${pageContext.request.contextPath}/lib/bookImages/moren.jpg" width="200px" height="200px"/>
			</s:if>
			<s:else>
				<img alt="书本图片" src="${pageContext.request.contextPath}/lib/bookImages/upload/<s:property value="book.imgName"/>" width="200px" height="200px">
			</s:else>		
		</div>
		<div style="width:200px;height:320px;margin:20px 100px 0 0;float:right;overflow:hidden;">
			<p>尽量选择n * n像素的图片上传</p><br>
			<form action="uploadCover?bookId=<s:property value="book.id"/>" enctype="multipart/form-data" method="post">
				<input type="file" name="upload" onchange="previewImage(this)" />
			 	<div id="preview">
	   				<img id="imghead" width=180 height=180 border=0 src="${pageContext.request.contextPath}/lib/bookImages/moren.jpg"/>
				</div>
				<input type="submit" value="保存图片"/>	
			</form>		 		 			
		</div>		
	</div>	
</div>





     
        
