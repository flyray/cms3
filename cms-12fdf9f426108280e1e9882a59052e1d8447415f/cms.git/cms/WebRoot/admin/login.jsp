<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
<title>后台登录</title>

<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" /> 

<link rel="stylesheet" type="text/css" href="css/login.css"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script language="javascript" type="text/javascript" src="js/login.js"></script>
</head>
<body>
 <div id="top">
     </div>
       <div id="con">
       
     
     <form id="login" name="login" action="admin_login" method="post">
        <div class="input">用户名：<input type="text" name="adminName" id="adminname" class="testfield"/>
        <span id="name_tixing" class="tixing"></span></div>
        <div class="input"> 密&nbsp;&nbsp;码：<input type="password" name=adminPassword id="adminpass" class="testfield">
        <span id="psw_tixing" class="tixing"></span></div>
          <div class="input">验证码：<input name="chknumber" type="text" id="chknumber" />
	          <img src="imagevalidate" id="checkCodeImg" /><span id="img_tixing">点击图片更换</span><span id="chekmsg" style="color:red; font-weight:bolder;"></span></div>
	          
        <input type="button" name="enter" id="enter" value="" />
        <input type="button" name="reset" id="reset" value="" />
     </form>
    
   </div>
</div>
</body>
</html>
