<%--
    博客页脚部分
    包括：页脚部分
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %> --%>
<%--页脚 start--%>
<footer id="colophon" class="site-footer" role="contentinfo">
	<!-- 友情链接   start -->
	<c:if test="${linkCustomList != null}">
		<div class="footer-div-a" id="123" style="display: flex; max-width: 1100px; margin: 0 auto; height: auto; padding:10px 10px 10px 10px;border-bottom: 1px dashed #dedede;">
			<div class="footer-div-b" style="">
				<h2>友情链接</h2>
				<c:forEach items="${linkCustomList}" var="l">
					<ul class="lx7">
						<li class="link-f link-name"><a href="${l.linkUrl}" target="_blank"> ${l.linkName} </a></li>
					</ul>
				</c:forEach>
			</div>
		</div>
	</c:if>
	<!-- 友情链接   end -->
	
	<!-- ---------------------------------------------------------------------- -->
	<%--工具栏菜单 start--%>
	<nav id="top-header" style="border-bottom: 0px">
		<div class="top-nav" style="border-bottom: 1px dashed #dedede;">
			<div class="user-login">
				<a href="/map" target="_Blank">站点地图</a> &nbsp;|&nbsp; 
				<a href="https://tongji.baidu.com/web/welcome/ico?s=4e950a5dd7243ac97e882fe04d3fa1f7" target="_Blank">百度统计</a>
			</div>
			<div class="menu-topmenu-container">
				<ul id="menu-topmenu" class="top-menu" style="margin-right: 0px;">
					<c:forEach items="${menuCustomList}" var="m">
						<li class="menu-item">
							<c:if test="${m.menuLevel==1}">
								<a href="${m.menuUrl}" class=""> 
									<i class="${m.menuIcon}"></i> 
									<span class="font-text">${m.menuName}&nbsp;</span>&nbsp;
								</a>
							</c:if>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</nav>
	<%--工具栏菜单 end--%>
	<%--网站信息 start--%>
	<div class="footer-div-a" style="max-width: 1100px; display: flex; margin: 0 auto">
		<div class="footer-div-b footer-div-d">
			<a rel="nofollow">©2018  </a>
			<img class="nofancybox" src="https://blog-1252958858.file.myqcloud.com/2019/01/20171011091220_jhnecdkp.gif" style="border-radius: 5px;"width="15px" height="15px">
			<a href="javascript:void(0)" rel="nofollow" font-size="14px" font-weight="bold">幻凡ss</a>
<!-- 			<i class="fa fa-heartbeat" style="color:red" aria-hidden="true"></i>&nbsp; -->
			<br> 
			<a href="http://www.miibeian.gov.cn/"
				target="_Blank">豫ICP备18024944号-1</a>
		</div>
		<div class="footer-div-b footer-div-c" style="padding-right: 10px; padding-top: 20px; padding-bottom: 7px; text-align: right;">
			<a href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=8JiWkZ6DsJafiJ2RmZzek5_d" target="_Blank" title="邮箱" style="font-size: 19px;"> 
				<i class="fa fa-envelope-o" aria-hidden="true" style="border-radius: 5px;font-size: 18px" ></i>
			</a>&nbsp;&nbsp; 
			<a href="https://github.com/hfanss/" target="_Blank" title="github" style="font-size: 19px;"> 
				<i class="fa fa-github" aria-hidden="true"></i>
			</a>&nbsp;&nbsp; 
			<a href="https://gitee.com/iyohei" target="_Blank" title="码云"> 
				<img class="nofancybox" src="/img/gitee.ico" style="border-radius: 5px;" width="15px" height="15px">
			</a>&nbsp;&nbsp; 
			<a href="https://me.csdn.net/q2158798" target="_Blank" title="CSDN"> 
				<img class="nofancybox" src="/img/csdn.ico" style="border-radius: 5px;"width="15px" height="15px">
			</a>
		</div>
	</div>
	<%--网站信息 end--%>
</footer>
<!-- .site-footer -->
<%--页脚 end--%>

