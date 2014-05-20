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
    
    <title>会员注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="theme/css/style.css">
  <style type="text/css">
	.r{text-align:right;}
	.midd{text-align:center;}
	.error{color:red;font-weight: bold;}
	</style>
  </head>
  
  <body>
    <%@ include file="/head.jsp"%>
  <div class="main">
  位置：<a href="index.do">返回首页</a>>>会员注册
	<form action="register.do" method="post">
    	<center>
    	   <table class="user">
    	   	  <tr> <th colspan="2" class="midd">用户注册</th> </tr>
    	   	  <tr><td class="r">用户名：</td><td><input type="text" name="userName"/><s:fielderror><s:param>userName</s:param></s:fielderror></td></tr>
    	   	  <tr><td class="r">密码：</td><td><input type="password" name="password"/></td></tr>
    	   	  <tr><td class="r">确认密码：</td><td><input type="password" name="password2"/><s:fielderror><s:param>password</s:param></s:fielderror></td></tr>
    	   	  <tr><td class="r">电子邮箱：</td><td><input type="text" name="email"/><s:fielderror><s:param>email</s:param></s:fielderror></td></tr>
    	   	  <tr>  <td>&nbsp;</td><td><input type="submit" value="注册" style="width:80px;"/></td> </tr>
    	   </table>
    	</center>
    </form>
    </div>
     <%@ include file="/footer.jsp"%>
  </body>
</html>
