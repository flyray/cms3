<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>My JSP 'user_findAll.jsp' starting page</title>
  	<link href="css/common.css" rel="stylesheet" type="text/css" />
	<link href="css/user.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#search").click(function(){
				$.ajax({
					type:'get',
					url:'user_ajaxFindByNickname',
					datatype:'json',
					data:'nickname='+$("input[name='nickname']"),
					success:function(result){
						alert(result);
						var json = eval('(' + result + ')');
						$("input[name='userID']"),val(json.userID);
						$("input[name='username']"),val(json.username);
						$("input[name='nickname']"),val(json.nickname);
						$("input[name='sex']"),val(json.sex);
						$("input[name='grade']"),val(json.grade);
						$("input[name='score']"),val(json.score);
						$("input[name='email']"),val(json.email);
						$("input[name='college']"),val(json.college);
						$("input[name='tel']"),val(json.email);
					}
				});
			});
		});
	</script>
  </head>
  
  <body>
    <div id="content_t">搜索用户</div>
	<div id="content">
		<table class="tb_top">
		<tr><td>用户昵称：<input name="nickname"/> <input type="button" id="search" value="搜索" width="20"/></td></tr>
		</table>
		<div id="div_ac">
			<form id="form1" action="item_add" method="post">
            <span id="ac_title">添加</span><span id="ac_msg"><s:actionmessage/></span>
			<table class="tb_item">
				<input type="hidden" name="userID"/>
				<tr><td>用户帐号：</td><td><input id="username" name="username"/></td></tr>
				<tr><td>用户昵称：</td><td><input name="nickname"/></td></tr>
				<tr><td>性别：</td><td><input name="sex"/></td></tr>
				<tr><td>年级：</td><td><input name="grade"/></td></tr>
				<tr><td>学院：</td><td><select name="college"><option value="0">否</optipn><option value="1">是</optipn></select></td></tr>
				<tr><td>电话：</td><td><input name=tel"/></td></tr>
				<tr><td>邮箱：</td><td><select name="email"></td></tr>
				<tr><td>积分：</td><td><select name="score"></td></tr>
				<tr><td colspan="2" cellspace="2"><input id="sbt" type="submit" value="添加"/><span id="spnan_h"><a href="javascript:returnAdd();">返回添加</a></span></td></tr>
			</table>
			</form>
		</div>
	</div>
  </body>
</html>
