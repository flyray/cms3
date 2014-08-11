<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="${basePath}">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${news.title}-----山东大学就业信息网</title>
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
<div id="zhuanti_top" class="center">
   <span id="crub">
		<a href="#">首页 / </a> 
	    <a href="html/items/item${item.itemID}-1.html">${item.itemName}/ </a>
   </span>
   <h1>${news.title}</h1>
   <!-- JiaThis Button BEGIN -->
	   <span id="zhuanti_jia">
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
		</span> 
   	<!-- JiaThis Button END -->	
	<p id="time_editor">发布时间：${news.createtime?string('yyyy-MM-dd HH:mm:ss')}&nbsp;&nbsp;&nbsp;
						作者：${news.author} &nbsp;&nbsp;
						编辑：${news.editor.adminName}</p>
</div>
	<!-- content start -->
	<div id="zhuanti_content" class="center">
		${news.content}
    </div>
	<div class="clear"></div>
	<!-- content end -->

<#include "/footer2.html" parse="true" encoding="utf-8">
</body>
</html>
