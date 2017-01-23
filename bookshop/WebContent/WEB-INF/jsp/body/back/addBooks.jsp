<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib  prefix="s" uri="/struts-tags"%>

<div class="book_manage">
	<div class="showBookBack_top">
		<p>添加新书</p>
	</div>
	<table class="addBooks_table">
		<form action="addBooks?bookListDetailId=<s:property value="bookListDetailId"/>" method="post">
			<tr>
				<td width="70px;">书名：</td>
				<td width="250px;"><input type="text" name="bookName"/></td>
				<td width="70px;">所属类别：</td>
				<td>
					<select name="type">
						<option value="1">艺术类</option><option value="2">文学名著</option>
						<option value="3">教育类</option><option value="4">散文小说</option>
						<option value="5">日常生活</option><option value="6">科技类</option>
						<option value="7">教程</option><option value="8">杂志类</option>
						<option value="9">文具</option>
					</select>
				</td>				
			</tr>
			<tr>
				<td>单价：</td>
				<td><input type="text" name="singlePrice"/></td>
				<td>现有数量：</td>
				<td><input type="text" name="bookNum"/></td>
			</tr>
			<tr>
				<td>书籍介绍:</td>
				<td colspan="3"><textarea name="bookIntroduce" class="bookIntroduce"></textarea></td>
			</tr>
			<tr>
				<td>作者：</td>
				<td><input type="text" name="author"/></td>	
				<td>出版时间:</td>
				<td><input type="text" name="publishTime"/> (填写格式 2014-01-01)</td>				
			</tr>
			<tr>
				<td>作者介绍:</td>
				<td><textarea name="authorIntroduce" class="introduce"></textarea></td>
				<td>出版信息：</td>
				<td><textarea name="publishMessage" class="introduce"></textarea></td>
			</tr>
			<tr>
				<td colspan="4" align="center" class="td_post">
					<input type="submit" value="提交信息"/>
				</td>				
			</tr>
			
		</form>
	</table>
</div>
	
