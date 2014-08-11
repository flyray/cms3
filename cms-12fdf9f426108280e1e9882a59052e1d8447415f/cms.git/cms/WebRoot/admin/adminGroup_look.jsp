<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link href="css/common.css" rel="stylesheet" type="text/css" />
	<link href="css/adminGroup.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
	<script type="text/javascript" src="js/adminGroup.js"></script>
</head>
<body>
	<div id="content_t">管理员分组</div>
	<div id="content">
		<div id="div_ac">
			<form id="form1" action="adminGroup_update" method="post">
			<input type="hidden" name="gid" value="${gid}"/>
            <span id="ac_title">查看</span><span class="font_red"><s:actionmessage/></span>
			<table class="tb_item">
				<tr><td class="td_nowrap">分组名称：</td><td><input id="agName" name="agName" value="${agName }" disabled/></td></tr>
				<tr><td>管理栏目：</td><td>
					<s:iterator value="subItems" var="subItem">
						<span class="ag_checkbox"><input disabled class="my_checkbox" name="subitemList" type="checkbox" checked value="${subItem.subItemID}"/>${subItem.subItemName}</span>
					</s:iterator>
				</td></tr>
				<tr><td>置顶权限：</td><td>
					<s:if test="#popedom==0">
						<select disabled name="popedom">
						<option value="0">无</option>
						<option value="1">有</option>
						</select>
					</s:if>
					<s:else>
						<select disabled name="popedom">
						<option value="1">有</option>
						<option value="0">无</option>
						</select>
					</s:else>
				</td></tr>
				<tr><td colspan="2" cellspace="2"><a href="adminGroup_find?gid=${gid }">修改</a>   <span id="spnan"><a href="javascript:history.go(-1);">返回</a></span></td></tr>
			</table>
			</form>
		</div>
	</div>
	<s:debug></s:debug>
</body>
</html>