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
	<script type="text/javascript">
	
	$(document).ready(function(){
		$.ajax({
			type:"post",
			url:"subItem_findAllSubItems",
			dataType:"json",
			success:function(result){
				for(var i=0;i<result.length;i++){
					var o_subItemID=result[i].subItemID;
					var o_subItemName=result[i].subItemName;		
					$("#subitem_add").append("<option value="+o_subItemID+">"+o_subItemName+"</option>");
				}
			}
		});
	});
			
	</script>
	
</head>
<body>
	<div id="content_t">管理员分组</div>
	<div id="content">
		<div id="div_ac">
			<form id="form1" action="adminGroup_update" method="post">
			<input type="hidden" name="gid" value="${gid}"/>
            <span id="ac_title">修改</span><span class="font_red"><s:actionmessage/></span>
			<table class="tb_item">
				<tr><td class="td_nowrap">分组名称：</td><td><input id="agName" name="agName" value="${agName }"/></td></tr>
				<tr><td>管理栏目：</td><td>
					<input class="my_checkbox" id="all1" type="button" value="全选"/>
						<s:iterator value="subItems" var="subItem">
								<input class="my_checkbox" name="subitemList" type="checkbox" checked value="${subItem.subItemID}"/>${subItem.subItemName}
						</s:iterator>
				</td></tr>
				<tr>
					<td>置顶权限：</td>
					<td>
						<s:if test="#popedom==0">
							<select name="popedom">
							<option value="0">无</option>
							<option value="1">有</option>
							</select>
						</s:if>
						<s:else>
							<select name="popedom">
							<option value="1">有</option>
							<option value="0">无</option>
							</select>
						</s:else>
					</td>
				</tr>
				<tr>
					<td>增加权限：</td>
					<td>
						<select id="subitem_add" name="subitem_add">
							<option value="-1">请选择</option>
						</select>
					</td>
				</tr>
				<tr><td colspan="2" cellspace="2"><input id="sbt" type="submit" value="修改"/>    <span id="spnan"><a href="javascript:history.go(-1);">返回</a></span></td></tr>
			</table>
			</form>
		</div>
	</div>
	<s:debug></s:debug>
</body>
</html>