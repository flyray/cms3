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
	<script type="text/javascript">
		function menuFind(menuID){
			$.ajax({
				type:'GET',
				url:'menu_findAjax',
				proccess:true,
				datatype:'json',
				data:'menuID='+menuID,
				success:function(result){
					var json = eval('(' + result + ')');
					var ipt_menuID="<input type='hidden' name='menuID'/>";
					if($("input[name='menuID']").length<=0){$("#form1").append(ipt_menuID);}
					$("input[name='menuID']").val(menuID);
					$("input[name='menuName']").val(json.menuName);
					$("input[name='menuLink']").val(json.menuLink);
					$("input[name='menuOrder']").val(json.menuOrder);
					$("input[name='sethot']").val(json.sethot);
					$("#sbt").val("修改");
					$("#ac_title").text("修改");
					$("#spnan_h").show();
					$("#form1").attr("action","menu_update");
					
				}
				
			});
		}
		function returnAdd(){
			$("input[name='menuID']").remove();
			$("#sbt").val("添加");
			$("#ac_title").text("添加");
			$("#form1").attr("action","menu_add");
			$("#spnan_h").hide();
			document.getElementById("form1").reset();
		}
	</script>
</head>
<body>
	<div id="content_t">查看菜单</div>
	<div id="content">
		<table class="tb_top">
		<tr><th>排序</th><th>菜单名称</th><th>链接</th><th>修改</th><th>删除</th></tr>
		<s:iterator value="menulist" var="menu">
		<tr><td>${menu.menuOrder}</td><td>${menu.menuName}</td><td>${menu.menuLink}</td><td><a href="javascript:menuFind(${menu.menuID})">修改</a></td><td><a href="menu_delete?menuID=${menu.menuID}" onClick="if(confirm('删除不可恢复，真的要删除吗？'))return true;return false;">删除</a></td></tr>	
		</s:iterator>
		</table>
		<div id="div_ac">
			<form id="form1" action="menu_add" method="post">
            <span id="ac_title">添加</span><span id="ac_msg"><s:actionmessage/></span>
			<table class="tb_menu">
				<tr><td>菜单排序：</td><td><input name="menuOrder"/></td></tr>
				<tr><td>菜单名称：</td><td><input id="menuName" name="menuName"/></td></tr>
				<tr><td>菜单链接：</td><td><input name="menuLink"/></td></tr>
				<tr><td colspan="2" cellspace="2"><input id="sbt" type="submit" value="添加"/><span id="spnan_h"><a href="javascript:returnAdd();">返回添加</a></span></td></tr>
			</table>
			</form>
		</div>
	</div>
	
</body>
</html>