<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'userAdd.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/admincommon.css" rel="stylesheet" type="text/css">

  </head>
  
  <body>
   <div class="center">
   <form name="form1" method="post" action="user_findByNickname">
   		<p>请输入你要查询的用户昵称：<input name="nickname"/>
   		  <input class="submit_b" type="submit" name="button" id="button" value="提交">
   		</p>
   </form>
   <s:actionerror/>
   <s:actionmessage/>
   </div>
   <br/>
   ${nickname }
   TTT
   ${age }
   TTTT 
   ${username}
   ___________<br/>
   用户ID:<s:property value="userID"/><br/>
   用户名：<s:property value="username"/><br/>
   昵称：<s:property value="nickname"/><br/>
   爱好：<s:property value="hobby"/><br/>
   
   <s:debug></s:debug>
  </body>
</html>
