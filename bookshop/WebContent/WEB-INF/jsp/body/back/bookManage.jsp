<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib  prefix="s" uri="/struts-tags"%>

<div class="book_manage">
	<div class="book_manage_top">
		<h4>所有分类</h4>
		<div class="addBookList">
			<button id="addLink" onclick="addBookList();">添加主分类</button>
			<!-- 隐藏块 -->
			<div style="display:none;" id="addBookList">
				<form action="addBookList" method="post" >
					<input type="hidden" name="BookListDetailId" value="<s:property value="id"/>"/>
					<input type="text" name="bookListName" style="margin-left:30px;"/>
					<input type="submit" value="添加"/>				
				</form>
				<button onclick="canselAddBookList();">取消</button>
			</div>
		</div>
	</div>
	<s:iterator value="bookList">
		<div class="bookList">
			<div class="bookListName">
				<p><s:property value="bookListName"/></p>
				<div class="addBookListDetail">
					<div id="<s:property value="id"/>link">
						<button  onclick="addBookListDetail(<s:property value="id"/>);">添加</button>
						<a href="deleteBookList?bookListId=<s:property value="id"/>">删除</a>
					</div>
					<!-- 隐藏块 -->
					<div id="<s:property value="id"/>detail" style="display:none;">
						<form action="addBookListDetail" method="post">
							<input type="hidden" name="bookListId" value="<s:property value="id"/>"/>
							<input type="text" name="listDetailName" style="margin-left:30px;"/>
							<input type="submit" value="添加"/>						
						</form>
						<button onclick="canselAddBookListDetail(<s:property value="id"/>);">取消</button>
					</div>
				</div>
			</div>
		</div>
		<div class="bookListDetail">
			<table class="listDetailTable">
				<s:iterator value="bookListDetail">
					<tr>
						<td width="10%">编号：<s:property value="id"/></td>
						<td id="<s:property value="id"/>x">
							<a href="showBookBack?bookListDetailId=<s:property value="id"/>"><s:property value="listDetailName"/></a>
						</td>
						<!-- 隐藏块 -->
						<td style="display:none;" id="<s:property value="id"/>">
							<form action="updateListDetail" method="post" style="margin:0 -80px 0 100px;">
								<input type="hidden" name="bookListDetailId" value="<s:property value="id"/>"/>
								<input type="text" name="listDetailName" style="margin-left:30px;"/>
								<input type="submit" value="修改"/>								
							</form>
							<button onclick="canselSave(<s:property value="id"/>);">取消</button>
						</td>
						<td width="20%"><a href="deleteListDetail?bookListDetailId=<s:property value="id"/>">删除</a></td>
						<td width="20%"><button onclick="showSave(<s:property value="id"/>);">修改</button></td>
					</tr>
				</s:iterator>
			</table>
		</div>
		<div class="clear"></div>
	</s:iterator>
</div>