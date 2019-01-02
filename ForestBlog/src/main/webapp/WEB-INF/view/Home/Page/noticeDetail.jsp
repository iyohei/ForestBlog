<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>

<rapid:override name="header-style">
    <style>
        .entry-title {
            background: #f8f8f8;
        }
    </style>
</rapid:override>
<rapid:override name="title">
    <title>每日名言 | ${options.optionSiteTitle}</title>
</rapid:override>

<rapid:override name="breadcrumb">
    <%--面包屑导航 start--%>
    <nav class="breadcrumb">
        <a class="crumbs" href="/">
            <i class="fa fa-home"></i>首页
        </a>
        <i class="fa fa-angle-right"></i>
        每日名言
        <i class="fa fa-angle-right"></i>
        正文
    </nav>
    <%--面包屑导航 end--%>
</rapid:override>


<rapid:override name="left">
    <%--博客主体-左侧文章正文 start--%>
    <div id="primary" class="content-area">
        <main id="main" class="site-main" role="main">
            <article class="post" id="post-002" style="min-height: 500px;">
                <header class="entry-header">
                	<c:forEach items="${noticeCustom }" var="notice">
	                    <h1 class="entry-title">
	                           ${notice.noticeTitle} <a style="font-size:10px;float: right;"><fmt:formatDate value="${notice.noticeCreateTime}" pattern="yyyy年MM月dd日"/> </a>
	                    </h1>
	                    <%-- <div class="single-cat-tag">
	                            <div class="single-cat">日期：<fmt:formatDate value="${notice.noticeCreateTime}" pattern="yyyy年MM月dd日"/>
	                            </div>
	                     </div> --%>
                     </c:forEach>
                </header><!-- .entry-header -->
                <div class="entry-content">
                    <%-- <div class="single-content">
                            ${noticeCustom.noticeContent}
                    </div> --%>
					
                    <br><br>

                    <footer class="single-footer">
                        <ul class="single-meta">
                            <li class="r-hide">
                                <a href="javascript:pr()" title="侧边栏">
                                    <i class="fa fa-caret-left"></i>
                                    <i class="fa fa-caret-right"></i>
                                </a>
                            </li>
                        </ul>
                        <!-- <ul id="fontsize">
                            <li>A+</li>
                        </ul> -->
                        
                    </footer><!-- .entry-footer -->


                    <div class="clear"></div>
                </div><!-- .entry-content -->
            </article><!-- #post -->



        </main>
        <!-- .site-main -->
    </div>
    <%--博客主体-左侧文章正文end--%>
</rapid:override>



<%@ include file="../Public/framework.jsp" %>