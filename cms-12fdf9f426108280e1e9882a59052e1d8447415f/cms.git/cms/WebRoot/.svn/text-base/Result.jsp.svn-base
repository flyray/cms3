<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("utf-8") ;

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta HTTP-EQUIV="Content-Type" content="text/html; charset=utf-8" />
<head>
    <title>站内搜索-----山东大学就业信息网</title>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <script type="text/javascript" src="js/common/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
    <link rel="stylesheet" type="text/css" href="css/search.css" />

</head>
<body>
<jsp:include page="/header.html" />
<!--中部内容部分-->
<div id="middle_content">
    <div class="center">
            <div id="imag">
                <img src="images/top_imag.jpg" />
            </div>
        <div id="top_search">
            <form  action="" id="cse-search-box">
                <div>
                <input type="hidden" name="cx" value="012192721869366252759:fsel5-yrbp0" />
                <input type="hidden" name="cof" value="FORID:10" />
                <input type="hidden" name="ie" value="UTF-8" />
                <span id="key_word">关键词</span>
                <input type="text" name="q" size="31" id="search" />
                <input type="submit" name="sa" value="" id="search_btn1"/>
                </div>
            </form>
        </div>
        <div id="cse-search-results">
            <script type="text/javascript">
                var googleSearchIframeName = "cse-search-results";
                var googleSearchFormName = "cse-search-box";
                var googleSearchFrameWidth = 600;
                var googleSearchDomain = "www.google.com";
                var googleSearchPath = "/cse";
            </script>
            <script type="text/javascript" src="http://www.google.com/afsonline/show_afs_search.js"></script>
		</div>
    </div>
</div>

</body>
</html>
