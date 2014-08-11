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
			$("[class^=item_]").hide();
			$("[class^=fitem_]").toggle(function(){
				var classval=$(this).attr("class");
				classval=classval.substring(1,classval.length-5);
				$("tr[class="+classval+"]").show();
				$(this).a("td").show();
			},function(){
				var classval=$(this).attr("class");
				classval=classval.substring(1,classval.length-5);
				$("[class="+classval+"]").hide();
			});
		});
		function itemFind(subItemID){
			$.ajax({
				type:'GET',
				url:'subItem_findAjax',
				proccess:true,
				datatype:'json',
				data:'subItemID='+subItemID,
				success:function(result){
					var json = eval('(' + result + ')');
					var ipt_subItemID="<input type='hidden' name='subItemID'/>";
					if($("input[name='subItemID']").length<=0){$("#form1").append(ipt_subItemID);}
					$("input[name='subItemID']").val(subItemID);
					$("input[name='subItemName']").val(json.subItemName);
					$("input[name='order']").val(json.order);
					$("select[name='itemID']").val(json.itemID);
					$("#sbt").val("修改");
					$("#ac_title").text("修改");
					$("#spnan_h").show();
					$("#form1").attr("action","subItem_update");
				}
				
			});
		}
		function returnAdd(){
			$("input[name='subItemID']").remove();
			$("#sbt").val("添加");
			$("#ac_title").text("添加");
			$("#form1").attr("action","subItem_add");
			$("#spnan_h").hide();
			document.getElementById("form1").reset();
		}
	</script>
</head>
<body>
	<div id="content_t">查看二级目录</div>
	<div id="content">
		<table class="tb_top">
		<tr><th>一级目录</th><th>排序</th><th>栏目名称</th><th>链接</th><th>修改</th><th>删除</th></tr>
		<s:iterator value="map" var="oneItem">
			<tr class="fitem_${oneItem.key.itemID}" bgcolor="FFFFFF"><td colspan="8" style="text-align:left;"> ${oneItem.key.itemName }</td></tr>
			<s:iterator value="#attr.oneItem.value" var="subItem">
				<tr class="item_${oneItem.key.itemID}"><td></td><td>${subItem.order}</td><td>${subItem.subItemName}</td><td><a href="javascript:itemFind(${subItem.subItemID})">修改</a></td><td><a href="subItem_delete?subItemID=${subItem.subItemID}" onClick="if(confirm('删除不可恢复，真的要删除吗？'))return true;return false;">删除</a></td></tr>	
			</s:iterator>
		</s:iterator>
		</table>
		<div id="div_ac">
			<form id="form1" action="subItem_add" method="post">
            <span id="ac_title">添加</span><span id="ac_msg"><s:actionmessage/></span>
			<table class="tb_item">
				<tr><td>栏目名称：</td><td><input id="subItemName" name="subItemName"/></td></tr>
				<tr><td>一级目录：</td><td><s:select name="itemID" list="%{items }" listValue="itemName" listKey="itemID"></s:select></td></tr>
				<tr><td>栏目排序：</td><td><input name="order"/></td></tr>
				<tr><td colspan="2" cellspace="2"><input id="sbt" type="submit" value="添加"/><span id="spnan_h"><a href="javascript:returnAdd();">返回添加</a></span></td></tr>
			</table>
			</form>
		</div>
	</div>
	<s:debug></s:debug>
</body>
</html>