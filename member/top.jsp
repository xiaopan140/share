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
	<link rel="stylesheet" type="text/css" href="theme/css/style.css">
  </head>
  <body>
<div class="top">
<div class="head">
<a href="index.do" target="_top">首页</a>
<s:if test="#session.userName!=null">
  欢迎回来！<s:property value="#session.userName"></s:property>
  &nbsp;<a href="user/main.do" target="_top">个人中心</a>
  &nbsp;<a href="user/loginout.do" target="_top">注销</a>
</s:if>
<s:else>
  <a href="member/login.jsp" target="_top">登录</a> | <a href="register.do" target="_top">注册</a>
</s:else>
</div>
</div>
</body>