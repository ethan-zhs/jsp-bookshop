<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib  prefix="s" uri="/struts-tags"%>

<div class="book_manage">
	<div class="showBookBack_top">
		<div style="margin:8px 0 0 20px;">
			<s:property value="listDetailShow.listDetailName"/> >>
			<a href="toAddBooks">添加新书</a>
		</div>
	</div>
	<s:iterator value="books">
		<div class="showBookBack_content">
			<div style="margin:15px 0 0 20px;float:left;">
				<s:if test="imgName==null">
					<img alt="书本图片" src="${pageContext.request.contextPath}/lib/bookImages/moren.jpg" width="70px" height="70px"/>
				</s:if>
				<s:else>
					<img alt="书本图片" src="${pageContext.request.contextPath}/lib/bookImages/upload/<s:property value="imgName"/>" width="70px" height="70px">
				</s:else>	
			</div>
			<div style="margin:15px 0 0 20px;float:left;">
				<h3><s:property value="bookName"/></h3><br>
				<div style="height:40px;width:300px;"><s:property value="bookIntroduce"/></div>				
			</div>
			<div style="margin:45px 0 0 40px;float:left;">
				<a href="deleteBook?bookId=<s:property value="id"/>">删除</a>
				<a href="toUpdateBook?bookId=<s:property value="id"/>">修改</a>
				<a href="toUploadCover?bookId=<s:property value="id"/>">上传封面</a>
			</div>
		</div>	
	</s:iterator>	
</div>