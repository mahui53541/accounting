<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/20
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="utf-8">
    <title>高级会计学</title>
    <%@include file="/public/bootstrap.jspf"%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/show.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/show.js"></script>

    <script type="text/javascript">
      $(function(){
          $.ajax({
              url:'${pageContext.request.contextPath}/resource/query',
              dataType:'json',
              success:function(data){
                if(data.status=="success"){
                    var array=data.data;
                    for(var i=0;i<array.length;i++){
                        var resource=array[i];
                        var html="<a href='${pageContext.request.contextPath}/resource/getDetail?parentResourceSn="+resource.resourceSn+"' class='list-group-item list-group-item-info'>"+resource.resourceName+"</a>";
                        $("#menu").append(html);
                    }
                }
              }
          })
          $(".gallery").flipping_gallery({
              enableScroll: true,
              autoplay: 2000
          });
      })

    </script>
  </head>
  <body style="padding:0 8%">
  <div class="container-fluid" style="background:#193368;text-align:left;">
      <img src="${pageContext.request.contextPath}/images/base/cumt-logo.png">
      <img src="${pageContext.request.contextPath}/images/base/info.png">
  </div>
  <div class="container-fluid" style="background: url('${pageContext.request.contextPath}/images/base/background.jpg') no-repeat;">
    <div class="row">
      <div class="col-xs-4 col-md-4 col-lg-4" style="text-align: left;">
        <div>
          <img src="${pageContext.request.contextPath}/images/base/header.png">
        </div>
        <div class="panel panel-info">
          <!-- Default panel contents -->
          <div class="panel-heading"><h4>特色项目</h4></div>

          <div id="menu" class="list-group">
            <%--<a href="#" class="list-group-item list-group-item-info">--%>
              <%--Cras justo odio--%>
            <%--</a>--%>
            <%--<a href="#" class="list-group-item list-group-item-info">Dapibus ac facilisis in</a>--%>
            <%--<a href="#" class="list-group-item list-group-item-info">Morbi leo risus</a>--%>
            <%--<a href="#" class="list-group-item list-group-item-info">Porta ac consectetur ac</a>--%>
            <%--<a href="#" class="list-group-item list-group-item-info">Vestibulum at eros</a>--%>
          </div>
        </div>
      </div>
      <div class="gallery col-xs-6 col-md-6 col-lg-6" style="height:100%;">
        <a href="#" data-caption="素材1"><img src="${pageContext.request.contextPath}/images/show/1.jpg"></a>

        <a href="#" data-caption="素材2"><img src="${pageContext.request.contextPath}/images/show/2.jpg"></a>

        <a href="#" data-caption="素材3"><img src="${pageContext.request.contextPath}/images/show/3.jpg"></a>

        <a href="#" data-caption="素材4"><img src="${pageContext.request.contextPath}/images/show/4.jpg"></a>

        <a href="#" data-caption="素材5"><img src="${pageContext.request.contextPath}/images/show/5.jpg"></a>
      </div>
    </div>
  </div>
  </body>
</html>
