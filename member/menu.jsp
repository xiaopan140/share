<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎来到我们的学术交流系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="member/theme/js/jquery.min.js"></script>
  </head>
   
  <style type="text/css">
  .menu dd{
    margin-left: -40px;
  }
  .menu dt:hover{
   cursor: pointer;
  }
  .menu li a {
    text-decoration: none;
    color: rgb(2, 132, 195);
}
.menu ul {
    margin: 0px;
}
.menu li {
    list-style-type: none;
    width: 140px;
    background-color: rgb(179,196,167);
   
    padding: 4px;
    padding-left: 40px;
    border-bottom: solid 1px #FFFFFF;
    font-size: 13px;
   
}
.menu dt {
    width: 150px;
    padding: 4px;
    padding-left: 30px;
    background-color: rgb(0,109,169);
    border-bottom: solid 2px #FFFFFF;
    color: #ffffff;
}
.menu {
    line-height: 26px;
    font-weight: bold;
}

  </style>
  <script type="text/javascript">
   $(document).ready(function () {
			$(".menu dt").click(function(){
			$(this).next().slideToggle("normal");
		}); 
	
});
  </script>
  <body>
   <div>
   <dl class="menu">
   <s:if test="#session.role==1">
   <dt>用户管理</dt>
      <dd>
      <ul>
      <li><a href="user/list.do?role=1" target="right">→管理员列表</a></li>
      <li><a href="user/list.do?role=0" target="right">→用户列表</a></li>
      </ul>
      </dd>
   </s:if>
   <dt>栏目管理</dt>
      <dd>
      <ul>
      <li><a href="channel/list.do" target="right">→栏目列表</a></li>
      </ul>
      </dd>
   
   <dt>文章管理</dt>
       <dd>
       <ul>
       <li><a href="article/add.do" target="right">→新增文章</a></li>
       </ul>
       </dd>
   <s:if test="#session.role==1">
   <dt>公告管理</dt>
       <dd>
       <ul>
       <li><a href="notice/list.do" target="right">→公告列表</a></li>
       </ul>
       </dd>
   </s:if>
   <dt>个人信息管理</dt>
       <dd>
       <ul>
       <li><a href="user/updateMe.do" target="right">→修改个人信息</a></li>
       </ul>
       </dd>
   </dl>
   </div>
  </body>
</html>
