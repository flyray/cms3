<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>山东大学就业信息网后台管理系统</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/chili-1.7.pack.js"></script>
<script type="text/javascript" src="js/jquery.easing.js"></script>
<script type="text/javascript" src="js/jquery.dimensions.js"></script>
<script type="text/javascript" src="js/jquery.accordion.js"></script>
<script language="javascript">
	jQuery().ready(function(){
		jQuery('#navigation').accordion({
			header: '.head',
			navigation1: true, 
			event: 'click',
			fillSpace: true,
			animated: 'bounceslide'
		});
	});
</script>
<style type="text/css">
<!--
body {
	margin:0px;
	padding:0px;
	font-size: 12px;
}
#navigation {
	margin:0px;
	padding:0px;
	width:147px;
}
#navigation a.head {
	cursor:pointer;
	background:url(images/main_34.gif) no-repeat scroll;
	display:block;
	font-weight:bold;
	margin:0px;
	padding:5px 0 5px;
	text-align:center;
	font-size:12px;
	text-decoration:none;
}
#navigation ul {
	border-width:0px;
	margin:0px;
	padding:0px;
	text-indent:0px;
}
#navigation li {
	list-style:none; display:inline;
}
#navigation li li a {
	display:block;
	font-size:12px;
	text-decoration: none;
	text-align:center;
	padding:3px;
}
#navigation li li a:hover {
	background:url(images/tab_bg.gif) repeat-x;
		border:solid 1px #adb9c2;
}
-->
</style>
</head>
<body>
<!-- 后台登录验证文件 -->
	<jsp:include page="yanzheng.jsp" /> 
<div  style="height:100%;">
  <ul id="navigation">
    
    <li> <a class="head">新闻管理</a>
      <ul>
        <li><a href="news_findAll" target="rightFrame">所有新闻</a></li>
        
        <s:if test="#session.adminGroup.agName!='游客组'">
        	<li><a href="news_add.jsp" target="rightFrame">添加新闻</a></li>
			<li><a href="recruitRoom_findAll" target="rightFrame">教室管理</a></li>
			<li><a href="static_onekey" target="rightFrame">一键静态化</a></li>
		</s:if>
        
        <li><a href="news_advancedSearch_back.jsp" target="rightFrame">新闻搜索</a>
      </ul>
    </li>
    <s:if test="#session.adminGroup.agName!='游客组'">
     <li> <a class="head">静态化管理</a>
      <ul>
        <li><a href="static_createIndex" target="rightFrame">生成首页</a></li>
		<s:if test="#session.adminGroup.agName=='admin'">
	        <li><a href="static_createAllNews?ifupdate=0" target="rightFrame">生成所有新闻页</a></li>
	        <li><a href="static_createHeaderAndFooter" target="rightFrame">生成头部及底部</a></li>
        <li><a href="static_createAllNews?ifupdate=1" target="rightFrame">更新新闻页</a></li>
        </s:if>        
      </ul>
    </li>
    <li> <a class="head">提问管理</a>
      <ul>
        <li>
        	<s:if test="#session.adminGroup.agName=='就业管理部'">
	        	<a href="question_findAll1?fenlei=1" target="rightFrame">所有提问</a>
	        </s:if>
	        <s:if test="#session.adminGroup.agName=='就业指导部'">
	       		<a href="question_findAll1?fenlei=2" target="rightFrame">所有提问</a>
	        </s:if>
	        <s:if test="#session.adminGroup.agName=='就业市场部'">
	       		<a href="question_findAll1?fenlei=3" target="rightFrame">所有提问</a>
	        </s:if>
	        <s:if test="#session.adminGroup.agName=='就业信息团队'">
	        	<a href="question_findAll1?fenlei=4" target="rightFrame">所有提问</a>
	        </s:if>
	        <s:if test="#session.adminGroup.agName=='admin'">
	        	<a href="question_findAll" target="rightFrame">所有提问</a>
	        </s:if>
        </li>
        <li>
	        <s:if test="#session.adminGroup.agName=='就业管理部'">
	        	<a href="question_findAll1Not?fenlei=1" target="rightFrame">未回复提问</a>
	        </s:if>
	        <s:if test="#session.adminGroup.agName=='就业指导部'">
	       		<a href="question_findAll1Not?fenlei=2" target="rightFrame">未回复提问</a>
	        </s:if>
	        <s:if test="#session.adminGroup.agName=='就业市场部'">
	       		<a href="question_findAll1Not?fenlei=3" target="rightFrame">未回复提问</a>
	        </s:if>
	        <s:if test="#session.adminGroup.agName=='就业信息团队'">
	        	<a href="question_findAll1Not?fenlei=4" target="rightFrame">未回复提问</a>
	        </s:if>
	        <s:if test="#session.adminGroup.agName=='admin'">
	        	<a href="question_findAllNotAnswer" target="rightFrame">未回复提问</a>
	        </s:if>
        </li>
        <li><a href="static_createQuestion" target="rightFrame">提问静态化</a></li>
      </ul>
    </li>
    </s:if>
	<s:if test="#session.adminGroup.agName=='admin'||#session.adminGroup.agName=='高级管理员'||#session.adminGroup.agName=='高级编辑'">
    <li> <a class="head">栏目管理</a>
      <ul>
        <li><a href="item_findAll" target="rightFrame">一级栏目</a></li>
        <li><a href="subItem_findAll" target="rightFrame">二级栏目</a></li>
      </ul>
    </li>
    <li> <a class="head">导航管理</a>
      <ul>
        <li><a href="menu_findAll" target="rightFrame">一级导航</a></li>
        <li><a href="submenu_findMenuAll" target="rightFrame">二级导航</a></li>
      </ul>
    </li>
	</s:if>
	<s:if test="#session.adminGroup.agName=='admin'||#session.adminGroup.agName=='高级管理员'">
    <li> <a class="head">用户管理</a>
      <ul>
        <li><a href="admin_findAll" target="rightFrame">用户列表</a></li>
        <li><a href="adminGroup_findAll" target="rightFrame">用户分组</a></li>
      </ul>
    </li>
	</s:if>
	<s:if test="#session.adminGroup.agName=='admin'||#session.adminGroup.agName=='高级管理员'||#session.adminGroup.agName=='高级编辑'">
	    <li><a class="head">统计管理</a>
    		<ul>

    			<li><a href="news_checkNewsAndPosition" target="rightFrame">发稿统计</a></li>
    		</ul>
    	</li>
    </s:if>
	<s:if test="#session.adminGroup.agName=='admin'||#session.adminGroup.agName=='高级管理员'">
     <li> <a class="head">日志管理</a>
      <ul>
        <li><a href="log_findAll" target="rightFrame">日志列表</a></li>
        <li><a href="log_adminName.jsp" target="rightFrame">搜索指定用户日志</a></li>
        <li><a href="log_news.jsp" target="rightFrame">搜索指定新闻日志</a></li>
      </ul>
    </li>
    </s:if>
   <!--  <li> <a class="head">版本信息</a>
      <ul>
        <li><a href="http://user.qzone.qq.com/463068132/infocenter" target="_blank">by 益达网络</a></li>
      </ul>
    </li> -->
  </ul>
</div>
	<!-- 后台登录验证文件 -->
	<jsp:include page="yanzheng.jsp" /> 
</body>
</html>
