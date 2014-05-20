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
    
    <title>添加<s:if test="role==0">会员</s:if><s:else>管理员</s:else></title>
    
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
   位置：<a href="user/list.do?role=${param.role}"><s:if test="role==0">会员</s:if><s:else>管理员</s:else>列表</a>>>添加<s:if test="role==0">会员</s:if><s:else>管理员</s:else>
	<form action="user/register.do" method="post">
	    <input type="hidden" name="role" value="${param.role}"/>
    	<center>
    	   <table class="user">
    	   	  <tr> <th colspan="2" class="midd"><s:if test="role==0">会员</s:if><s:else>管理员</s:else>注册</th> </tr>
    	   	  <tr><td class="r">用户名：</td><td><input type="text" name="userName"/><s:fielderror><s:param>userName</s:param></s:fielderror></td></tr>
    	   	  <tr><td class="r">密码：</td><td><input type="password" name="password"/></td></tr>
    	   	  <tr><td class="r">确认密码：</td><td><input type="password" name="password2"/><s:fielderror><s:param>password</s:param></s:fielderror></td></tr>
    	   	  <tr><td class="r">电子邮箱：</td><td><input type="text" name="email"/><s:fielderror><s:param>email</s:param></s:fielderror></td></tr>
    	   	  <tr> <td>&nbsp;</td><td><input type="submit" value="注册" style="width:80px;"/></td> </tr>
    	   </table>
    	</center>
    </form>
  </body>
</html>
