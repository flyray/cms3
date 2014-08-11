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
		function adminFind(gid){
			$.ajax({
				type:'GET',
				url:'adminGroup_find_Ajax',
				proccess:true,
				datatype:'json',
				data:'gid='+gid,
				success:function(result){
					var json = eval('(' + result + ')');
					var ipt_gid="<input type='hidden' name='gid'/>";
					if($("input[name='gid']").length<=0){$("#form1").append(ipt_gid);}
					$("input[name='gid']").val(gid);
					$("checkbox[name='subitemList']").val(json.subItems.subItemID);
					alert(json.subItems);
					$("input[name='agName']").val(json.agName);
					$("select[name='popedom']").val(json.popedom);
					$("#sbt").val("修改");
					$("#ac_title").text("修改");
					$("#spnan_h").show();
					$("#form1").attr("action","adminGroup_update");
				}
				
			});
		}
		function returnAdd(){
			$("input[name='gid']").remove();
			$("#sbt").val("添加");
			$("#ac_title").text("添加");
			$("#form1").attr("action","adminGroup_add");
			$("#spnan_h").hide();
			document.getElementById("form1").reset();
		}
	</script>
</head>
<body>
	<div id="content_t">管理员分组</div>
	<div id="content">
		<table class="tb_top">
		<tr><th>分组名称</th><th>管理栏目</th><th>置顶权限</th><th>修改</th><th>删除</th></tr>
		<s:iterator value="list" var="adminGroup">
		<tr><td>${adminGroup.agName}</td><td><div><a href="adminGroup_look?gid=${gid}">点击查看</a></div></td><td><s:if test="#adminGroup.popedom==1">有</s:if><s:else>无</s:else></td><td><a href="adminGroup_find?gid=${adminGroup.gid}">修改</a></td><td><a href="adminGroup_delete?gid=${adminGroup.gid}" onClick="if(confirm('删除不可恢复，真的要删除吗？'))return true;return false;">删除</a></td></tr>	
		</s:iterator>
		</table>
		<div id="div_ac">
			<form id="form1" action="adminGroup_add" method="post">
            <span id="ac_title">添加</span><span class="font_red"><s:actionmessage/></span>
			<table class="tb_item">
				<tr><td class="td_nowrap">分组名称：</td><td><input id="agName" name="agName"/></td></tr>
				<tr><td>管理栏目：</td><td class="list">
					<input class="my_checkbox" id="all1" type="button" value="全选"/><br/>
					<ul><s:iterator value="itemList" var="item" >
						<li><span>${item.itemName}</span>
						<s:iterator value="subItems" var="subItem">
							<s:if test="#subItem.item.itemID==#item.itemID">
								<input class="my_checkbox" name="subitemList" type="checkbox" checked value="${subItem.subItemID}"/>${subItem.subItemName}
							</s:if>
						</s:iterator></li>
					</s:iterator></ul>
				</td></tr>
				<tr><td>置顶权限：</td><td>
					<select name="popedom">
						<option value="0">无</option>
						<option value="1">有</option>
					</select>
				</td></tr>
				<tr><td colspan="2" cellspace="2"><input id="sbt" type="submit" value="添加"/><span id="spnan_h"><a href="javascript:returnAdd();">返回添加</a></span></td></tr>
			</table>
			</form>
		</div>
	</div>
	<s:debug></s:debug>
</body>
</html>