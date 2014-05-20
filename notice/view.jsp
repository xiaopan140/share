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
    
    <title>公告-<s:property value="title"/></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="theme/css/style.css">

  </head>
  
  <body>
 <%@ include file="/head.jsp"%>
  <div class="main"> 
         位置：<a href="notice_list.do">公告列表</a>
         <div class="content">
         	<center><s:property value="title"/><br>   作者： <s:property value="author"/>  |  创建时间：<s:property value="createTime"/></center>
         	<br>
	<s:property value="content"/><br>
	</div>
	</div>
  <%@ include file="/footer.jsp"%>
  </body>
</html>
