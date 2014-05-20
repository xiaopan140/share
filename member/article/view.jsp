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
    
    <title><s:property value="title"/></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="member/theme/css/style.css">
  </head>
  
  <body>
        位置：<a href="channel/list.do">所有栏目列表</a>>><a href="channel/list.do?id=${fatherId }">${fatherName}</a>>><a href="article/list.do?channelId=${channelId}&fatherId=${fatherId}">${channelName}</a>>>查看文章
         	<div class="content">
         	<center><div class="title"><s:property value="title"/></div>作者： <s:property value="author"/>  |  创建时间：<s:property value="createTime"/></center>
	<br>
	<s:property value="content"/><br>
	<s:if test="attachementName!=null">
	附件下载：<a href="${uploadFileName}">${attachementName}</a>
	</s:if>
	</div>
  </body>
</html>
