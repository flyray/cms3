<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="${basePath}">
<title>${news.title}-----山东大学就业信息网</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name=description content="${news.title}">
<meta property="og:title" content="${news.title}" />
<meta property="og:description" content="${news.title}" />
<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" /> 
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/reset.css" />
<script type="text/javascript" src="js/common/jquery.js"></script>
</head>
<!--添加新闻,修改新闻-->
<body>
<#include "/header.html" parse="true" encoding="utf-8">
<!--中部内容部分-->
<div id="middle_content">
   <div class="center">
     <div id="imag"><img src="images/top_imag.jpg"/></div>
     <!--左半部分-->
     <div id="middle_left">
   			 <span>${item.itemName}</span>
             <ul id="left_list">
             	 <#list subItemList as subItem>
    				<li><a href="html/subItems/subItem${subItem.subItemID}-1.html">${subItem.subItemName}</a></li>
    			 </#list>
             </ul>
       </div>
       <!--左半部分结束-->
       <div id="middle_right">
       <div id="crub">
            <a href="#">首页 / </a> 
            <a href="html/items/item${item.itemID}-1.html">${item.itemName}/ </a>
            <a href="html/subItems/subItem${subItem.subItemID}-1.html">${subItem.subItemName}/ </a> 
       </div>
        <div id="arc_til">
               	<h1>${news.title}</h1>
                <p id="r_let">${news.createtime?string('yyyy-MM-dd HH:mm')}&nbsp;&nbsp;		
				<#if news.source!="">				
					来源：${news.source}&nbsp;&nbsp;
				</#if>
                作者：${news.author}&nbsp;&nbsp;
				编辑：${news.editor.adminName}	       
                </p>
        </div>
       
       <div id="arc_cont">
       			<#if recruitSchoolName!="取消"><!--这是数据库中默认的在不选择招聘 时存放一个空字符串-->
                	<div class="cont_time_position">地点：${news.recruitSchoolName}&nbsp;&nbsp;${news.recruitRoomName}&nbsp;&nbsp;&nbsp
                	</div><br/>
                	<div class="cont_time_position">开始：${news.recrutTime?string('yyyy-MM-dd HH:mm')}
                	</div><br/>
					<#if news.recruitTimeEnd?exists>
						<div class="cont_time_position">结束：${news.recruitTimeEnd?string('yyyy-MM-dd HH:mm')}
						</div><br/>
					</#if>
            	 </#if>
                ${news.content}
         </div>
     
     <!-- JiaThis Button BEGIN -->
            <div id="jia">
              <div id="rb_let">一键分享：</div>
                <div class="jiathis_style">
							<a class="jiathis_button_qzone"></a>
							<a class="jiathis_button_tsina"></a>
							<a class="jiathis_button_tqq"></a>
							<a class="jiathis_button_weixin"></a>
							<a class="jiathis_button_renren"></a>
							<a class="jiathis_button_xiaoyou"></a>
							<a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a>
							<a class="jiathis_counter_style"></a>
						</div>
						<script type="text/javascript" src="http://v3.jiathis.com/code/jia.js?uid=1350880297640758" charset="utf-8"></script>
            </div>
            <!-- JiaThis Button END -->
   </div>
   <div class="clear"></div>
    </div>
</div>
<#include "/footer2.html" parse="true" encoding="utf-8">
</body>
</html>
