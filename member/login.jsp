<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录-学术交流共享系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="member/theme/css/style.css">
  </head>
  
  <body style="margin:0px;">
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
    <form action="login.do" method="post">
    	<center>
    	   <table class="user" style="margin-top:200px;">
    	   	  <tr> <th colspan="2" class="midd">学术交流共享系统</th> </tr>
    	   	  
    	   	  <tr><td class="r">用户名：</td><td><input type="text" name="userName"/></td></tr>
    	   	  <tr><td class="r">密码：</td><td><input type="password" name="password"/></td></tr>
    	   	  <tr> <td></td><td><input type="submit" value="登录" style="width:80px;"/></td> </tr>
    	   	  <tr><td colspan="2" class="midd"><s:actionerror/></td></tr>
    	   </table>
    	</center>
    </form>
     <div class="footer" style="position:absolute;bottom:0px;overflow:auto;z-index:1;">
<div class="m">版权所有，翻版必究</div>
</div>
  </body>
</html>
