<%--
    博客顶部部分
    包括：顶部菜单，主要菜单(包括搜索按钮)，面包屑
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?4e950a5dd7243ac97e882fe04d3fa1f7";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
<%--导航 start--%>
<header id="masthead" class="site-header" >

    <%--主要菜单 satrt--%>
    <div id="menu-box"  style="position: fixed;background: rgba(255, 255, 255, 0.7);">
        <div id="top-menu">
                <span class="nav-search">
						搜索
                </span>
            <div class="logo-site">
                <a href="/admin" title="${options.optionSiteTitle}">
            	<img  src="https://blog-1252958858.file.myqcloud.com/2018/12/uugai.com_1546228193719.png" title="${options.optionSiteTitle}" rel="home">
            	</a>
            </div><!-- .logo-site -->
            <div id="site-nav-wrap">
                <div id="sidr-close">
                    <a href="#sidr-close" class="toggle-sidr-close">×</a>
                </div>
                <nav id="site-nav" class="main-nav" style="font-size:14px;font-weight: bold;">
                    <a href="#sidr-main" id="navigation-toggle" class="bars">
                        <i class="fa fa-bars"></i>
                    </a>
                    <div class="menu-pcmenu-container">
                        <ul id="menu-pcmenu" class="down-menu nav-menu sf-js-enabled sf-arrows">

                            <li>
                                <a href="/">
<!--                                     <i class="fa-home fa"></i> -->
                                    <span class="font-text">首页</span>
                                </a>
                            </li>

                            <c:forEach items="${categoryList}" var="category">
                                <c:if test="${category.categoryPid==0}">
                                    <li>
                                        <a href="/category/${category.categoryId}">
                                            <i class="${category.categoryIcon}"></i>
                                            <span class="font-text">${category.categoryName}&nbsp;</span>
                                        </a>
                                        <ul class="sub-menu">
                                            <c:forEach items="${categoryList}" var="cate">
                                                <c:if test="${cate.categoryPid==category.categoryId}">
                                                    <li class="zidingyi003">
                                                        <a href="/category/${cate.categoryId}" target="_blank">${cate.categoryName}</a>
                                                    </li>
                                                </c:if>
                                            </c:forEach>
                                        </ul>
                                    </li>
                                </c:if>
                            </c:forEach>
                            <%--主要菜单其余部分--%>
                            <c:forEach items="${menuCustomList}" var="m">
                                <c:if test="${m.menuLevel==2}">
                                    <li>
                                        <a href="${m.menuUrl}">
                                            <i class="${m.menuIcon}"></i>
                                            <span class="font-text">${m.menuName}&nbsp;</span>
                                        </a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="clear"></div>
        </div><!-- #top-menu -->
    </div><!-- #menu-box -->
    <%--主要菜单 satrt--%>

</header><!-- #masthead -->
<%--导航 end start--%>

<%--搜索框 start--%>
<div id="search-main">
    <div class="searchbar">
        <form method="get" id="searchform" action="/search">
                <span>
                    <input type="text" value="" name="query" id="s" placeholder="输入搜索内容" required="">
                    <button type="submit" id="searchsubmit">搜索</button>
                </span>
        </form>
    </div>
    <div class="clear"></div>
</div>
<%--搜索框 end--%>
<rapid:block name="breadcrumb"></rapid:block>
<%--右下角联系我   start--%>
<div class="container">
            <div class="demo">
                <div id="service">
                    <ul>
                    	<li id="btn1">
                            <a  class="bottom_btn" id="bottom_btn" href="javascript:void(0)" >
                               <!--  <div class="hides" style="width:161px;display:none">
                                    <img src="../css/menu/ll06.png" width="161" height="39" />
                                </div> -->
<!--                                 <img src="../css/menu/l06.png" width="37" height="39"/> -->
                                <i class="fa fa-chevron-down" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li>
                            <a class="weixin_btn weixin_area" id="weixin"  href="javascript:void(0)">
								<i class="fa fa-weixin" aria-hidden="true"></i>
                            	<img src="${options.optionAboutsiteWechat}" width="145" class="weixin_img" style="display:none;margin:-100px 57px 0 0" />
                            </a>
                        </li>
                        <li>
                            <a  class="qq_btn" href="http://wpa.qq.com/msgrd?V=3&amp;uin=${options.optionAboutsiteQq}&amp;Site=QQ&amp;Menu=yes" target="_blank">
                            	<i class="fa fa-qq" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li id="btn2">
                            <a class="top_btn" id="top_btn" href="javascript:void(0)">
                                <i  class="fa fa-chevron-up" aria-hidden="true"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
<%--右下角联系我   end--%>


<%--图片放大显示层  start--%>
<div id="showImg" style="text-align:center;  display:none;  z-index:999;  width:100%;height: 100%;background-color: rgb(77, 77, 77,0.8);position: fixed; top: 0px;left: 0px;right: 0px; bottom: 0px;margin: auto;">
	<div style="width: 60%;height:60%;text-align: center;position: fixed;top: 0px;left: 0px;right: 0px;bottom: 0px;margin: auto;">
		<a href="javascript:void(0);">
			<img id="showImg_img"  src="" style="max-width: 100%;max-height: 100%;">
		</a>
	</div>

</div>


<%--图片放大显示层   end--%>



