<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
	<link href="css/question.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="content_t">未回复提问</div>
	<div id="content">
		<table class="tb_top">
		<tr><th width="200">标题</th><th width="500">内容</th><th width="400">提问者信息<th width="400">回复内容</th><th width="100">${session.adminGroup.agName}</th></tr>
		<s:iterator value="questionlist" var="question">
		<tr>
        <td>${question.title}</td><td><textarea style="height:100px; width:200px;" type="text" name="answer" readonly="true">${question.content}</textarea></td><td>${question.name}<br/>${question.email}<br/>${question.phone}</td>
        <form id="form1" action="question_update1" method="post">
        <td><textarea style="height:100px; width:200px;" type="text" name="answer"></textarea></td>
					<!-- 隐藏 -->
					<input type="hidden" name="questionID" value="${questionID}"/>
					<input type="hidden" name="title" value="${title}"/>
					<input type="hidden" name="content" value="${content}"/>
					<input type="hidden" name="name" value="${name}"/>
					<input type="hidden" name="email" value="${email}"/>
					<input type="hidden" name="createTime" value="${createTime}"/>
					<input type="hidden" name="isshow" value="1"/>
					<input type="hidden" name="classify" value="${classify}"/>
					<input type="hidden" name="replyperson" value="${replyperson}"/>
					<input type="hidden" name="replytime" value="${replytime}"/>
					<input type="hidden" name="broadcast" value="${broadcast}"/>
					<input type="hidden" name="showorder" value="${showorder}"/>
					<input type="hidden" name="phone" value="${phone}"/>
					
					<input type="hidden" name="settoptime" value="${settoptime}"/>
					
					<td><input style="width:80px" id="sbt" type="submit" value="提交"/></td>
			</form>
        </tr>
		</s:iterator>
		</table>
	</div>
	
</body>
</html>