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
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.1/bootstrap-table.min.css">
    <script src="//cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.1/bootstrap-table.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.1/locale/bootstrap-table-zh-CN.min.js"></script>
    <script>
        function aclick(that){
            if(that.id=="one"){
                $('#one').attr('class',"active list-group-item list-group-item-info");
                $('#two').attr('class',"list-group-item list-group-item-info");
                $('#three').attr('class',"list-group-item list-group-item-info");
            }else if(that.id=="two"){
                $('#one').attr('class',"list-group-item list-group-item-info");
                $('#two').attr('class',"active list-group-item list-group-item-info");
                $('#three').attr('class',"list-group-item list-group-item-info");
            }else{
                $('#one').attr('class',"list-group-item list-group-item-info");
                $('#two').attr('class',"list-group-item list-group-item-info");
                $('#three').attr('class',"active list-group-item list-group-item-info");
            }
        }
        Date.prototype.format = function(format)
        {
            var o = {
                "M+" : this.getMonth()+1, //month
                "d+" : this.getDate(),    //day
                "h+" : this.getHours(),   //hour
                "m+" : this.getMinutes(), //minute
                "s+" : this.getSeconds(), //second
                "q+" : Math.floor((this.getMonth()+3)/3),  //quarter
                "S" : this.getMilliseconds() //millisecond
            }
            if(/(y+)/.test(format)) format=format.replace(RegExp.$1,
                (this.getFullYear()+"").substr(4 - RegExp.$1.length));
            for(var k in o)if(new RegExp("("+ k +")").test(format))
                format = format.replace(RegExp.$1,
                    RegExp.$1.length==1 ? o[k] :
                        ("00"+ o[k]).substr((""+ o[k]).length));
            return format;
        }
        $(function(){
            $('#table1').bootstrapTable({
                url : '${pageContext.request.contextPath}/exercises/query',
                pagination : true,
                queryParams:{
                    exercisesType:'练习题'
                },
                sidePagination : 'server',
                striped : true,
                height:450,
                showColumns : true,
                showRefresh : true,
                showToggle : true,
                showPaginationSwitch : true,
                idField : 'id',
                clickToSelect : true,
                singleSelect : true,
                pageNumber : 1,
                pageSize : 10,
                pageList : [ 10, 15, 20, 'ALL' ],
                dataField : 'rows',
                totalField : 'total',
                columns : [{
                    field : 'exercisesType',
                    title : '资料类型',
                    align:'center'
                }, {
                    field : 'uploadTime',
                    title : '上传时间',
                    align:'center',
                    formatter:function(value,row,index){
                        return new Date(value).format('yyyy-MM-dd');
                    }
                }, {
                    field : 'exercisesName',
                    title : '资料名称',
                    align:'center'
                }, {
                    field : 'download',
                    title : '资料下载',
                    align:'center',
                    formatter:function(value,row,index){
                        return '<a type="button" class="btn btn-link" aria-label="Left Align" href="${pageContext.request.contextPath}/exercises/download?filename='+row.exercisesUrl+'&&newName='+row.exercisesName+'">'
                            +'<span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span> 点击下载</a>'
                    }
                }]
            });
            $('#table2').bootstrapTable({
                url : '${pageContext.request.contextPath}/exercises/query',
                pagination : true,
                queryParams:{
                    exercisesType:'案例题'
                },
                sidePagination : 'server',
                striped : true,
                height:450,
                showColumns : true,
                showRefresh : true,
                showToggle : true,
                showPaginationSwitch : true,
                idField : 'id',
                clickToSelect : true,
                singleSelect : true,
                pageNumber : 1,
                pageSize : 10,
                pageList : [ 10, 15, 20, 'ALL' ],
                dataField : 'rows',
                totalField : 'total',
                columns : [{
                    field : 'exercisesType',
                    title : '资料类型',
                    align:'center'
                }, {
                    field : 'uploadTime',
                    title : '上传时间',
                    align:'center',
                    formatter:function(value,row,index){
                        return new Date(value).format('yyyy-MM-dd');
                    }
                }, {
                    field : 'exercisesName',
                    title : '资料名称',
                    align:'center'
                }, {
                    field : 'download',
                    title : '资料下载',
                    align:'center',
                    formatter:function(value,row,index){
                        return '<a type="button" class="btn btn-link" aria-label="Left Align" href="${pageContext.request.contextPath}/download?filename='+row.exercisesUrl+'">'
                            +'<span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span> 点击下载</a>'
                    }
                }]
            });
            $('#table3').bootstrapTable({
                url : '${pageContext.request.contextPath}/exercises/query',
                pagination : true,
                queryParams:{
                    exercisesType:'试卷'
                },
                sidePagination : 'server',
                striped : true,
                height:450,
                showColumns : true,
                showRefresh : true,
                showToggle : true,
                showPaginationSwitch : true,
                idField : 'id',
                clickToSelect : true,
                singleSelect : true,
                pageNumber : 1,
                pageSize : 10,
                pageList : [ 10, 15, 20, 'ALL' ],
                dataField : 'rows',
                totalField : 'total',
                columns : [{
                    field : 'exercisesType',
                    title : '资料类型',
                    align:'center'
                }, {
                    field : 'uploadTime',
                    title : '上传时间',
                    align:'center',
                    formatter:function(value,row,index){
                        return new Date(value).format('yyyy-MM-dd');
                    }
                }, {
                    field : 'exercisesName',
                    title : '资料名称',
                    align:'center'
                }, {
                    field : 'download',
                    title : '资料下载',
                    align:'center',
                    formatter:function(value,row,index){
                        return '<a type="button" class="btn btn-link" aria-label="Left Align" href="${pageContext.request.contextPath}/download?filename='+row.exercisesUrl+'">'
                            +'<span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span> 点击下载</a>'
                    }
                }]
            });
        })
    </script>
</head>
<body>
<div class="container-fluid" style="text-align: left;margin-top: 20px;">
    <div class="row">
        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
            <div id="menu" class="list-group">
                <a id="one" href="#practise" onclick="aclick(this)" class="active list-group-item list-group-item-info" role="tab" aria-controls="practise" data-toggle="tab">练习题</a>
                <a id="two" href="#selftest" onclick="aclick(this)" class="list-group-item list-group-item-info" aria-controls="selftest" role="tab" data-toggle="tab">案例题</a>
                <a id="three" href="#papers" onclick="aclick(this)" class="list-group-item list-group-item-info" aria-controls="papers" role="tab" data-toggle="tab">试卷</a>
            </div>
        </div>
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
            <div class="tab-content">
                <div role="tabpanel" id="practise" class="tab-pane active" style="margin:0 30px;font-family: 楷体 ;">
                    <table id="table1"></table>
                </div>

                <div role="tabpanel" class="tab-pane" id="selftest" style="margin:0 30px;font-family: 楷体 ;font-size: 18px;">
                    <table id="table2"></table>
                </div>

                <div role="tabpanel" class="tab-pane" id="papers" style="margin:0 30px;font-family: 楷体 ;font-size: 18px;">
                    <table id="table3"></table>
                </div>
            </div>
        </div>
    </div>

</div>
</body>
</html>

