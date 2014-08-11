<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="${basePath}">
<meta http-equiv="Content-Language" content="zh-CN" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>山东大学学生就业信息网</title>
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/common/jquery.js"></script>
<script type="text/javascript" src="js/common/jcarousellite_1.0.1.js"></script>
<script type="text/javascript" src="js/common/question.js"></script>
<!-- 解决ie6不支持透明背景问题-->
<!--[if IE 6]><script type="text/javascript" src="js/DD_belatedPNG_0.0.8a-min.js" mce_src="js/common/DD_belatedPNG_0.0.8a-min.js"></script><script type="text/javascript"> DD_belatedPNG.fix('.png_bg');</script><![endif]--> 
</head>
<body>
<#include "/header.html" parse="true" encoding="utf-8">

<!--form 开始-->
<div id="main2" class="autoHight">
	<div id="center">
    <p><strong>温馨提示：</strong></p>
    <p>请同学们填写真实信息，以便我们就同学们的提问有针对性地予以解答</p>
    <p>您的问题提交后由工作人员查看并解答，您的个人联系信息将不予公开显示</p>
    <p>山东大学学生就业发展与指导服务中心真诚为您服务！</p>
    <br>
<form name="form1" method="post" action="question_add" onsubmit="return checkit();">
<table width="984" border="1" cellspacing="0">
  <tr>
    <th scope="row" width="100px" height="40px">问题分类：</th>
    <td>
	<select name="fenlei">
    <option value="0" selected>-----请选择-----</option>
    <option value="1">就业手续问题</option>
    <option value="2">就业指导问题</option>
    <option value="3">校园招聘问题</option>
    <option value="4">就业信息网相关</option>
    <option value="5">其它</option>
    </select>
	</td>
    <td id="t1" width="200px">必填（20字以内）</td>
  </tr>
  <tr>
    <th scope="row" width="100px" height="40px">标题：</th>
    <td width="684px"><input type="text" name="title" onChange="check()"/><span id="titlex" style="display: none; color:#F00">字符数不符</span></td>
    <td id="t1" width="200px">必填（20字以内）</td>
  </tr>
  <tr>
    <th scope="row">内容：</th>
    <td><textarea style="height:100px; width:584px;" type="text" name="content" onChange="check()"></textarea><span id="contentx" style="display: none; color:#F00">字符数不符</span></td>
    <td>必填（100字以内）</td>
  </tr>
  <tr>
    <th scope="row">姓名：</th>
    <td><input type="text" name="name" onChange="check()"/><span id="namex" style="display: none; color:#F00">长度超出</span></td>
    <td>必填</td>
  </tr>
  <tr>
    <th scope="row">邮箱：</th>
    <td><input type="text" name="email" onChange="checkel()"/><span id="emailx" style="display: none; color:#F00">格式不正确</span></td>
    <td>必填</td>
  </tr>
  <tr>
    <th scope="row">手机：</th>
    <td><input type="text" name="phone"/></td>
    <td>选填</td>
  </tr>
  <tr>
    <th colspan="3" scope="row"><input type="submit" value="提交" name="tijiao"/>&nbsp;<input type="reset" value="重置" name="reset"/></th>
    </tr>
</table>
</form>
<br>
<br>
<br>
<br>
</div>
</div>
<!--form 结束-->

<#include "/footer.html" parse="true" encoding="utf-8">
</body>
</html>