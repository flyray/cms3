<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link href="css/common.css" rel="stylesheet" type="text/css" />
	<link href="css/item.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
	<script type="text/javascript">
		function imageFind(imageID){
			$.ajax({
				type:'GET',
				url:'image_findAjax',
				proccess:true,
				datatype:'json',
				data:'imageID='+imageID,
				success:function(result){
					var json = eval('(' + result + ')');
					var ipt_imageID="<input type='hidden' name='imageID'/>";
					var ipt_imageType="<input type='hidden' name='imageType'/>";
					var img_yulan="<tr><td>图片预览</td><td><img id='yulan' width='160' height='140' src='image_show?imageID="+imageID+"'/></td></tr>";
					if($("#yulan").length<=0){$(".tb_item tr:first-child").before(img_yulan);}
					$("#yulan").attr("src","image_show?imageID="+imageID);
					if($("input[name='imageID']").length<=0){$("#form1").append(ipt_imageID);}
					if($("input[name='imageType']").length<=0){$("#form1").append(ipt_imageType);}
					$("input[name='imageID']").val(imageID);
					$("input[name='imageLink']").val(json.imageLink);
					$("input[name='imageFile']").val(json.imageFile);
					$("input[name='imageDescription']").val(json.imageDescription);
					$("input[name='imageOrder']").val(json.imageOrder);
					$("select[name='hot']").val(json.hot);
					$("#sbt").val("修改");
					$("#ac_title").text("修改");
					$("#spnan_h").show();
					$("#form1").attr("action","image_update");
				}
				
			});
		}
		function returnAdd(){
			$("input[name='imageID']").remove();
			$("#sbt").val("添加");
			$("#ac_title").text("添加");
			$("#form1").attr("action","image_add");
			$("#spnan_h").hide();
			document.getElementById("form1").reset();
		}
	</script>
</head>
<body>
	<div id="content_t">查看首页图片</div>
	<div id="content">
		<table class="tb_top">
		<tr><th>图片排序</th><th>图片</th><th>图片描述</th><th>图片链接</th><th>修改</th><th>删除</th></tr>
		<s:iterator value="imageList" var="image">
		<tr><td>${image.imageOrder}</td><td><img src="image_show?imageID=${image.imageID}" width="200px" height="80px"/></td><td>${image.imageDescription}</td><td>${image.imageLink}</td ><td><a href="javascript:imageFind(${image.imageID})">修改</a></td><td><a href="image_delete?imageID=${image.imageID}" onClick="if(confirm('删除不可恢复，真的要删除吗？'))return true;return false;">删除</a></td></tr>
		</s:iterator>
		</table>
		<div id="div_ac">
			<form id="form1" action="image_add" method="post" enctype="multipart/form-data">
            <span id="ac_title">添加</span><span id="ac_msg"><s:actionmessage/></span>
			<table class="tb_item">
			<input type="hidden" name="imageType" value="1"/>
				<tr><td>图片文件：</td><td><input type="file" name="imageFile"/></td></tr>
				<tr><td>图片描述：</td><td><input name="imageDescription"/></td></tr>
				<tr><td>图片链接：</td><td><input type="text" name="imageLink" /></td></tr>
				<tr><td>图片排序：</td><td><input name="imageOrder"/></td></tr>
				<tr><td colspan="2" cellspace="2"><input id="sbt" type="submit" value="添加"/><span id="spnan_h"><a href="javascript:returnAdd();">返回添加</a></span></td></tr>
			</table>
			</form>
		</div>
	</div>
	
</body>
</html>