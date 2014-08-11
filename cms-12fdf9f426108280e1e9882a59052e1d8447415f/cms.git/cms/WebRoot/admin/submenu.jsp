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
		$(document).ready(function(){
			$(".xiugai").click(function(){
				//var submenuID=$("input[name='subMenu.subMenuID']").val(subMenuID);
				var submenuID=$(this).siblings("input[name='submenuID_h']").val();
				var tds=$(this).parent().parent().find("td");
				$("input[name='subMenu.subMenuID']").val(submenuID);
				var ipt_subItemID="<input  name='subMenu.subMenuID' value='"+submenuID+"'/>";
				if($("input[name='subMenu.subMenuID']").length<=0){$("#form1").append(ipt_subItemID);}
				var menuID=$(this).siblings("input[name='menuID_h']").val();
				
				$("select[name='subMenu.menuID']").val(menuID);
				$("input[name='subMenu.subMenuOrder']").val(tds.eq(1).text());
				$("input[name='subMenu.subMenuName']").val(tds.eq(2).text());
				$("input[name='subMenu.subMenuLink']").val(tds.eq(3).text());
				
				$("#sbt").val("修改");
				$("#ac_title").text("修改");
				$("#spnan_h").show();
				$("#form1").attr("action","submenu_update");
			});
			
			
			$("[class^=item_]").hide();
			$("[class^=fitem_]").toggle(function(){
				var classval=$(this).attr("class");
				classval=classval.substring(1,classval.length-5);//获取fitem的itemID
				$("tr[class="+classval+"]").show();//把tr等于itemID的显示
				//$(this).a("td").show();
			},function(){
				var classval=$(this).attr("class");
				classval=classval.substring(1,classval.length-5);
				$("[class="+classval+"]").hide();
			});
			//
			
		});
		function returnAdd(){
			$("input[name='subMenu.subMenuID']").remove();
			$("#sbt").val("添加");
			$("#ac_title").text("添加");
			$("#form1").attr("action","submenu_add");
			$("#spnan_h").hide();
			document.getElementById("form1").reset();
		}
	</script>
</head>
<body>
	<div id="content_t">查看二级目录</div>
	<div id="content">
		<table class="tb_top"><div class="font_red"><s:actionmessage/></div>
		<tr><th>一级目录</th><th>排序</th><th>栏目名称</th><th>链接</th><th>修改</th><th>删除</th></tr>
		<s:iterator value="menus" var="menu">
			<tr class="fitem_${menu.menuID}" bgcolor="FFFFFF"><td colspan="8" style="text-align:left;"> ${menu.menuName }</td></tr>
			<s:iterator value="#menu.submenus" var="submenu">
				<tr class="item_${menu.menuID}"><td></td><td>${submenu.subMenuOrder}</td><td>${submenu.subMenuName}</td><td>${submenu.subMenuLink}</td><td><input name="submenuID_h" value="${submenu.subMenuID }" type="hidden"/><input name="menuID_h" value="${menu.menuID }" type="hidden"/><a class="xiugai" href="javascript:ssd();">修改</a></td><td><a href="submenu_delete?subMenu.subMenuID=${submenu.subMenuID}" onClick="if(confirm('删除不可恢复，真的要删除吗？'))return true;return false;">删除</a></td></tr>	
			</s:iterator>
		</s:iterator>
		</table>
		<div id="div_ac">
			 <form id="form1" action="submenu_add" method="post">
            <span id="ac_title">添加</span><span id="ac_msg"><s:actionmessage/></span>
			<table class="tb_item">
				<tr><td>导航名称：</td><td><input id="subMenu.subMenuName" name="subMenu.subMenuName"/></td></tr>
				<tr><td>一级目录：</td><td><select name="subMenu.menuID"><s:iterator value="menus" var="menu"><option value="${menu.menuID}">${menu.menuName}</option></s:iterator></select></td>
				</tr>
				<tr><td>导航链接：</td><td><input name="subMenu.subMenuLink"/></td></tr>
				<tr><td>导航排序：</td><td><input name="subMenu.subMenuOrder"/></td></tr>
				<tr><td colspan="2" cellspace="2"><input id="sbt" type="submit" value="添加"/><span id="spnan_h"><a href="javascript:returnAdd();">返回添加</a></span></td></tr>
			</table>
			</form>
		</div>
	</div>
	<s:debug/>
</body>
</html>