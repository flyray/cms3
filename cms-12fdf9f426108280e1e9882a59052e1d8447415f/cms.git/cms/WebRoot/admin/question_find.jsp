<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP</title>
	<link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />
	<link href="css/question.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
  <div id="content_t">修改提问</div>
	<div id="content">
		<div id="div_news">
			<form id="form2" action="question_update" method="post">
			<table width="600" class="tb_news">
					<!-- 隐藏信息 -->				
					<input type="hidden" name="questionID" value="${questionID}"/>
					<input type="hidden" name="email" value="${email}"/>
					<input type="hidden" name="isshow" value="${isshow}"/>
					<input type="hidden" name="createTime" value="${createTime}"/>
					<input type="hidden" name="phone" value="${phone}"/><br>
					<input type="hidden" name="replyperson" value="${replyperson}"/>
					<input type="hidden" name="replytime" value="${replytime}"/>
					<input type="hidden" name="showorder" value="${showorder}"/>
					<input type="hidden" name="settoptime" value="${settoptime}"/>
			
				  <tr>
		
				  <td class="no">标题：</td><td width="380" class="tb_r">
                  <div align="left">
				  <input class="input_300"  id="title" name="title" value="${title}" style="color:${color}"/>
				  </div>
				  </td>
				  </tr>
				  <tr><td>提问者：</td><td><div align="left"><input class="input_150" name="name" value="${name}"/></div></td></tr>
				  <tr><td>问题分类：</td><td><div align="left">
				  
				  <select name="classify">
				  
				  	 <s:if test="#request.classify==\"就业指导部\"">
				  	  	  <option value="就业指导部">就业指导部</option>			  	
						  <option value="就业管理部">就业管理部</option>			  	
						  <option value="就业市场部">就业市场部</option>			  	
						  <option value="就业信息部">就业信息部</option>	
   					  </s:if>  
				  	  <s:if test="#request.classify==\"就业管理部\"">
						  <option value="就业管理部">就业管理部</option>			  	
				  	  	  <option value="就业指导部">就业指导部</option>			  	
						  <option value="就业市场部">就业市场部</option>			  	
						  <option value="就业信息部">就业信息部</option>	
   					  </s:if>  
				  	  <s:if test="#request.classify==\"就业市场部\"">
						  <option value="就业市场部">就业市场部</option>			  	
						  <option value="就业管理部">就业管理部</option>			  	
				  	  	  <option value="就业指导部">就业指导部</option>			  	
						  <option value="就业信息部">就业信息部</option>	
   					  </s:if>  
				  	  <s:if test="#request.classify==\"就业信息部\"">
						  <option value="就业信息部">就业信息部</option>	
						  <option value="就业管理部">就业管理部</option>			  	
				  	  	  <option value="就业指导部">就业指导部</option>			  	
						  <option value="就业市场部">就业市场部</option>			  	
   					  </s:if>  
   					  
				  </select>
				  
				  </div></td></tr>
				  <tr><td>是否展示：</td><td><div align="left">
				  <select name="broadcast">
				  	  <s:if test="#request.broadcast==0">
				  	  	 	<option value=0>不显示</option>
					  		<option value=1>显示</option>
				  	  </s:if>
				  	  <s:if test="#request.broadcast==1">
					  		<option value=1>显示</option>
				  	  	 	<option value=0>不显示</option>
				  	  </s:if>
				  
				  </select>
				  </div></td></tr>
				  <tr><td>问题内容：</td><td> <div align="left"><textarea style="height:150px; width:400px;" name="content">${content}</textarea></div></td></tr>
				  <tr><td>回复内容：</td><td> <div align="left"><textarea style="height:150px; width:400px;" name="answer">${answer}</textarea></div></td></tr>
				  
				  
				<tr><td colspan="2" cellspace="2" style="text-align:center"><input id="sbt" type="submit" value="修改" onClick="if(confirm('请仔细核对问题分类及是否展示，确认无误请点击确定'))return true;return false;"/></td></tr>
	
			</table>
			</form>
		</div>
    </div>	
  </body>
</html>
