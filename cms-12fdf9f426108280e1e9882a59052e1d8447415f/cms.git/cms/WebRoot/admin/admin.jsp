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
		function adminFind(adminID){
			$.ajax({
				type:'GET',
				url:'admin_find',
				proccess:true,
				datatype:'json',
				data:'adminID='+adminID,
				success:function(result){
					var json = eval('(' + result + ')');
					var ipt_adminID="<input type='hidden' name='adminID'/>";
					if($("input[name='adminID']").length<=0){$("#form1").append(ipt_adminID);}
					$("input[name='adminID']").val(adminID);
					$("input[name='adminName']").val(json.adminName);
					$("input[name='adminPassword']").val(json.password);
					$("input[name='phoneNum']").val(json.phoneNum);
					$("input[name='email']").val(json.email);
					document.getElementById("sex").value=json.sex;
					document.getElementById("agid").value=json.agid;
					$("textarea[name='remarks']").val(json.remarks);
					$("input[name='IDcard']").val(json.IDcard);
					$("select[name='pope']").val(json.pope);
					$("#sbt").val("修改");
					$("#ac_title").text("修改");
					$("#spnan_h").show();
					$("#password").hide();
					$("#form1").attr("action","admin_update");
				}
				
			});
		}
		function returnAdd(){
			$("input[name='adminID']").remove();
			$("#sbt").val("添加");
			$("#ac_title").text("添加");
			$("#form1").attr("action","admin_add");
			$("#spnan_h").hide();
			$("#password").show();
			document.getElementById("form1").reset();
		}
	</script>
</head>
<body>
	<div id="content_t">查看一级导航</div>
	<div id="content">
		<table class="tb_top">
		<tr><th>管理员id</th><th>管理员名称</th><th>组别</th><th>性别</th><th>电话</th><th>邮箱</th><th>备注</th><th>身份证号</th><th>修改</th><th>删除</th></tr>
		<s:iterator value="list" var="admin">
		<tr><td>${admin.adminID}</td><td>${admin.adminName}</td><td>${admin.adminGroup.agName}</td><td>${admin.sex}</td><td>${admin.phoneNum}</td><td>${admin.email}</td><td title="${admin.remarks }">${admin.remarks}</td><td>${admin.IDcard}</td><td><a href="javascript:adminFind(${admin.adminID})">修改</a></td><td><a href="admin_delete?adminID=${admin.adminID}" onClick="if(confirm('删除不可恢复，真的要删除吗？'))return true;return false;">删除</a></td></tr>	
		</s:iterator>
		</table>
		<div style="margin-top:10px;">
			<form id="form2" action="admin_queryByAdminName" method="post">
            <span>查询</span>
			<table class="tb_item">
				<tr><td>管理员名称：</td><td><input name="adminName"/></td></tr>
				<tr><td colspan="2" cellspace="2"><input type="submit" value="查询"/></td></tr>
			</table>
			<s:actionmessage/>
			</form>
		</div>
		
		<div id="div_ac">
			<form id="form1" action="admin_add" method="post">
            <span id="ac_title">添加</span><span id="ac_msg"><s:actionmessage/></span>
			<table class="tb_item">
				<tr><td>管理员名称：</td><td><input id="adminName" name="adminName"/></td></tr>
				<tr><td>组别：</td><td>
					<select name="agid" id="agid">
						<s:iterator value="aglist" var="ag">
							<option value="${ag.gid }">${ag.agName }</option>
						</s:iterator>
					</select>
				</td></tr>
				<tr id="password"><td>密码：</td><td><input name="adminPassword"/></td></tr>
				<tr><td>性别：</td><td><select name="sex" id="sex"><option value="男">男</option><option value="女">女</option></select></td></tr>
				<tr><td>电话：</td><td><input name="phoneNum"/></td></tr>
				<tr><td>邮箱：</td><td><input name="email"/></td></tr>
				<tr><td>身份证号：</td><td><input name="IDcard"/></td></tr>
				<tr><td>备注：</td><td><textarea name="remarks" cols="20" rows="3" ></textarea></td></tr>
				<tr><td colspan="2" cellspace="2"><input id="sbt" type="submit" value="添加"/><span id="spnan_h"><a href="javascript:returnAdd();">返回添加</a></span></td></tr>
			</table>
			<s:actionmessage/>
			</form>
		</div>
		
	</div>
	
</body>
</html>