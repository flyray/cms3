<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
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
		
		function recruitRoomFind(itemID){
			
			$.ajax({
				type:'GET',
				url:'recruitRoom_findAjax',
				proccess:true,
				datatype:'json',
				data:'recruitRoomID='+itemID,
				success:function(result){
					var json = eval('(' + result + ')');
					$("input[name='recruitRoomName']").val(json.recruitRoomName);
					$("select[name='recruitRoomBelong']").val(json.recruitSchoolNum);
			
					$("input[name='recruitRoomID']").val(json.recruitRoomID);
					$("#sbt").val("修改");
					$("#ac_title").text("修改");
					$("#spnan_h").show();
					$("#form1").attr("action","recruitRoom_update");
				}
				
			});
		}
		function returnAdd(){
			$("input[name='itemID']").remove();
			$("#sbt").val("添加");
			$("#ac_title").text("添加");
			$("#form1").attr("action","recruitRoom_add");
			$("#spnan_h").hide();
			document.getElementById("form1").reset();
		}
		
		
		
	</script>
</head>
<body>
	<div id="content_t">招聘教室管理</div>
	<div id="content">	
		<table class="tb_top">
		<tr><th>排序</th><th>教室名称</th><th>所属校区</th><th>修改</th><th>状态</th></tr>
		<s:iterator value="recruitRoom.recruitRoomList" var="id">
		<tr>
			<td>${id.recruitRoomID}</td>
			<td>${id.recruitRoomName}</td>
			<td>
				<s:if test="#id.recruitRoomBelong==1">中心</s:if>
				<s:if test="#id.recruitRoomBelong==2">软件园</s:if>
				<s:if test="#id.recruitRoomBelong==3">洪家楼</s:if>
				<s:if test="#id.recruitRoomBelong==4">趵突泉</s:if>
				<s:if test="#id.recruitRoomBelong==5">千佛山</s:if>
				<s:if test="#id.recruitRoomBelong==6">兴隆山</s:if>		
			</td>
			<td><a href="javascript:recruitRoomFind(${id.recruitRoomID})">修改</a></td>
			<s:if test="#id.recruitRoomState==1">
				<td><a href="recruitRoom_changeState?recruitRoomID=${id.recruitRoomID}" onClick="if(confirm('确定要废弃教室吗？'))return true;return false;">正在使用</a></td> 
			</s:if>
			<s:if test="#id.recruitRoomState==0">
				<td><a href="recruitRoom_changeState?recruitRoomID=${id.recruitRoomID}" onClick="if(confirm('确定要启用该教室吗？'))return true;return false;">已废弃</a></td>
			</s:if>
		</tr>	
		</s:iterator>
		</table>
		<div id="div_ac">
			<form id="form1" action="recruitRoom_add" method="post">
            <span id="ac_title">添加</span><span id="ac_msg"><s:actionmessage/></span>
			<table class="tb_item">
				<tr><td>教室名称：</td><td><input id="itemName" name="recruitRoomName" required="required" /></td></tr>
				<tr><td>所属校区：</td><td>
				<select name="recruitRoomBelong">
				<option>请选择</option>
				<option value="1">中心</option>
				<option value="2">软件园</option>
				<option value="3">洪家楼</option>
				<option value="4">趵突泉</option>
				<option value="5">千佛山</option>
				<option value="6">兴隆山</option>
				
				</select></td></tr>
				<input name="recruitRoomID" type="hidden"/></td></tr>
				<tr><td colspan="2" cellspace="2"><input id="sbt" type="submit" value="添加"/><span id="spnan_h"><a href="javascript:returnAdd();">返回添加</a></span></td></tr>
			</table>
			</form>
		</div>	
	</div>
	
</body>
</html>