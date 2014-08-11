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
<div id="middle_content">
   <div class="center">
     <div id="imag"><img src="images/top_imag.jpg" /></div>
     <!--左半部分-->
     <div id="middle_left">
   			 <span>${itemName}</span>
             <ul id="left_list">
              	<#list subItemList as subItem>
    				<li><a href="html/subItems/subItem${subItem.subItemID?c}-1.html">${subItem.subItemName}</a></li>
    			</#list>
             </ul>
			<!--微信部分--> <a href="http://job.sdu.edu.cn/html/news/2014/02/25/news-3655.html"><img src="images/weixin.jpg" style="margin-top:280px" /></a>
       </div>
       <!--左半部分结束-->
       <!--右半部分-->
     <div id="middle_right">
          <div id="crub">
            <a href="">首页&nbsp;/</a>
            <a href="html/items/item${itemID?c}-1.html">${itemName}&nbsp;/</a>
          </div>
          <h1>${itemName}</h1>
    <div id="right_list_content">
       <div id="right_list">
           <ul>
           		<#list newsList as news>
           			<#if news.islink==1>
           				<li><a href="${news.link}" title="${news.title}" target="_blank"><#if news.settop==1>【置顶】<#if news.bold==1><strong></#if>${news.getTitle(28)}<#if news.bold==1></strong></#if><#else><#if news.bold==1><strong></#if>&nbsp${news.getTitle(30)}<#if news.bold==1></strong></#if></#if></a><span class="list_time">${news.createtime?string('yyyy')}-${news.createtime?string('MM')}-${news.createtime?string('dd')}&nbsp;${news.createtime?string('HH:mm:ss')}</span></li>
           			<#else>
           				<li><a href="html/news/${news.createtime?string('yyyy')}/${news.createtime?string('MM')}/${news.createtime?string('dd')}/news-${news.newsID?c}.html" title="${news.title}" target="_blank"><#if news.settop==1>【置顶】<#if news.bold==1><strong></#if>${news.getTitle(28)}<#if news.bold==1></strong></#if><#else><#if news.bold==1><strong></#if>&nbsp${news.getTitle(30)}<#if news.bold==1></strong></#if></#if></a><span class="list_time">${news.createtime?string('yyyy')}-${news.createtime?string('MM')}-${news.createtime?string('dd')}&nbsp;${news.createtime?string('HH:mm:ss')}</span></li>
           			</#if>
						<#if news_index==4><#break></#if>
				</#list>
     	   </ul>
     	</div>
		<div id="right_list">
           <ul>
           		<#list newsList as news>
					<#if news_index gt 4 && news_index lt 10>
						<#if news.islink==1>
           					<li><a href="${news.link}" title="${news.title}" target="_blank"><#if news.settop==1>【置顶】<#if news.bold==1><strong></#if>${news.getTitle(28)}<#if news.bold==1></strong></#if><#else><#if news.bold==1><strong></#if>&nbsp${news.getTitle(30)}<#if news.bold==1></strong></#if></#if></a><span class="list_time">${news.createtime?string('yyyy')}-${news.createtime?string('MM')}-${news.createtime?string('dd')}&nbsp;${news.createtime?string('HH:mm:ss')}</span></li>
           				<#else>
           					<li><a href="html/news/${news.createtime?string('yyyy')}/${news.createtime?string('MM')}/${news.createtime?string('dd')}/news-${news.newsID?c}.html" title="${news.title}" target="_blank"><#if news.settop==1>【置顶】<#if news.bold==1><strong></#if>${news.getTitle(28)}<#if news.bold==1></strong></#if><#else><#if news.bold==1><strong></#if>&nbsp${news.getTitle(30)}<#if news.bold==1></strong></#if></#if></a><span class="list_time">${news.createtime?string('yyyy')}-${news.createtime?string('MM')}-${news.createtime?string('dd')}&nbsp;${news.createtime?string('HH:mm:ss')}</span></li>
           				</#if>
					</#if>
				</#list>			
     	   </ul>
     	</div>
		<div id="right_list">
           <ul>		
           		<#list newsList as news>
					<#if news_index gt 9 && news_index lt 15>
						<#if news.islink==1>
           					<li><a href="${news.link}" title="${news.title} target="_blank""><#if news.settop==1>【置顶】<#if news.bold==1><strong></#if>${news.getTitle(28)}<#if news.bold==1></strong></#if><#else><#if news.bold==1><strong></#if>&nbsp${news.getTitle(30)}<#if news.bold==1></strong></#if></#if></a><span class="list_time">${news.createtime?string('yyyy')}-${news.createtime?string('MM')}-${news.createtime?string('dd')}&nbsp;${news.createtime?string('HH:mm:ss')}</span></li>
           				<#else>
           					<li><a href="html/news/${news.createtime?string('yyyy')}/${news.createtime?string('MM')}/${news.createtime?string('dd')}/news-${news.newsID?c}.html" title="${news.title}" target="_blank"><#if news.settop==1>【置顶】<#if news.bold==1><strong></#if>${news.getTitle(28)}<#if news.bold==1></strong></#if><#else><#if news.bold==1><strong></#if>&nbsp${news.getTitle(30)}<#if news.bold==1></strong></#if></#if></a><span class="list_time">${news.createtime?string('yyyy')}-${news.createtime?string('MM')}-${news.createtime?string('dd')}&nbsp;${news.createtime?string('HH:mm:ss')}</span></li>
           				</#if>
					</#if>
				</#list>			
     	   </ul>
     	</div>
		<div id="right_list">
           <ul>		
           		<#list newsList as news>
					<#if news_index gt 14 && news_index lt 20>
						<#if news.islink==1>
           					<li><a href="${news.link}" title="${news.title}" target="_blank"><#if news.settop==1>【置顶】<#if news.bold==1><strong></#if>${news.getTitle(28)}<#if news.bold==1></strong></#if><#else><#if news.bold==1><strong></#if>&nbsp${news.getTitle(30)}<#if news.bold==1></strong></#if></#if></a><span class="list_time">${news.createtime?string('yyyy')}-${news.createtime?string('MM')}-${news.createtime?string('dd')}&nbsp;${news.createtime?string('HH:mm:ss')}</span></li>
           				<#else>
           					<li><a href="html/news/${news.createtime?string('yyyy')}/${news.createtime?string('MM')}/${news.createtime?string('dd')}/news-${news.newsID?c}.html" title="${news.title}" target="_blank"><#if news.settop==1>【置顶】<#if news.bold==1><strong></#if>${news.getTitle(28)}<#if news.bold==1></strong></#if><#else><#if news.bold==1><strong></#if>&nbsp${news.getTitle(30)}<#if news.bold==1></strong></#if></#if></a><span class="list_time">${news.createtime?string('yyyy')}-${news.createtime?string('MM')}-${news.createtime?string('dd')}&nbsp;${news.createtime?string('HH:mm:ss')}</span></li>
           				</#if>
					</#if>
				</#list>		
     	   </ul>
     	</div>	
		</div>
            <div id="right_bottom">
                     <span class="#">每页20条&nbsp; 共${pageNum}页&nbsp;</span>|
                     <#if currentPage gt 1>
                     	<a href="html/items/item${itemID?c}-1.html">首页&nbsp;&nbsp;</a>
                     	<a href="html/items/item${itemID?c}-${currentPage-1}.html">&nbsp;上一页&nbsp;</a>
                     <#else>
                     	首页&nbsp;&nbsp;
                     	&nbsp;上一页&nbsp;
                     </#if>
                     <#if currentPage lt pageNum>
                     	<a href="html/items/item${itemID?c}-${currentPage+1}.html">&nbsp;下一页&nbsp;</a>
                     	<a href="html/items/item${itemID?c}-${pageNum}.html">&nbsp;尾页&nbsp;</a>
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
<!--02.content 结束--------------------------------------------------------->
<#include "/footer2.html" parse="true" encoding="utf-8">
   
 </body>
</html>
