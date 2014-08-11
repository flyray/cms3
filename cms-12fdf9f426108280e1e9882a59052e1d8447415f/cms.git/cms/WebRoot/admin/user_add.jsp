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
<form name="form1" method="post" action="user_add.action">
		<s:actionmessage/>
		<s:actionerror/>
    	<p>用户名：<input type="text" name="username" id="username"></p>
   	  	<p>昵&nbsp;&nbsp;称：<input type="text" name="nickname" id="nickname"></p>
		<p>密&nbsp;&nbsp;码：<input type="text" name="password" id="password"></p>
   	    <p>性&nbsp;&nbsp;别：<select name="sex" id="sex"><option value="1">男</option><option value="0">女</option></select>
    	</p>
		<p>邮&nbsp;&nbsp;箱：<input type="text" name="email" id="email"></p>
  	 	<p>生&nbsp;&nbsp;日：<input type="text" name="birthday" id="birthday"></p>
  	 	<p>年&nbsp;&nbsp;级：<select name="grade">
					  	 	<option value="12009">2009级本科生</option>
					  	 	<option value="12010">2010级本科生</option>
					  	 	<option value="12011">2011级本科生</option>
					  	 	<option value="12012">2012级本科生</option>
					  	 	<option value="12013">2013级本科生</option>
					  	 	<option value="22009">2009级研究生</option>
					  	 	<option value="22010">2010级研究生</option>
					  	 	<option value="22011">2011级研究生</option>
					  	 	<option value="22012">2012级本科生</option>
					  	 	<option value="3">已毕业</option>
					  	 	<option value="4">老师</option>
					  	 	</select></p>
		<p>学&nbsp;&nbsp;院：<select name="college">
					  	 	<option value="1">计算机学院</option>
					  	 	<option value="2">软件学院</option>
					  	 	<option value="0">其他学院</option>
					  	 	</select>
					  	 	</p>
		<p>擅长技术：<input type="text" name="goodat" id="goodat"></p>
		<p>兴趣爱好：<input type="text" name="hobby" id="hobby"></p>
		<p>保密隐私：公开<input class="nostyle" name="serect" type="radio" value="0" checked>隐藏<input class="nostyle" name="serect" type="radio" value="1"></p>
    	<p><input class="submit_b" name="submint" type="submit" value="添加">
        <input class="submit_b" name="reset" type="reset" value="重置"/>
        </p>
    </form>
  </div>
    
    <br>
  </body>
</html>
