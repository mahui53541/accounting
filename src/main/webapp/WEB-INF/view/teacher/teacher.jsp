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
    <script>
        function aclick(that){
            if(that.id=="one"){
                $('#one').attr('class',"active list-group-item list-group-item-info");
                $('#two').attr('class',"list-group-item list-group-item-info");
            }else{
                $('#one').attr('class',"list-group-item list-group-item-info");
                $('#two').attr('class',"active list-group-item list-group-item-info");
            }
        }
    </script>
</head>
<body>
<div class="container-fluid" style="text-align: left;margin-top: 20px;">
    <div class="row">
        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
            <div id="menu" class="list-group">
                <a id="one" href="#home" onclick="aclick(this)" class="active list-group-item list-group-item-info" role="tab" aria-controls="home" data-toggle="tab">教师简介</a>
                <a id="two" href="#profile" onclick="aclick(this)" class="list-group-item list-group-item-info" aria-controls="profile" role="tab" data-toggle="tab">教学奖励</a>
            </div>
        </div>
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
            <div class="tab-content">
                <div role="tabpanel" id="home" class="tab-pane active" style="margin:0 30px;font-family: 楷体 ;font-size: 18px;">
                    <p>
                        &emsp;&emsp;<a target="_blank" href="http://219.219.35.78/Gwork/Teacher/TeacherInfo.aspx?EID=LaosoqV95oZnpRGVg1n!Xm6RHElkGo-H"><b>孙自愿</b></a>
                        ，男，中国矿业大学管理学院教授（破格），
                        硕士生导师，中国人民大学高级访问学者，管理学博士（2006-2009），
                        资源管理方向博士后（2011-2014）。会计学系书记兼副主任，会计学硕士点专业建设负责人，
                        中国矿业大学优秀青年骨干教师（2012-2014），中国矿业大学青年学术带头人（2014-2016），
                        主要从事财务契约、资源型并购整合、首次公开上市（IPO）融资与中国税制等领域的研究工作。
                        主要针对本科生讲授《高级会计学》、《公司理财与财务报表分析》、《会计学》、《经济论文写作》等课程。
                        主要针对研究生讲授《高级财务会计理论与实务》、《会计理论与方法》、《商业伦理与会计职业道德》、
                        MBA《会计学》等课程。现正主持国家社科基金、江苏省教育科学“十三五”规划课题、
                        江苏省2015年度研究生教改课题，主持完成了中国博士后基金、教育部人文社会科学规划基金、
                        江苏省软科学基金、江苏省教育科学“十二五”规划课题等多项课题。出版专著1部，主编教材1部。
                        作为第一作者在《经济评论》、《中国人口资源与环境》、《软科学》、《财务与会计》等期刊发表论文30余篇，
                        其中SCI、EI、CSSCI检索多篇。
                    </p>
                    <p style="margin-top: 20px;">
                        &emsp;&emsp;<a target="_blank" href="http://219.219.35.78/Gwork/Teacher/TeacherInfo.aspx?EID=LaosoqV95obl3bUiV!fiu3Up2L0ATbN4"><b>蒋卫东</b></a>
                        ，男，管理学博士，副教授，硕士生导师，曾任会计学系党支部书记、副主任。
                        厦门大学高等学校青年骨干教师国内访问学者，新西兰惠灵顿维多利亚大学访问学者。
                        先后获得校级优秀教学成果一等奖1项、二等奖3项、三等奖1项；
                        指导研究生学位论文获校级优秀硕士学位论文（2010.6）1项；
                        主持和参与校课程建设与教学改革基金项目3项，多次获得校级和院级优秀教学质量奖。
                    </p>
                    <p style="margin-top: 20px;">
                        &emsp;&emsp;<a target="_blank" href="http://219.219.35.78/Gwork/Teacher/TeacherInfo.aspx?EID=LaosoqV95oZQohje3J4XbRwhTxP9gQkL"><b>李文美</b></a>
                        ，女，1972年5月，江苏泰兴人，管理学博士，副教授。公开发表论文30余篇，
                        中文核心期刊22篇，三篇被人大复印资料《财务与会计导刊》全文转载。
                        所参与建设的《财务分析》课程被评为江苏省优秀研究生课程和省级研究生培养开放课程；
                        所参与的"学生财务综合分析能力培养"教学改革项目获江苏省优秀教学成果一等奖；
                        《财务分析教程》（教材）获江苏省教学成果二等奖。先后获得校级优秀教学成果一等奖一项、二等奖一项、
                        三等奖两项；主持和参与校课程建设与教学改革基金项目五项，多次获得校级和院级优秀教学质量奖。
                    </p>
                    <p style="margin-top: 20px;">
                        &emsp;&emsp;<a target="_blank" href="http://219.219.35.78/Gwork/Teacher/TeacherInfo.aspx?EID=LaosoqV95oZ3dcO2L3Z5FRlhbQ8WbDIE"><b>李秀枝</b></a>
                        ，女，1975年2月，博士，副教授，硕士生导师，主要研究方向为会计理论与实务。
                        其作为主讲人之一的《中级财务会计》课程获得江苏省精品课程。主持校教改项目一项，
                        多次参与校课程建设与教学改革基金项目，多次获得校级和院级优秀教学奖。
                        获“中国煤炭科进步三等奖”一项。2010年和2014年两次获得“中国矿业大学教书育人先进个人”荣誉称号，
                        发表相关论文16篇。
                    </p>
                    <p style="margin-top: 20px;">
                        &emsp;&emsp;<a target="_blank" href="http://219.219.35.78/Gwork/Teacher/TeacherInfo.aspx?EID=LaosoqV95oYxNfulOGcPrRXQJ3cNQUpQ"><b>谢梅</b></a>
                        ，女，36岁，博士，中国矿业大学管理学院讲师、硕士生导师，
                        长期从事政府与非营利组织等特殊行业会计理论与方法等领域的教学与科研工作，
                        发表相关论文19篇；2012-2016年担任《经济评论》杂志的匿名审稿人，
                        2014年担任《中国矿业大学学报（社会科学版）》杂志的匿名审稿人。
                    </p>
                    <p style="margin-top: 20px;">
                        &emsp;&emsp;<b>张涛</b>，男，36岁，博士研究生，中国矿业大学管理学院讲师，研究方向：
                        会计信息管理与网络建设。在核心刊物上发表论文17篇，其中被CSSCI检索3篇；
                        主持江苏省社科联项目1项，参与完成省部级课题多项。
                    </p>
                </div>

                <div role="tabpanel" class="tab-pane" id="profile" style="margin:0 30px;font-family: 楷体 ;font-size: 18px;">
                    <h1 style="text-align: center">教学奖励</h1>
                    <div>
                        <h3>1.中国矿业大学第八批校级优秀青年骨干教师</h3>
                        <img class="img-responsive img-thumbnail" src="${pageContext.request.contextPath}/images/prize/1.png"></img>
                    </div>
                    <div>
                        <h3>2.中国矿业大学第八批校级青年骨干教师考核合格</h3>
                        <img class="img-responsive img-thumbnail" src="${pageContext.request.contextPath}/images/prize/2.png"></img>
                    </div>
                    <div>
                        <h3>3.中国矿业大学2012年教职工考核优秀</h3>
                        <img class="img-responsive img-thumbnail" src="${pageContext.request.contextPath}/images/prize/3.png"></img>
                    </div>
                    <div>
                        <h3>4．教育部高等学校国内访问学者证书</h3>
                        <img class="img-responsive img-thumbnail" src="${pageContext.request.contextPath}/images/prize/4.png"></img>
                    </div>
                    <div>
                        <h3>5.百佳教师荣誉证书</h3>
                        <img class="img-responsive img-thumbnail" src="${pageContext.request.contextPath}/images/prize/5.png"></img>
                    </div>
                    <div>
                        <h3>6.江苏省委党校结业证书</h3>
                        <img class="img-responsive img-thumbnail" src="${pageContext.request.contextPath}/images/prize/6.png"></img>
                    </div>
                    <div>
                        <h3>7.优秀本科论文指导老师</h3>
                        <img class="img-responsive img-thumbnail" src="${pageContext.request.contextPath}/images/prize/7.png"></img>
                    </div>
                    <div>
                        <h3>8.2012年徐州市第十届哲学社会科学研究成果三等奖</h3>
                        <img class="img-responsive img-thumbnail" src="${pageContext.request.contextPath}/images/prize/8.png"></img>
                    </div>
                    <div>
                        <h3>8.2012年徐州市第十届哲学社会科学研究成果三等奖</h3>
                        <img class="img-responsive img-thumbnail" src="${pageContext.request.contextPath}/images/prize/9.png"></img>
                    </div>
                    <div>
                        <h3>9.2016年徐州市第十届哲学社会科学研究成果二等奖</h3>
                        <img class="img-responsive img-thumbnail" src="${pageContext.request.contextPath}/images/prize/9.png"></img>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
</body>
</html>
