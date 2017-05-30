<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/30
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="text-align: center;margin-top: 20px;">
    <object classid="clsid27CDB6E-AE6D-11cf-96B8-444553540000"
            codebase="//download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0"
            width="777" height="900" align="center">
        <param name="movie" value="${pageContext.request.contextPath}/files/syllabus.swf">
        <param name="quality" value="high">
        <%--<param name="wmode" value="transparent"> <!--这里代码可使Flash背景透明 -->--%>
        <embed src="${pageContext.request.contextPath}/files/syllabus.swf" width="777" height="900"
               align="center"
               quality="high"
               pluginspage="//www.macromedia.com/go/getflashplayer"
               type="application/x-shockwave-flash">
        </embed>
    </object>
</div>
<div style="margin-top: 20px ;margin-left:30px;">
    <a type="button" class="btn btn-link" aria-label="Left Align" href="${pageContext.request.contextPath}/download?filename=syllabus.docx">
        <span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span> 点击下载(教学大纲Word版)
    </a>
    <a type="button" class="btn btn-link" aria-label="Left Align" href="${pageContext.request.contextPath}/download?filename=syllabus.pdf">
        <span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span> 点击下载(教学大纲PDF版)
    </a>
</div>
</body>
</html>
