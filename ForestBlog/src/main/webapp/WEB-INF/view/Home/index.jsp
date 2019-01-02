<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="/WEB-INF/myTag.tld" prefix="lyz" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<!--------------------------------------------------------------------------->
<!--------------------------------------------------------------------------->
<!--　　　　　　　　　　　　　　　未来不迎，过往不恋　　　　　　　　　　　　　　　-->
<!--------------------------------------------------------------------------->
<!--　　　　　　　　　　　　　　　不忘初心，方得始终　　　　　　　　　　　　　　　-->
<!--------------------------------------------------------------------------->
<!----IT小青年--------------------------------------------------------------->
<!--------幻凡ss------------------------------------------------------------->
<!----------hfanss.com------------------------------------------------------->
<!-----------联系我:hfans@foxmail.com----------------------------------------->
<!--------------------------------------------------------------------------->
<!--　　　　　　　　　　哎哟，迫不及待要看代码了？　　　　　　　　　　　　　　　　-->
<!--　　　　　别着急，心平气和，慢慢往下拉，有不会的可以问我！　　　　　　　　　　-->
<!--　　当然，虽然我也不怎么精通前端。。。。。嘻嘻😄　😄　😄　😄　😄　😄　　　　　-->
<script async src="https://busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>
    <rapid:override name="breadcrumb">
        <nav class="breadcrumb">
            <div class="bull"><i class="fa fa-volume-up" style="padding-top: 5px;"></i>&nbsp;每日名言:</div>
            <div id="scrolldiv">
                <div class="scrolltext">
                    <ul style="margin-top: 0px;">
                        <c:forEach items="${noticeCustomList}" var="n">
                            <li class="scrolltext-title">
                                <a href="/notice/${n.noticeId}" rel="bookmark"
                                >${n.noticeTitle}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </nav>
    </rapid:override>
	
    <rapid:override name="left">
        <div id="primary" class="content-area">

            <main id="main" class="site-main" role="main">
                <c:forEach items="${articleListVoList}" var="a">

                    <article  class="post type-post">

                        <figure class="thumbnail">
                            <a href="/article/${a.articleCustom.articleId}" title="${a.articleCustom.articleTitle}">
                                <img width="280" height="280"
                                     src=" ${a.articleCustom.articleImg}"
                                     class="attachment-content size-content wp-post-image"
                                     alt="${a.articleCustom.articleTitle}">
                            </a>
                            <span class="cat">
                                <a href="/category/${a.categoryCustomList[a.categoryCustomList.size()-1].categoryId}">
                                        ${a.categoryCustomList[a.categoryCustomList.size()-1].categoryName}
                                </a>
                            </span>
                        </figure>

                        <header class="entry-header">
                            <h2 class="entry-title">
                                <a href="/article/${a.articleCustom.articleId}"
                                   rel="bookmark">
                                        ${a.articleCustom.articleTitle}
                                </a>
                            </h2>
                        </header>

                        <div class="entry-content">
                            <div class="archive-content">
                                <lyz:htmlFilter>${a.articleCustom.articleContent}</lyz:htmlFilter>......
                            </div>
                            <span class="new-icon">
                                    <c:choose>
                                        <c:when test="${a.articleCustom.articleStatus==2}">
                                            <i class="fa fa-bookmark-o"></i>
                                        </c:when>
                                        <c:otherwise>
                                            <jsp:useBean id="nowDate" class="java.util.Date"/>
                                            <c:set var="interval"
                                                   value="${nowDate.time - a.articleCustom.articlePostTime.time}"/><%--时间差毫秒数--%>
                                            <fmt:formatNumber value="${interval/1000/60/60/24}" pattern="#0"
                                                              var="days"/>
                                            <c:if test="${days <= 7}">NEW</c:if>
                                        </c:otherwise>
                                    </c:choose>


                                </span>
                            <span class="entry-meta">
                                    <span class="date">
                                        <fmt:formatDate value="${a.articleCustom.articlePostTime}" pattern="yyyy年MM月dd日"/>
                                    &nbsp;&nbsp;
                                    </span>
                                    <span class="views">
                                        <i class="fa fa-eye"></i>
                                            ${a.articleCustom.articleViewCount}
                                    </span>
                                    <span class="comment">&nbsp;&nbsp;
                                        <a href="/article/${a.articleCustom.articleId}#comments" rel="external nofollow">
                                          <i class="fa fa-comment-o"></i>
                                            <c:choose>
                                                <c:when test="${a.articleCustom.articleCommentCount==0}">
                                                    发表评论
                                                </c:when>
                                                <c:otherwise>
                                                    ${a.articleCustom.articleCommentCount}
                                                </c:otherwise>
                                            </c:choose>

                                        </a>
                                    </span>
                                </span>
                            <div class="clear"></div>
                        </div><!-- .entry-content -->

                        <span class="entry-more">
                                <a href="/article/${a.articleCustom.articleId}"
                                   rel="bookmark">
                                    阅读全文
                                </a>
                            </span>
                    </article>
                </c:forEach>
            </main>

            <c:if test="${articleListVoList[0].page.totalPageCount>1}">
            <nav class="navigation pagination" role="navigation">
                <div class="nav-links">
                    <c:choose>
                        <c:when test="${articleListVoList[0].page.totalPageCount <= 3 }">
                            <c:set var="begin" value="1"/>
                            <c:set var="end" value="${articleListVoList[0].page.totalPageCount }"/>
                        </c:when>
                        <c:otherwise>
                            <c:set var="begin" value="${articleListVoList[0].page.pageNow-1 }"/>
                            <c:set var="end" value="${articleListVoList[0].page.pageNow + 2}"/>
                            <c:if test="${begin < 2 }">
                                <c:set var="begin" value="1"/>
                                <c:set var="end" value="3"/>
                            </c:if>
                            <c:if test="${end > articleListVoList[0].page.totalPageCount }">
                                <c:set var="begin" value="${articleListVoList[0].page.totalPageCount-2 }"/>
                                <c:set var="end" value="${articleListVoList[0].page.totalPageCount }"/>
                            </c:if>
                        </c:otherwise>
                    </c:choose>
                        <%--上一页 --%>
                    <c:choose>
                        <c:when test="${articleListVoList[0].page.pageNow eq 1 }">
                            <%--当前页为第一页，隐藏上一页按钮--%>
                        </c:when>
                        <c:otherwise>
                            <a class="page-numbers" href="/p/${articleListVoList[0].page.pageNow-1}" >
                                <span class="fa fa-angle-left"></span>
                            </a>
                        </c:otherwise>
                    </c:choose>
                        <%--显示第一页的页码--%>
                    <c:if test="${begin >= 2 }">
                        <a class="page-numbers" href="/p/1">1</a>
                    </c:if>
                        <%--显示点点点--%>
                    <c:if test="${begin  > 2 }">
                        <span class="page-numbers dots">…</span>
                    </c:if>
                        <%--打印 页码--%>
                    <c:forEach begin="${begin }" end="${end }" var="i">
                        <c:choose>
                            <c:when test="${i eq articleListVoList[0].page.pageNow }">
                                <a class="page-numbers current" >${i}</a>
                            </c:when>
                            <c:otherwise>
                                <a  class="page-numbers" href="/p/${i}">${i }</a>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                        <%-- 显示点点点 --%>
                    <c:if test="${end < articleListVoList[0].page.totalPageCount-1 }">
                        <span class="page-numbers dots">…</span>
                    </c:if>
                        <%-- 显示最后一页的数字 --%>
                    <c:if test="${end < articleListVoList[0].page.totalPageCount }">
                        <a href="/p/${articleListVoList[0].page.totalPageCount}">
                                ${articleListVoList[0].page.totalPageCount}
                        </a>
                    </c:if>
                        <%--下一页 --%>
                    <c:choose>
                        <c:when test="${articleListVoList[0].page.pageNow eq articleListVoList[0].page.totalPageCount }">
                            <%--到了尾页隐藏，下一页按钮--%>
                        </c:when>
                        <c:otherwise>
                            <a class="page-numbers" href="/p/${articleListVoList[0].page.pageNow+1}">
                                <span class="fa fa-angle-right"></span>
                            </a>
                        </c:otherwise>
                    </c:choose>

                </div>
            </nav>
                <%--分页 end--%>
            </c:if>
        </div>
    </rapid:override>
    <%--左侧区域 end--%>
    
	<%--友情链接 start--%>
    <rapid:override name="link">
        <div class="links-box">
            <div id="links">
                <c:forEach items="${linkCustomList}" var="l">
                    <ul class="lx7">
                        <li class="link-f link-name">
                            <a href="${l.linkUrl}" target="_blank"
                            	<c:if test="${l.linkId%5==0}">
                                		style="color: #FF83FA"
                                </c:if>
                                <c:if test="${l.linkId%5==1}">
                                		style="color: #DC143C"
                                </c:if>
                                <c:if test="${l.linkId%5==2}">
                                		style="color: #CAFF70"
                                </c:if>
                                <c:if test="${l.linkId%5==3}">
                                		style="color: #BFEFFF"
                                </c:if>
                                <c:if test="${l.linkId%5==4}">
                                		style="color: #9ACD32"
                                </c:if>
                               >${l.linkName}</a>
                        </li>
                    </ul>
                </c:forEach>
                <div class="clear"></div>
            </div>
        </div>
    </rapid:override>
    <%--友情链接 end--%>
    
    <%--侧边栏 start--%>
    <rapid:override name="right">
        <%@include file="Public/part/sidebar-2.jsp" %>
    </rapid:override>

     

<%@ include file="Public/framework.jsp" %>
