<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻列表静态化</title>
</head>
<body>
	<div id="content">
		<form name="form1" method="post" action="static_createSubItem">
			<s:iterator value="subItems" var="subItem">
				<input class="my_checkbox" name="subItemList" type="checkbox" checked value="${subItem.subItemID}"/>${subItem.subItemName}
			</s:iterator>
			<input type="submit"/>
		</form>
	</div>
</body>
</html>