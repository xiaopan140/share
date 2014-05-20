<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改个人信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="member/theme/css/style.css">

  <style type="text/css">
	.r{text-align:right;}
	</style>
  </head>
  
  <body>
    位置：修改个人信息
	<form action="user/updateMe.do" method="post">
    	<center>
    	   <table class="user">
    	   	  <tr> <th colspan="2" class="midd">修改个人信息</th> </tr>
    	   	  
    	   	  <tr><td class="r">用户名：</td><td>${userName}</td></tr>
    	   	  <tr><td class="r">新密码：</td><td><input type="password" name="password"/></td></tr>
    	   	  <tr><td class="r">确认新密码：</td><td><input type="password" name="password2"/><s:fielderror><s:param>password</s:param></s:fielderror></td></tr>
    	   	  <tr><td class="r">电子邮箱：</td><td><input type="text" name="email" value="${email}"/><s:fielderror><s:param>email</s:param></s:fielderror></td></tr>
    	 
    	   	  <tr><td>&nbsp;</td><td><input type="submit" value="修改" style="width:80px;"/></td> </tr>
    	   </table>
    	</center>
    </form>
  </body>
</html>
