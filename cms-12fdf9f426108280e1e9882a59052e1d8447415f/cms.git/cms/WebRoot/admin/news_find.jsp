<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
    <script type="text/javascript" charset="utf-8" src="../ueditor/ueditor.all.min.js"></script>    <script type="text/javascript" charset="utf-8">
    	$(document).ready(function(){
    		
    		//焦点验证
	    	$("#title").focus(function(){
			    $("#title_tixing").text("");
			});
	    	$("#s_item").focus(function(){
		        $("#select_tixing").text("");
		    });
    		$("#author").focus(function(){
			    $("#author_tixing").text("");
			});
			$("#source").focus(function(){
			    $("#source_tixing").text("");
			});
			$("#recrutTime").focus(function(){
			     $("#recruit_time_tixing").text("");
						});
			$("#recruitSchool").focus(function(){
			     $("#recruit_address_tixing").text("");
			});
			$("#gangwei").focus(function(){
			    $("#gangwei_tixing").text("");
			});
    	//提交验证t
		    	$("#sbt").click(function(){
					var source=$("#source").val();
					var author=$("#author").val();
					var gangwei=$("#gangwei").val();
					var title=$("#title").val();
					var recruit_time = $("#recrutTime").val();
					var recruit_address = $("#recruitAddress option:selected").text();
                    var subItemID=$("#subItemID option:selected").text();
					var ItemID=$("#s_item option:selected").text();
					var islink=$("#islink").val();
				    if(title==""){
					  $("#title_tixing").text("请写上题目！");
					  return false;
					}
				    if(ItemID=="请选择"||subItemID=="请选择"){
						$("#select_tixing").text("请选择栏目！");
						return false;
					}
					/* if(source==""){
						$("#source_tixing").text("请输入来源！");
						return false;
					} */
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
   		var news_already=0;//不理解重复添加是个什么意思
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
      					getItemID();
      				}
      			});
   			}
   		//一级栏目改变的时候更改二级目录
   		$("#s_item").change(function(){
   			getSubItemID();
   		});
   		//获取二级目录
   		function getSubItemID() {
   			var subItemID=${subItemID};
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
       					$("#subItemID").val(subItemID);
       				}
       			});
   		}
   		//由二级目录获得一级目录，并向所属栏目下拉选项传值
   		function getItemID(){
   			var subItemID=${subItemID};
   			$.ajax({
   				type:'GET',
   				url:'subItem_findAjax',
   				proccess:true,
   				datatype:'json',
   				data:'subItemID='+subItemID,
   				success:function(result){
   					var json = eval('(' + result + ')');					
   					$("#s_item").val(json.itemID);				
   					getSubItemID();
   			
   					
   				}
   				
   			});
   		} 
   		if(si_already==0){
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
         					getRecruitRoomID(); 
         					si_already=1;
         				}
         		});
   		}
       		//招聘校区改变时修改全体的招聘教室
       		$("#recruitSchool").change(function(){
       			getRecruitRoom();
       		});
       		
       		//获取招聘教室
       		function getRecruitRoom() {
       			var recruitAddress=${recruitAddress};
       			var recruitSchoolNum=$("#recruitSchool option:selected").val();
       				$.ajax({
           				type:"post",
           				url:"recruitRoom_findAllAjax",
           				data:"recruitSchoolNum="+recruitSchoolNum,
           				dataType:"json",
           				success:function(result){
           					$("#recruitAddress").html("");
           					for(var i=0;i<result.length;i++){
           						var recruitRoomID=result[i].recruitRoomID;
           						var recruitRoomName=result[i].recruitRoomName;
           						$("#recruitAddress").append("<option value="+recruitRoomID+">"+recruitRoomName+"</option>");
           					}
           					$("#recruitAddress").val(recruitAddress);
           				}
           			});
       		}
       		//由招聘教室得到招聘校区
       	function getRecruitRoomID(){
       		var recruitRoomID=${recruitAddress};
   	    		$.ajax({
   					type:'GET',
   					url:'recruitRoom_findAjax',
   					proccess:true,
   					datatype:'json',
   					data:'recruitRoomID='+recruitRoomID,
   					success:function(result){					
   						var json = eval('(' + result + ')');
   						$("#recruitSchool").val(json.recruitSchoolNum);
   						getRecruitRoom();	
   						
   					}	
   			});
       	}
       	 
    		
    		//标题取色器
    		$("#colorimg").colorpicker({
    		    fillcolor:true,
    		    success:function(o,color){
           		$("input[name='title']").css("color",color);
           		$("input[name='color']").val(color);
       		}
  			});
    		//时间选择器
    		$("#recruitTime").datetimepicker({
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
    		//$("#islink").attr("checked",false);
    		//$("#link").attr("disabled","disabled");
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
			<form id="form1" action="news_update" method="post">
            <span id="ac_title"></span><span id="ac_msg"><s:actionmessage/></span>
					<!-- 隐藏newsID -->
					<input type="hidden" name="newsID" value="${newsID }"/>
					<input type="hidden" name="settoptime" value="${settoptime }"/>
					<input type="hidden" name="createtime" value="${createtime }"/>
					<input name="settop" type="hidden" value="${settop }"/>
					<input name="currentPage" type="hidden" value="${currentPage }"/>
			<table width="432" class="tb_news" border="1px"  style="font-size:14px;">
				<tr>
				  	<td class="no">新闻标题：</td>
				  	<td width="380" class="tb_r" colspan="3">
				  		<div align="left">
				  			<input name="color" type="hidden" value="${color }"/>
				  			<input class="input_300"  id="title" name="title" value="${title }" style="color:${color}"/>  
				  			<img id="colorimg" src="images/colorpicker.png" style="cursor:pointer"/>   
				  			<s:if test="$bold==1">
				  			<input name="bold" type="radio" value="1" checked /> 加粗<input name="bold" type="radio" value="0" /> 不加粗
				  			</s:if>
				  			<s:else>
				  			<input name="bold" type="radio" value="1" /> 加粗<input name="bold" type="radio" value="0" checked /> 不加粗
				  			</s:else>
				  
				  			<span style="color:red">*</span><span id="title_tixing" class="tixing"></span>
				  
				  		</div>
				 	</td>
				</tr>
				<tr>
				  	<td>所属栏目：</td>
				  	<td colspan="3">
				  		<div align="left">
				  			<select id="s_item"><option>请选择</option></select> 
				  			<select id="subItemID" name="subItemID"><option>请选择</option></select>
				  			<span id="select_tixing" class="tixing"></span>
				  		</div>
				  	</td>
				</tr>
				<tr>
					<td>页面跳转：</td>
					<td colspan="3">
				  	<div align="left">
				  		<s:if test="#request.islink==1">
				  			<input name="islink" type="radio" value="1" checked id="islink" />是			  
				  			<input name="islink" type="radio" value="0"/>否
				  			<span class="font_gray2">跳转链接   </span><input class="input_300" id="link" name="link" value="${link}" />
				  		</s:if>
				  		<s:if test="#request.islink==0">
				  			<input name="islink" type="radio" value="1" id="islink"/>是				  
				  			<input name="islink" type="radio" value="0" checked />否
				  			<span class="font_gray2">跳转链接   </span><input class="input_300" id="link" name="link" value="${link}" />
				  		</s:if>
				  		<span id="islink_tixing" class="tixing"></span>
				  	</div>
				  </td></tr>
				  <tr>
				  	<td>新闻信息：</td>
				  	<td>
				  		<div align="left">
                        	<span>新闻来源</span>
                        	<input id="source" class="input_150" name="source" value="${source}"/>
                        </div>
                    </td>
				  	
				  	<td colspan="2">
				  		<div align="left">
                        	<span>新闻作者：</span>
				  			<input id="author" class="input_150" name="author" value="${author }"/> 
				  			<span style="color:red">*</span><span class="font_gray2">新闻编辑</span>   
				  			<input class="input_150" name="editorName" value="${editorName}" readonly />
				  			<span id="author_tixing" class="tixing"></span>
				  		</div>
				  	</td>
				  </tr>
				  <tr>
				  	<td>招聘信息：</td>
				  	<td>
				  		<div align="left">
                        	<span>开始时间</span>
				  			<input class="input_150" name="recrutTime" id="recrutTime" value="${recrutTime }"/>
				  			<span id="recruit_time_tixing" class="tixing"></span>
				  			<br/>
                            <span>结束时间</span>
				  			<input class="input_150" name="recruitTimeEnd" id="recruitTimeEnd" value="${recruitTimeEnd }"/>
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
				  		<div  align="left">
                        	<span>岗位数：</span>
				  			<input id="gangwei" class="input_150" name="positionNum" value="${positionNum }"/>
				  			<span id="gangwei_tixing" class="tixing"></span>
				  		</div>
				  	</td>
				  </tr>
				  <tr>
				  	<td>新闻内容：</td>
				  	<td colspan="3"> 
				  		<div align="left">
				  		<textarea name="content" id="editor">${content }</textarea>
				  		</div>
				  	</td>
				  </tr>
				  
				  
				<tr><td colspan="4" cellspace="2"><input id="sbt" type="submit" value="修改"/><span id="spnan_h"><a href="javascript:returnAdd();">返回添加</a></span></td></tr>
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
  </body>
</html>
