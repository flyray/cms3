<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'news_add.jsp' starting page</title>
	<link href="css/news.css" rel="stylesheet" type="text/css" />
	<link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />
	<link href="css/common.css" rel="stylesheet" type="text/css" />
	<link href="css/time.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" charset="utf-8" src="js/jquery.1.7.2.min.js"></script>
	
	<script type="text/javascript" charset="utf-8" src="js/jquery-ui.js"></script>
	<script type="text/javascript" charset="utf-8" src="js/jquery-ui-slide.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="js/jquery-ui-timepicker-addon.js"></script>
	<script type="text/javascript" charset="utf-8" src="js/jquery.colorpicker.js"></script>
	<script type="text/javascript" charset="utf-8" src="../ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="../ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8">
    	$(document).ready(function(){
    		//焦点验证
	    	$("#title").focus(function(){
			    $("#title_tixing").text("");
		});
		    $("#s_item").focus(function(){
		        $("#select_tixing").text("");
		    });
    		$("#title").blur(function(){
				var title_length=$("#title").val().length;
				if(title_length>30){
					 $("#title_tixing").text("题目长度不能超过30个字！");
					 return false;
					}
				});
			$("#recrutTime").focus(function(){
			     $("#recruit_time_tixing").text("");
						})
			$("#recruitSchool").focus(function(){
			     $("#recruit_address_tixing").text("");
			})
			$("#gangwei").focus(function(){
			    $("#gangwei_tixing").text("");
		});
    	//提交验证t
		    	$("#sbt").click(function(){
					
					var author=$("#author").val();
					var gangwei=$("#gangwei").val();
					var title=$("#title").val();
					var recruit_time = $("#recrutTime").val();
					var recruit_address = $("#recruitAddress option:selected").text();
					var subItemID=$("#subItemID option:selected").text();
					var ItemID=$("#s_item option:selected").text();
					
				    if(title==""){
					  $("#title_tixing").text("请写上题目！");
					  return false;
					}
					
					if(ItemID=="请选择"||subItemID=="请选择"){
						$("#select_tixing").text("请选择栏目！");
						return false;
					}
					
					if(author==""){
					$("#author_tixing").text("必填作者！");
					return false;
					}
					if (recruit_address != "请选择"&& recruit_address != ""&&recruit_address != "取消") {
						if (recruit_time == "") {
							$("#recruit_time_tixing").text("请填写招聘时间！");
							return false;
					      }

					}
					if(recruit_time != ""){
					   if(recruit_address == "请选择"||recruit_address == "取消"||recruit_address == ""){
					        $("#recruit_address_tixing").text("请填写招聘地点！");
							return false;		
					   }
					}
					if(gangwei !=""){
						if(isNaN(gangwei)){
						$("#gangwei_tixing").text("岗位数必须是数字！");
						  return false;
					    }
					}	
					return true;				
				});
    		//全局变量，防止重复添加
    		var i_already=0;
    		var si_already=0;
    		//获取一级目录
   			if(i_already==0){
   				$.ajax({
       				type:"post",
       				url:"item_findAllAjax",
       				dataType:"json",
       				success:function(result){
       					for(var i=0;i<result.length;i++){
       						var o_itemid=result[i].itemID;
       						var o_itemname=result[i].itemName;
       						$("#s_item").append("<option value="+o_itemid+">"+o_itemname+"</option>");
       					}
       					i_already=1;
       				}
       			});
   			}
    		
    		//获取二级目录
    		$("#s_item").change(function(){
    			var itemID=$("#s_item option:selected").val();
    				$.ajax({
        				type:"post",
        				url:"subItem_findAllAjax",
        				data:"itemID="+itemID,
        				dataType:"json",
        				success:function(result){
        					$("#subItemID").html("");
        					for(var i=0;i<result.length;i++){
        						var o_itemid=result[i].subItemID;
        						var o_itemname=result[i].subItemName;
        						$("#subItemID").append("<option value="+o_itemid+">"+o_itemname+"</option>");
        					}
        					already=1;
        				}
        			});
    		});
    		
    		//获取校区信息
			$.ajax({
       				type:"post",
       				url:"recruit_findAllAjax",
       				dataType:"json",
       				success:function(result){
       					for(var i=0;i<result.length;i++){
       						var o_recruitSchoolNum=result[i].recruitSchoolNum;
       						var o_recruitSchoolName=result[i].recruitSchoolName;
       						$("#recruitSchool").append("<option value="+o_recruitSchoolNum+">"+o_recruitSchoolName+"</option>");
       					}
       				}
       			});
			//获取各校区所有教室信息
			$("#recruitSchool").change(function(){
    			var recruitSchoolNum=$("#recruitSchool option:selected").val();
    				$.ajax({
        				type:"post",
        				url:"recruitRoom_findAllAjax",
        				data:"recruitSchoolNum="+recruitSchoolNum,
        				dataType:"json",
        				success:function(result){
        					$("#recruitAddress").html("");
        					for(var i=0;i<result.length;i++){
        						var recruitRoomBelong=result[i].recruitRoomBelong;
        						var recruitRoomName=result[i].recruitRoomName;
        						var recruitRoomID=result[i].recruitRoomID
        						$("#recruitAddress").append("<option value="+recruitRoomID+" >"+recruitRoomName+"</option>");
        					}
        					
        				}
        			});
    		});
    		
    		//标题取色器
    		$("#colorimg").colorpicker({
    		    fillcolor:true,
    		    success:function(o,color){
           		$("input[name='title']").css("color",color);
           		$("input[name='color']").val(color);
       		}
  			});
    		//时间选择器
    		$("#recrutTime").datetimepicker({
				showSecond: true,
			   showMillisec: false,
			   timeFormat: 'hh:mm:ss'
			});
			//时间选择器
			$("#recruitTimeEnd").datetimepicker({
				showSecond: true,
			   showMillisec: false,
			   timeFormat: 'hh:mm:ss'
			});
    		//控制页面跳转的选中
    		$("#islink").attr("checked",false);
    		$("#link").attr("disabled","disabled");
    		$("#islink").change(function(){
    			if($("#islink").attr("checked")){
    				$("#link").removeAttr("disabled");
    			}else{
    				$("#link").attr("disabled","disabled");
    			}
    		});
    	});
    	
    	
    	
    </script>
  </head>
  
  <body>
  <div id="content_t">添加新闻</div>
	<div id="content">
		<div id="div_news">
			<form id="form1" action="news_add" method="post">
            <span id="ac_title"></span><span id="ac_msg"><s:actionmessage/></span>
			<table width="432" class="tb_news" style="font-size:14px;">
				<tr>
					<td class="no">新闻标题：</td>
					<td width="380" class="tb_r" colspan="3">
						<div align="left"><input name="color" type="hidden"/>
				  			<input class="input_300"  id="title" name="title" style="color: ${color}"/>  
				  			<img id="colorimg" src="images/colorpicker.png" style="cursor:pointer"/>
				  			<input name="bold" type="radio" value="1" /> 加粗<input name="bold" type="radio" value="0" checked /> 不加粗
				   			<span style="color:red">&nbsp;*</span><span id="title_tixing" class="tixing"></span>
				  		</div>
				  	</td>
				</tr>
				<tr>
					<td>所属栏目：</td>
					<td colspan="3">
						<div align="left">
				  			<select id="s_item" name="s_item"><option>请选择</option></select>
				  			<span style="color:red">&nbsp;*</span><span id="select_tixing" class="tixing"></span>
                            <select id="subItemID" name="subItemID"><option>请选择</option></select>
                        </div>
				  	</td>
				</tr>
				<tr>
					<td>页面跳转：</td>
				  	<td colspan="3">
				  		<div align="left" >
				  			<input name="islink" type="radio" value=1 id="islink"/>是				  
				  			<input name="islink" type="radio" value=0  checked/>否
				  			<!-- <input name="islink" id="islink" type="checkbox"/><span class="font_red">(如果是请选中)</span> --> 
				   			<span class="font_gray2">跳转链接 </span><input class="input_300" id="link" name="link" />
				   		</div>
				   	</td>
				</tr>
				<tr>
				  	<td>新闻信息：</td>
				  	<td>
                    	
				  		<div align="left">
                        	<span>新闻来源</span>	
				  			<input class="input_150" name="source" id="source"/>
				  		</div>
				  	</td>

					<td colspan="2">
						<div align="left">
                        	<span>新闻作者：</span>
							<input class="input_150" name="author" id="author"/>
							<span style="color:red">&nbsp;*</span> 
							<span class="font_gray2">新闻编辑</span>   
							<input class="input_150" name="editorName" value="${session.adminName }" readonly />
				  			<span id="author_tixing" class="tixing"></span>
				  		</div>
				  	</td>
			    </tr>
			    <tr>
				 	<td>招聘信息：</td>
				 	<td>
				 		<div align="left">
				 			<span>开始时间</span>
                            <input class="input_150" name="recrutTime" id="recrutTime"/>
				 			<span	id="recruit_time_tixing" class="tixing"></span>
				 			<br/>
                            <span>结束时间</span>
				 			<input class="input_150" name="recruitTimeEnd" id="recruitTimeEnd"/>
				 			<span	id="recruit_time_tixing" class="tixing"></span>
				 		</div>
				 	</td>
				
					<td>
						<div align="left">
                        	校区
				  	 		<select id="recruitSchool"><option value=0>请选择</option></select> 
				  	 		<br/>
				  	 		教室
				  	 		<select id="recruitAddress" name="recruitAddress"><option value=0>请选择</option></select>
				  	 		<span id="recruit_address_tixing" class="tixing"></span>
						</div>
					</td>
					<td>
                    	<div align="left">
							<span>岗位数</span>
                            <input class="input_150" name="positionNum" value="0" id="gangwei"/>
							<span id="gangwei_tixing" class="tixing"></span>
						</div>
						
					</td>
				</tr>
				<tr>
					<td>新闻内容：</td>
					<td colspan="3"> 
						<div align="left">
				  			<textarea name="content" id="editor"></textarea>
				  		</div>
				  	</td>
				</tr>
				  <input name="settop" type="hidden" value="0"/>
				<tr>
				<td colspan="4" cellspace="2"><input id="sbt" type="submit" value="添加"/><span id="spnan_h"><a href="javascript:returnAdd();">返回添加</a></span></td></tr>
			</table>
			</form>
		</div>
    </div>
		<script type="text/javascript">
		    //实例化编辑器
		    var ue = UE.getEditor('editor');
		    ue.addListener('ready',function(){
		        this.focus()
		    });
		</script>
		<s:debug></s:debug>	
  </body>
</html>
