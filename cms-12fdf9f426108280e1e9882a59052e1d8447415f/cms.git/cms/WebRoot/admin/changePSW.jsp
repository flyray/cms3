<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
    <div id="div_ac">
			<form id="form1" action="admin_changePSW" method="post">
            <span id="ac_title">修改个人密码</span>
			<table class="tb_item">
				<tr><td>管理员名称：</td><td><input name="adminName" value="${adminName }" readonly/></td></tr>
				<tr><td>原密码：</td><td><input name="originaladminPassword"/></td></tr>
				<tr><td>新密码：</td><td><input name="adminPassword"/></td></tr>
				<tr><td><input type="hidden" name="adminID" value="${adminID}"/></td></tr>
				<tr><td colspan="2" cellspace="2"><input id="sbt" type="submit" value="修改"/>
			</table>
			</form>
		</div>
  </body>
</html>
