<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<link href="css/common.css" rel="stylesheet" type="text/css" />
	<link href="css/item.css" rel="stylesheet" type="text/css" />
	<link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />
	<link href="css/time.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="js/jquery.js"></script>
	<script type="text/javascript" charset="utf-8" src="js/jquery-ui.js"></script>
	<script type="text/javascript" charset="utf-8" src="js/jquery-ui-slide.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="js/jquery-ui-timepicker-addon.js"></script>
	<script type="text/javascript" charset="utf-8">
	//时间选择器
	$(document).ready(function(){
		$("#start_time").datetimepicker({
			showSecond: true,
			   showMillisec: false,
			   timeFormat: 'hh-mm-ss'
		});
		$("#end_time").datetimepicker({
			showSecond: true,
		   showMillisec: false,
		   timeFormat: 'hh-mm-ss'
		});
		
		$("#start_time2").datetimepicker({
			showSecond: true,
		   showMillisec: false,
		   timeFormat: 'hh:mm:ss'
		});
		$("#end_time2").datetimepicker({
			showSecond: true,
		   showMillisec: false,
		   timeFormat: 'hh:mm:ss'
		});
		
	
	})
	
	
	
	</script>

</head>
<body>
	<s:set name="set1" value="news_number_list"></s:set>
	<s:set name="set2" value="news_number_list_byauthor"></s:set>
	
	<div id="content_t">新闻信息统计</div>
	<div id="content">

		<div id="div_ac" style="width:600px">
			<h2>总发稿数量查询：</h2>
			<hr /><hr />
			<form id="form1" action="news_checkNewsAndPosition" method="post" >
			<table class="tb_item">
			
			<tr><td colspan="2"  ><span id="ac_title">查询</span><span id="ac_msg"></span></td><td colspan="2" cellspace="2"><span id="ac_title">结果</span></td></tr>	
	
					<s:if test="#set1==null||#set1.size()==1">
						<tr><td>开始时间：</td><td><input name="start_time" id="start_time"/></td><td>稿件数目：</td><td><input id="newsNum" disabled="true" /></td></tr>
						<tr><td>结束时间：</td><td><input name="end_time" id="end_time"/></td><td>岗位数目：</td><td><input id="positionNum" disabled="true" /></td></tr>
					</s:if>
					<s:elseif test="#set1.size()==2" >
								<s:iterator value="#set1" id='char' status='st'>
								
									<s:if test="#st.first">
										<tr>
											<td>开始时间：</td><td><input name="start_time" id="start_time"/></td><td>稿件数目：</td>
											<td><input id="newsNum" disabled="true" value=<s:property value='#char' /> /></td>
											
											
										</tr>
									</s:if>
									<s:else>
										<tr>
											<td>结束时间：</td><td><input name="end_time" id="end_time"/></td><td>岗位数目：</td>
											<td><input id="positionNum" disabled="true" value=<s:property value='#char'/> /> </td>
										</tr>
									</s:else>
									
								</s:iterator>
					</s:elseif >
				<tr><td colspan="4" ><input id="sbt" type="submit" value="查询"/></td></tr>
			</table>
			</form>		
		</div>
		
		<div id="div_ac" style="width:600px">
			<h2>编辑发稿数量查询：</h2>
			<hr /><hr />
			<form id="form2" action="news_checkNewsAndPositionByAuthor" method="post" >
			<table class="tb_item">
			<tr><td colspan="2"  ><span id="ac_title">查询</span><span id="ac_msg"><s:actionmessage/></span></td><td colspan="2" cellspace="2"><span id="ac_title">结果</span></td></tr>
				
				<s:if test="#set2==null||#set2.size()==1">
						<tr><td>编辑姓名：</td><td><input  name="author"/></td><td>编辑姓名：</td><td><input id="author" disabled="true"/></td></tr>
						<tr><td>开始时间：</td><td><input name="start_time" id="start_time2"/></td><td>稿件数目：</td><td><input id="newsNum" disabled="true" /></td></tr>
						<tr><td>结束时间：</td><td><input name="end_time" id="end_time2"/></td><td>岗位数目：</td><td><input id="positionNum" disabled="true" /></td></tr>
					</s:if>
					<s:elseif test="#set2.size()==2">
								<s:iterator value="#set2" id='char' status='st'>
								
									<s:if test="#st.first">
										<tr><td>编辑姓名：</td><td><input  name="itemName" /></td><td>编辑姓名：</td><td><input id="newsNum" disabled="true" value=<s:property value="author" /> /></td></tr>
										<tr>
											<td>开始时间：</td><td><input name="start_time" id="start_time2"/></td><td>稿件数目：</td>
											<td><input id="newsNum" disabled="true" value=<s:property value='#char' /> /></td>
										</tr>
									</s:if>
									<s:else>
										<tr>
											<td>结束时间：</td><td><input name="end_time" id="end_time2"/></td><td>岗位数目：</td>
											<td><input id="positionNum" disabled="true" value=<s:property value='#char'/> /> </td>
										</tr>
									</s:else>
									
								</s:iterator>
					</s:elseif >
				<tr><td colspan="4" ><input id="sbt" type="submit" value="查询"/></td></tr>
			</table>
			</form>		
		</div>
			 <s:set name="set3" value="divide_week_list"></s:set>
  			 <s:set name="set4" value="divide_number_list"></s:set>
   			 <s:set name="set5" value="divide_position_list"></s:set>
		<div id="div_ac" style="width:600px">	
			<h2>年度发稿情况查询：</h2>
			<hr /><hr />
		
			<form id="form3" name="form3" action="news_divideByWeek" method=post >
				请输入年份：<input id="divide_year" name="divide_year" placeholder="20XX" required="true"  onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
				<input type="submit" value="查询" /><br>	
						<div style="float:left;width:150px;margin-top:7px">&nbsp
						<table class="tb_item" height=40px > 
							<s:iterator value="#set3" id='id' status="st">
		    				<tr>
		    				<s:if test="#st.first">
		    				<tr><td>周次</td><td>稿件</td></tr>
		    				</s:if>  				
		    				<td><s:property value='id' /></td>
		    				<td><s:property value="#set4[#st.index]" /></td> 
				
		     				</tr>
		    				</s:iterator> 				
						</table>
						</div>
                       <div style="float:left;width:400px;">
                       		<br><br><br>
                       		
                       		<s:iterator value="#set5" id="percent">
                       			<hr width="<s:property value='percent'/>" size="21px" color=B8E46B  />
                       			<%-- <hr width="<s:property value='percent'/>" size=3 color=D6CECE /><br> --%>
                       		</s:iterator>
                       </div>		
			</form>
		</div>		
	</div>
	
</body>
</html>