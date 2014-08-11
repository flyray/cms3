<script type="text/javascript" src="js/common/common.js"></script>
<div id="goTopBtn"></div>
<!--01.top 开始-->
	
	<div id="nav_back">
	        <ul id="nav" class="center">
	        	 	 <li><a href="/">首页</a></li>
		        	 <#list header.menus as menu>
			        	 <li>
		                    <a href="${menu.menuLink}" title="${menu.menuName}">${menu.menuName}</a>
		                    <ul>
			                    <#list header.subMenus as subMenu>
				                        <#if subMenu.menuID==menu.menuID>
				                        	<li><a href="${subMenu.subMenuLink}" title="${subMenu.subMenuName}">${subMenu.subMenuName}</a></li>
				                        </#if> 
			                    </#list>
		                    </ul>
			           	 </li>
		        	 </#list>
	        	 <li><a href="#nogo">信息平台</a>
					<ul>
						<li><a href="http://www.job.sdu.edu.cn/html/news/2013/12/09/news-2770.html">服务平台</a></li>
						<li><a href="http://job.sdu.edu.cn/html/news/2013/12/09/news-2763.html">友情链接</a></li>
					</ul>
				 </li>
	        </ul>
	</div>
	<!--01.2subNav end -->
	<div id="top_down" class="center clear">
		<img id="logo" class=".png_bg" src="images/common/logo.png"/>
	   <form  action="news_findByKeyWords" method="get">
		    	<input id="keywords" name="keywords" placeholder="Search……"/>
		 	 	<input id="search_btn"  value=" "  type="submit"/>
	  	</form>
	</div>

<!--01.top 结束-->
