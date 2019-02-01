<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>

<rapid:override name="title">
    <title>音乐 | ${options.optionSiteTitle}</title>
</rapid:override>
<rapid:override name="breadcrumb">
<!-- 关于本站或者  自定义页面 -->
    <%--面包屑导航 start--%>
    <nav class="breadcrumb">
        <a class="crumbs" href="/">
            <i class="fa fa-home"></i>首页
        </a>
       	<i class="fa fa-angle-right"></i>
   		音乐
    </nav>
    <%--面包屑导航 end--%>
</rapid:override>


<rapid:override name="left">
    <%--博客主体-左侧文章正文 start--%>
    <div id="primary" class="content-area" style="width: 100%">
        <main id="main" class="site-main" role="main" >
            <article class="post" id="post-002" >
                <header class="entry-header">
                    <h1 class="entry-title">
                            	音乐	
                    </h1>
                </header><!-- .entry-header -->
                <div class="entry-content" style="min-height:400px;">
                    <div class="single-content">
                            <div style="width: 100%;text-align: center;">
                            	只提供版权不受限制的
                            <iframe border="0" marginwidth="0" marginheight="0" src="//music.163.com/outchain/player?type=0&amp;id=2270688529&amp;auto=1&amp;height=430" width="100%" height="500" frameborder="no"></iframe></div>
                    </div>

                    <br><br>

                    <footer class="single-footer">
                    
                    </footer><!-- .entry-footer -->


                    <div class="clear"></div>
                </div><!-- .entry-content -->
            </article><!-- #post -->



        </main>
        <!-- .site-main -->
    </div>
    <%--博客主体-左侧文章正文end--%>
</rapid:override>



<%@ include file="../Public/framework2.jsp" %>