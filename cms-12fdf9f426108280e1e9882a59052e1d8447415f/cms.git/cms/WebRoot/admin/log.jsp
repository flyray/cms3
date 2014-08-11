<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link href="css/common.css" rel="stylesheet" type="text/css" />
	<link href="css/item.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
</head>
<body>
	<div id="content">
		<span class="font_red"><s:actionmessage/></span>
		<table class="tb_top">
		<tr><th>管理员名称</th><th>新闻标题</th><th>操作</th><th>时间</th><th>ip</th><th>删除</th></tr>
		<s:iterator value="list" var="log">
		<tr><td>${log.adminName}</td><td>${log.newsTitle}</td><td>${log.method}</td><td>${log.time}</td><td>${log.ip}</td><td><a href="log_delete?logID=${log.logID}" onClick="if(confirm('删除不可恢复，真的要删除吗？'))return true;return false;">删除</a></td></tr>	
		</s:iterator>
		</table>
		
		<!-- 分页 -->
		<div class="fenye">
			&nbsp;共<s:property value="page.totalPage"/>页  第${currentPage}页
				<s:if test="page.hasPrePage">
					<a href="log_findAll?currentPage=1" class="font_b">首页</a>
					<a href="log_findAll?currentPage=${currentPage - 1}" class="font_b">上一页</a>
				</s:if>
				<s:else>
					首页
					上一页
		  </s:else>
				<s:if test="page.hasNextPage">
					<a href="log_findAll?currentPage=${currentPage + 1}" class="font_b">下一页</a>
					<a href="log_findAll?currentPage=${page.totalPage}" class="font_b">尾页</a>
				</s:if>
				<s:else>
					下一页
					尾页
				</s:else>
		</div>
		<!-- 分页  end-->
	</div>
	<s:debug></s:debug>
	
</body>
</html>