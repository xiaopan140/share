<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
  </head>
  <frameset rows="100,*,30" frameborder="NO" border="0" framespacing="0">
    <frame src="member/top.jsp" frameborder="0">
    <frameset cols="*,960,*"  frameborder="NO" border="0" framespacing="0">
    	<frame src="about:blank"></frame>
      	<frameset cols="230,*"  frameborder="NO" border="0" framespacing="0">
         	<frame src="member/menu.jsp" frameborder="0">
         	<frame name="right" src="member/welcome.jsp" frameborder="0">
      	</frameset>
    	<frame src="about:blank"></frame>
    	<noframes>
	  	<body>
       	 <p>此网页使用了框架，但您的浏览器不支持框架。</p>
      	</body>
      	</noframes>
  	</frameset>
  	<frame src="member/footer.jsp" frameborder="0"></frame>
  </frameset>
</html>
