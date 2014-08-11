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
        <h1>就业问答</h1>
      
        
		<div id="question_title">问题：${question.title}</div>
		 <div id="question_tiwenzhe" class="question_letter">提问者：${'${question.name}'?substring(0,1)}同学</div>
		 <div class="question_letter" id="question_shijian">提问时间：${question.createTime}</div>
		 <div class="question_letter" >提问内容：</div>
		 <div class="question_letter" id="question_con">${question.content}</div>
		 <div class="question_letter" >回复：</div>
		 <div class="question_letter" id="question_answer">${question.answer}</div>
		<div class="question_letter" id="question_answer_time">回复时间:${question.replytime}</div>
     </div>
   <div class="clear"></div>
    </div>
</div>
<#include "/footer2.html" parse="true" encoding="utf-8">
</body>
</html>
