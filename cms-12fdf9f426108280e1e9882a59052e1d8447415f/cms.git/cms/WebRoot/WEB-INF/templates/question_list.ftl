<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="${basePath}">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>山东大学就业信息网</title>
<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" /> 
<link rel="stylesheet" type="text/css" href="css/reset.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/list.css" />
<script type="text/javascript" src="js/common/jquery.js"></script>
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
<div id="middle_content">
   <div class="center">
     <div id="imag"><img src="images/top_imag.jpg"/></div>
    <div id="xiaozhao_content">
        <div id="crub">
        </div>
        <h1>就业问答</h1>
        <div id="jixutiwen">如果以下问答未能帮助到你，可选择<a href="question/index.html">继续提问</a></div>
       <span id="recuit_title">就业问题</span><span id="recuit_time">提问时间</span><hr />
       
     
        <ul>
			<#list newsList as news>
				<li><a href="html/question/question_detail-${news.questionID}.html" title="${news.title}" target="_blank">${news.title}</a><span class="list_time">${news.createTime}</span></li>
				<#if news_index==4><#break></#if>
			</#list>
        </ul>
	    <ul>
			<#list newsList as news>
				<#if news_index gt 4 && news_index lt 10>
					<li><a href="html/question/question_detail-${news.questionID}.html" title="${news.title}" target="_blank">${news.title}</a><span class="list_time">${news.createTime}</span></li>
				</#if>
			</#list>			
     	</ul>
		<ul>		
		<#list newsList as news>
			<#if news_index gt 9 && news_index lt 15>
				<li><a href="html/question/question_detail-${news.questionID}.html" title="${news.title}" target="_blank">${news.title}</a><span class="list_time">${news.createTime}</span></li>
			</#if>
		</#list>			
     	</ul>
		<ul>		
			<#list newsList as news>
				<#if news_index gt 14 && news_index lt 20>
					<li><a href="html/question/question_detail-${news.questionID}.html" title="${news.title}" target="_blank">${news.title}</a><span class="list_time">${news.createTime}</span></li>
				</#if>
			</#list>		
     	</ul>
        <div id="right_bottom">
        			 <span class="#">每页20条&nbsp; 共${pageNum}页&nbsp;</span>|
                     <#if currentPage gt 1>
                     	<a href="html/question/question_list-1.html">首页&nbsp;&nbsp;</a>
                     	<a href="html/question/question_list-${currentPage-1}.html">&nbsp;上一页&nbsp;</a>
                     <#else>
                     	首页&nbsp;&nbsp;
                     	&nbsp;上一页&nbsp;
                     </#if>
                     <#if currentPage lt pageNum>
                     	<a href="html/question/question_list-${currentPage+1}.html">&nbsp;下一页&nbsp;</a>
                     	<a href="html/question/question_list-${pageNum}.html">&nbsp;尾页&nbsp;</a>
                     <#else>
                     	&nbsp;下一页&nbsp;
                     	&nbsp;尾页&nbsp;
                     </#if>
                     &nbsp;页次${currentPage}/${pageNum}&nbsp;|跳转到：
             <input type="text" value="" name="rb_search" id="rb_search"/>
             <input type="button" value="Go" name="rb_button" id="rb_but"/>
        </div><!--right_bottom-->

       
     </div>
   <div class="clear"></div>
    </div>
</div>
<#include "/footer2.html" parse="true" encoding="utf-8">
</body>
</html>
