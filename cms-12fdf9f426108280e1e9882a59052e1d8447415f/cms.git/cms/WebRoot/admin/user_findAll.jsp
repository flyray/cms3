<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>My JSP 'user_findAll.jsp' starting page</title>
  	<link href="css/common.css" rel="stylesheet" type="text/css" />
	<link href="css/user.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
  </head>
  
  <body>
    <div id="content_t">查看用户</div>
	<div id="content">
		<table class="tb_top">
		<tr><th>用户名</th><th>昵称</th><th>注册时间</th><th>是否禁止</th><th>删除</th></tr>
		<s:iterator value="list" var="user">
		<tr><td>${user.username}</td><td>${user.nickname}</td><td>${user.registerTime}</td><td>${user.forbidden}</td><td><a href="item_delete?itemID=${item.itemID}" onClick="if(confirm('删除不可恢复，真的要删除吗？'))return true;return false;">删除</a></td></tr>	
		</s:iterator>
		</table>
		<div id="div_ac">
			<form id="form1" action="item_add" method="post">
            <span id="ac_title">添加</span><span id="ac_msg"><s:actionmessage/></span>
			<table class="tb_item">
				<tr><td>导航名称：</td><td><input id="itemName" name="itemName"/></td></tr>
				<tr><td>导航链接：</td><td><input name="itemLink"/></td></tr>
				<tr><td>导航排序：</td><td><input name="order"/></td></tr>
				<tr><td>管理员：</td><td><input name="username"/></td></tr>
				<tr><td>是否置热：</td><td><select name="hot"><option value="0">否</optipn><option value="1">是</optipn></select></td></tr>
				<tr><td colspan="2" cellspace="2"><input id="sbt" type="submit" value="添加"/><span id="spnan_h"><a href="javascript:returnAdd();">返回添加</a></span></td></tr>
			</table>
			</form>
		</div>
	</div>
  </body>
</html>
