<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="${basePath}">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>山东大学学生就业与发展信息网</title>
<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" /> 
<link rel="stylesheet" type="text/css" href="css/reset.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/list.css" />
<script type="text/javascript" src="js/common/jquery.js"></script>
<script type="text/javascript" src="js/jump.js"></script>
<!-- 解决ie6不支持透明背景问题-->
<!--[if IE 6]>
<script language="javascript" type="text/javascript" src="js/common/ie6-png.js"></script>
<script language="javascript" type="text/javascript">
DD_belatedPNG.fix("#logo,#jnBrand ul li a,.tab ul li a,#footimg,.rightBlock div em,.rightBlock div em a ,.block_shadow,#zhuanti_img1,#zhuanti_img2,.a_more,#slide_img,.rightBlock ul,.tab_t_li1,tab_t_li2,tab_t_li3");
</script>
<![endif]-->
</head>

<body>
<#include "/header.html" parse="true" encoding="utf-8">
<!--中部内容部分-->
<div id="xiaozhao_middle_content">
   <div class="center">
     <div id="xiaozhao_imag"><img src="images/top_imag.jpg"/></div>
    <div id="xiaozhao_content">
        <div id="xiaozhao_crub">
			<a href="">首页&nbsp;/</a>
			<a href="html/items/item7-1.html">校内招聘&nbsp;/</a>
			<a href="html/subItems/subItem17-1.html">校内招聘&nbsp;/</a>
        </div>
        <h1>校内招聘</h1>
       <span id="recruit_title">新闻标题</span><span id="recruit_adress">招聘地点</span><span id="recruit_time">招聘时间</span><hr />
       
     
        <ul>
			<#list newsList as news>
				<li><a href="html/news/${news.createtime?string('yyyy')}/${news.createtime?string('MM')}/${news.createtime?string('dd')}/news-${news.newsID?c}.html" title="${news.title}"><#if news.settop==1>【置顶】<#if news.bold==1><strong></#if>${news.getTitle(28)}<#if news.bold==1></strong></#if><#else><#if news.bold==1><strong></#if>&nbsp${news.getTitle(30)}<#if news.bold==1></strong></#if></#if></a><span class="recruit_adress">${news.getRecruitSchoolName()}-${news.getRecruitRoomName()}</span><span class="xiaozhao_list_time"><#if news.recrutTime?exists>${news.recrutTime?string('yyyy')}-${news.recrutTime?string('MM')}-${news.recrutTime?string('dd')}&nbsp;${news.recrutTime?string('HH:mm')}<#else>无</#if></span></li>
				<#if news_index==4><#break></#if>
			</#list>
        </ul>
	    <ul>
			<#list newsList as news>
				<#if news_index gt 4 && news_index lt 10>
					<li><a href="html/news/${news.createtime?string('yyyy')}/${news.createtime?string('MM')}/${news.createtime?string('dd')}/news-${news.newsID?c}.html" title="${news.title}"><#if news.settop==1>【置顶】<#if news.bold==1><strong></#if>${news.getTitle(28)}<#if news.bold==1></strong></#if><#else><#if news.bold==1><strong></#if>&nbsp${news.getTitle(30)}<#if news.bold==1></strong></#if></#if></a><span class="recruit_adress">${news.getRecruitSchoolName()}-${news.getRecruitRoomName()}</span><span class="xiaozhao_list_time"><#if news.recrutTime?exists>${news.recrutTime?string('yyyy')}-${news.recrutTime?string('MM')}-${news.recrutTime?string('dd')}&nbsp;${news.recrutTime?string('HH:mm')}<#else>无</#if></span></li>
				</#if>
			</#list>			
     	</ul>
		<ul>		
		<#list newsList as news>
			<#if news_index gt 9 && news_index lt 15>
				<li><a href="html/news/${news.createtime?string('yyyy')}/${news.createtime?string('MM')}/${news.createtime?string('dd')}/news-${news.newsID?c}.html" title="${news.title}"><#if news.settop==1>【置顶】<#if news.bold==1><strong></#if>${news.getTitle(28)}<#if news.bold==1></strong></#if><#else><#if news.bold==1><strong></#if>&nbsp${news.getTitle(30)}<#if news.bold==1></strong></#if></#if></a><span class="recruit_adress">${news.getRecruitSchoolName()}-${news.getRecruitRoomName()}</span><span class="xiaozhao_list_time"><#if news.recrutTime?exists>${news.recrutTime?string('yyyy')}-${news.recrutTime?string('MM')}-${news.recrutTime?string('dd')}&nbsp;${news.recrutTime?string('HH:mm')}<#else>无</#if></span></li>
			</#if>
		</#list>			
     	</ul>
		<ul>		
			<#list newsList as news>
				<#if news_index gt 14 && news_index lt 20>
					<li><a href="html/news/${news.createtime?string('yyyy')}/${news.createtime?string('MM')}/${news.createtime?string('dd')}/news-${news.newsID?c}.html" title="${news.title}"><#if news.settop==1>【置顶】<#if news.bold==1><strong></#if>${news.getTitle(28)}<#if news.bold==1></strong></#if><#else><#if news.bold==1><strong></#if>&nbsp${news.getTitle(30)}<#if news.bold==1></strong></#if></#if></a><span class="recruit_adress">${news.getRecruitSchoolName()}-${news.getRecruitRoomName()}</span><span class="xiaozhao_list_time"><#if news.recrutTime?exists>${news.recrutTime?string('yyyy')}-${news.recrutTime?string('MM')}-${news.recrutTime?string('dd')}&nbsp;${news.recrutTime?string('HH:mm')}<#else>无</#if></span></li>
				</#if>
			</#list>		
     	</ul>
        <div id="xiaozhao_right_bottom">
        			 <span class="#">每页20条&nbsp; 共${pageNum}页&nbsp;</span>|
                     <#if currentPage gt 1>
                     	<a href="html/subItems/subItem17-1.html">首页&nbsp;&nbsp;</a>
                     	<a href="html/subItems/subItem17-${currentPage-1}.html">&nbsp;上一页&nbsp;</a>
                     <#else>
                     	首页&nbsp;&nbsp;
                     	&nbsp;上一页&nbsp;
                     </#if>
                     <#if currentPage lt pageNum>
                     	<a href="html/subItems/subItem17-${currentPage+1}.html">&nbsp;下一页&nbsp;</a>
                     	<a href="html/subItems/subItem17-${pageNum}.html">&nbsp;尾页&nbsp;</a>
                     <#else>
                     	&nbsp;下一页&nbsp;
                     	&nbsp;尾页&nbsp;
                     </#if>
                     &nbsp;页次${currentPage}/${pageNum}&nbsp;|跳转到：
             <input type="text" value="" name="rb_search" id="rb_search"/>
             <input type="button" value="Go" name="rb_button" onclick="jump()" id="rb_but"/>
        </div><!--right_bottom-->

       
     </div>
   <div class="clear"></div>
    </div>
</div>
<#include "/footer2.html" parse="true" encoding="utf-8">
</body>
</html>
