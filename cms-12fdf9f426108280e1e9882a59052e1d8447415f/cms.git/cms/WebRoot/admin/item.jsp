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
		function itemFind(itemID){
			$.ajax({
				type:'GET',
				url:'item_findAjax',
				proccess:true,
				datatype:'json',
				data:'itemID='+itemID,
				success:function(result){
					var json = eval('(' + result + ')');
					var ipt_itemID="<input type='hidden' name='itemID'/>";
					if($("input[name='itemID']").length<=0){$("#form1").append(ipt_itemID);}
					$("input[name='itemID']").val(itemID);
					$("input[name='itemName']").val(json.itemName);
					$("input[name='order']").val(json.order);
					$("#sbt").val("修改");
					$("#ac_title").text("修改");
					$("#spnan_h").show();
					$("#form1").attr("action","item_update");
				}
				
			});
		}
		function returnAdd(){
			$("input[name='itemID']").remove();
			$("#sbt").val("添加");
			$("#ac_title").text("添加");
			$("#form1").attr("action","item_add");
			$("#spnan_h").hide();
			document.getElementById("form1").reset();
		}
	</script>
</head>
<body>
	<div id="content_t">查看一级栏目</div>
	<div id="content">
		<table class="tb_top">
		<tr><th>排序</th><th>栏目名称</th><th>链接</th><th>修改</th><th>删除</th></tr>
		<s:iterator value="list" var="item">
		<tr><td>${item.order}</td><td>${item.itemName}</td><td><a href="javascript:itemFind(${item.itemID})">修改</a></td><td><a href="item_delete?itemID=${item.itemID}" onClick="if(confirm('删除不可恢复，真的要删除吗？'))return true;return false;">删除</a></td></tr>	
		</s:iterator>
		</table>
		<div id="div_ac">
			<form id="form1" action="item_add" method="post">
            <span id="ac_title">添加</span><span id="ac_msg"><s:actionmessage/></span>
			<table class="tb_item">
				<tr><td>栏目名称：</td><td><input id="itemName" name="itemName"/></td></tr>
				<tr><td>栏目排序：</td><td><input name="order"/></td></tr>
				<tr><td colspan="2" cellspace="2"><input id="sbt" type="submit" value="添加"/><span id="spnan_h"><a href="javascript:returnAdd();">返回添加</a></span></td></tr>
			</table>
			</form>
		</div>
	</div>
	
</body>
</html>