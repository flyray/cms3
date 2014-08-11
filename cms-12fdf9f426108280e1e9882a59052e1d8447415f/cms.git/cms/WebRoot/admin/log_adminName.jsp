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
		<div id="div_ac">
			<form id="form1" action="log_adminName_findAll" method="post">
            <span id="ac_title">查找指定用户日志</span><span id="ac_msg"><s:actionmessage/></span>
			<table class="tb_item">
				<tr><td>管理员名称：</td><td><input name="adminName" id="adminName"/></td></tr>
				<tr><td colspan="2" cellspace="2"><input id="sbt" type="submit" value="查找"/></td></tr>
			</table>
			<s:actionmessage/>
			</form>
		</div>
	
</body>
</html>