 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>search</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <form id="search" name="search" action="news_findByKeyWords" method="get">
   		关键词：<input type="text" id="keywords" name="keywords" required="true"/>
   		编辑：<input type="text" id="editorName" name="editorName" required="true"/>
   		来源：<input type="text" id="source" name="source" required="true"/>
   		<br>
   		开始时间：<input type="text" id="starttime" name="starttime" required="true"/>
   		结束时间：<input type="text" id="endtime" name="endtime" required="true"/>
   		<input type="submit" value="搜索" />
   	</form>
 
 	<table class="tb_top">
		<tr><th width="150px">新闻标题(点击查看)</th><th>类别</th><th>阅读量</th><th>是否置顶</th><th>编辑</th><th>发布时间</th><th>置顶</th><th>修改</th><th>删除</th></tr>
		
			<s:iterator value="newslist" var="news">
			<tr><td width="150px"><a href="javascript:newsFind(${news.newsID})"><div class="break">${news.title}</div></a></td><td>${news.subItem.item.itemName}/${news.subItem.subItemName}</td><td>${news.hasread}</td><td><s:if test="#news.settop==1">是</s:if><s:else>否</s:else></td><td>${news.editor.adminName}</td><td>${news.createtime}</td><td><span class="font_gray"><s:if test="#news.settop==1"><a href="news_setTop?newsID=${newsID }&settop=0">取消置顶</a></s:if><s:else><a href="news_setTop?newsID=${newsID }&settop=1">置顶</a></s:else></span></td><td><a href="news_find?newsID=${news.newsID}&currentPage=${currentPage}&itemID=${news.subItem.item.itemID}&subItemID=${news.subItem.subItemID}">修改</a></td><td><a href="news_delete?newsID=${news.newsID}&currentPage=${currentPage}" onClick="if(confirm('删除不可恢复，真的要删除吗？'))return true;return false;">删除</a></td></tr>	
			</s:iterator> 
		</table>
		<!-- 分页 -->
		<div class="fenye">
			&nbsp;共<s:property value="page.totalPage"/>页  第${currentPage}页
				<s:if test="page.hasPrePage">
					<a href="news_findByKeyWords?currentPage=1&keywords=${keywords}" class="font_b">首页</a>
					<a href="news_findByKeyWords?currentPage=${currentPage - 1}&keywords=${keywords}" class="font_b">上一页</a>
				</s:if>
				<s:else>
					首页
					上一页
		  </s:else>
				<s:if test="page.hasNextPage">
					<a href="news_findByKeyWords?currentPage=${currentPage + 1}&keywords=${keywords}" class="font_b">下一页</a>
					<a href="news_findByKeyWords?currentPage=${page.totalPage}&keywords=${keywords}" class="font_b">尾页</a>
				</s:if>
				<s:else>
					下一页
					尾页
				</s:else>
		</div>
		
		
		
  </body>
</html>
