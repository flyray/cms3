<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有提问</title>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
	<link href="css/question.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="content_t">查看一级导航</div>
	<div id="content">
		<table class="tb_top">
		<tr><th width="200">标题</th><th width="400">内容</th><th width="150">提问信息</th><th width="400">回复内容</th><th width="100">是否显示</th><th width="100">修改</th><th width="100">删除</th></tr>
		<s:iterator value="questionlist" var="question">
		<tr height="80"><td>${question.title}</td><td><textarea style="height:100px; width:200px;" type="text" name="answer" readonly="true">${question.content}</textarea></td><td>提问者：${question.name}<br/>${question.createTime}</td><td width="400"><textarea style="height:100px; width:200px;" type="text" name="answer" readonly="true">${question.answer}</textarea></td>
		<td>
		<s:if test="#question.isshow==0">未回复</s:if>
		<s:if test="#question.broadcast==0&&#question.isshow==1">不显示</s:if>
		<s:if test="#question.broadcast==1&&#question.isshow==1">显示</s:if>
		<s:if test="#question.broadcast==2&&#question.isshow==1">置顶显示</s:if>
		
		</td>
        <td><a href="question_find?questionID=${question.questionID}">点击修改</a></td>
        <td><a href="question_delete?questionID=${question.questionID}" onClick="if(confirm('删除不可恢复，真的要删除吗？'))return true;return false;">直接删除</a></td></tr>
		</s:iterator>
		</table>
		<!-- 分页 -->
		<div class="fenye">
			&nbsp;共<s:property value="page.totalPage"/>页  第${currentPage}页
				<s:if test="page.hasPrePage">
					<a href="question_findAll?currentPage=1" class="font_b">首页</a>
					<a href="question_findAll?currentPage=${currentPage - 1}" class="font_b">上一页</a>
				</s:if>
				<s:else>
					首页
					上一页
		  </s:else>
				<s:if test="page.hasNextPage">
					<a href="question_findAll?currentPage=${currentPage + 1}" class="font_b">下一页</a>
					<a href="question_findAll?currentPage=${page.totalPage}" class="font_b">尾页</a>
				</s:if>
				<s:else>
					下一页
					尾页
				</s:else>
		</div>
		<!-- 分页  end-->
	</div>
</body>
</html>