<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/item.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
	<div id="div_ac">
            <span id="ac_title">查看个人信息</span>
			<table class="tb_item">
				<tr><td>管理员名称：</td><td>${adminName}</td></tr>
				<tr><td>组别：</td><td>${adminGroup.agName }</td></tr>
				<tr><td>性别：</td><td>${sex}</td></tr>
				<tr><td>电话：</td><td>${phoneNum}</td></tr>
				<tr><td>邮箱：</td><td>${email}</td></tr>
				<tr><td>身份证号：</td><td>${IDcard }</td></tr>
				<tr><td>备注：</td><td>${remarks }</td></tr>
			</table>
		</div>
  </body>
</html>
