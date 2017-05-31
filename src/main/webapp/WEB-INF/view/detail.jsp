<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/20
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <meta charset="utf-8">
    <title>详情</title>
    <%@include file="/public/bootstrap.jspf"%>
    <style>
      .main-nav {
        background: #133A61;
        height: 50px;
        min-height: 50px;
        padding: 0;
        box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.24);
        border-radius: 0;
      }
      .navbar-toggle {
        background-color: #080808;
      }
      .navbar-toggle .icon-bar {
        background-color: #fff;
      }
      .nav > li{
        background-color: #133A61;
      }
      .nav > li > a {
        color: #fff;
      }
      .nav > li.active,
      .nav > li > a:hover,
      .nav > li > a:focus,
      .nav .open > a,
      .nav .open > a:hover,
      .nav .open > a:focus {
        color: #fff;
        background-color: #777;
      }
      .footer {
        text-align: right;
        background: #EEEEEE;
        color: #BABABA;
        padding:5px;
      }
    </style>
    <script type="text/javascript">
      $(function(){
          //console.log("${requestScope.status}")
          //console.log($.parseJSON( '${requestScope.data}' ))
          <%--var activeLink="";--%>
          <%--if("${requestScope.status}"!=null && "${requestScope.status}"=="success" && "${requestScope.data}"!=null){--%>
              <%--activeLink="${requestScope.data.resourceSn}";--%>
          <%--}else{--%>
              <%--activeLink="sbbg";--%>
          <%--}--%>
          <%--$.ajax({--%>
              <%--url:'${pageContext.request.contextPath}/resource/query',--%>
              <%--dataType:'json',--%>
              <%--success:function(data){--%>
                  <%--if(data.status=="success"){--%>
                      <%--var array=data.data;--%>
                      <%--for(var i=0;i<array.length;i++){--%>
                          <%--var resource=array[i];--%>
                          <%--var html="";--%>
                          <%--if(resource.resourceSn==activeLink){--%>
                              <%--html="<li class='active'><a href='${pageContext.request.contextPath}/resource/getDetail?parentResourceSn="+resource.resourceSn+"'>"+resource.resourceName+"</a></li>";--%>
                          <%--}else{--%>
                              <%--html="<li><a href='${pageContext.request.contextPath}/resource/getDetail?parentResourceSn="+resource.resourceSn+"'>"+resource.resourceName+"</a></li>";--%>
                          <%--}--%>

                          <%--$("#menu").append(html);--%>
                      <%--}--%>
                  <%--}--%>
              <%--}--%>
          <%--})--%>
//          $('#content').append();
      })

    </script>
  </head>
  <body style="padding:0 10%;background: #454D58">
    <div class="container-fluid" style="background:#193368;display: flex;justify-content: flex-start;">
      <div style="display: flex;flex-direction: column;">
        <div>
          <img src="${pageContext.request.contextPath}/images/base/cumt-logo.png" style="width:250px;">
        </div>
        <div>
          <img src="${pageContext.request.contextPath}/images/base/info.png" style="width:250px;">
        </div>
      </div>
      <div>
        <img src="${pageContext.request.contextPath}/images/base/header2.png" style="margin-left:50px;margin-top: 20px;">
      </div>
    </div>
    <%--nav bar--%>
    <div class="navbar main-nav">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul id="menu" class="nav navbar-nav">
            <li><a href='${pageContext.request.contextPath}/'>首页</a></li>
            <c:choose>
              <c:when test="${requestScope.status!=null && requestScope.status=='success'&&requestScope.data!=null}">
                <c:forEach items="${requestScope.menu}" var="menu">
                  <li class="${menu.resourceSn==requestScope.data.resourceSn?'active':''}"><a href='${pageContext.request.contextPath}/resource/${menu.resourceSn}'>${menu.resourceName}</a></li>
                </c:forEach>
              </c:when>
              <c:otherwise>
                <c:forEach items="${requestScope.menu}" var="menu">
                  <li class="${menu.resourceSn=='sbbg'?'active':''}"><a href='${pageContext.request.contextPath}/resource/${menu.resourceSn}'>${menu.resourceName}</a></li>
                </c:forEach>
              </c:otherwise>
            </c:choose>

          </ul>

        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </div>
    <div id="content" class="container-fluid" style="margin-top: -18px;background: #EDEDED">
      <c:choose>
        <c:when test="${requestScope.status!=null && requestScope.status=='success'&&requestScope.data.resourceUrl!=null}">
          <jsp:include page="${requestScope.data.resourceUrl}"></jsp:include>
        </c:when>
        <c:otherwise>
          <jsp:include page="application/application.jsp"></jsp:include>
        </c:otherwise>
      </c:choose>

    </div>
    <div class="footer">
      <span>中国矿业大学管理学院电子商务实验室制作&copy;2017&nbsp;&nbsp;&nbsp;&nbsp;</span>
    </div>
  </body>
</html>
