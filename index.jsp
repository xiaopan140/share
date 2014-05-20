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
  </head>

  <link rel="stylesheet" type="text/css" href="theme/css/style.css">
  <body>
    <%@ include file="head.jsp"%>
    <div class="main">
  <s:iterator value="channelArticle">
     <table width="314" style="float:left;margin-right:18px;" cellspacing="0" >
       <tr><td class="title" width="225px">${channelName} </td><td class="title" ><a href="channel.do?id=${channelId }">>>更多</a></td></tr>
       <s:iterator value="articles">
       <tr><td style="line-height:26px;"><a href="article_view?id=${id}">${title}</a></td><td>${createTime}</td></tr>
       </s:iterator>
     </table>
  </s:iterator>
  <div style="clear: both;"></div>
  </div>
    <%@ include file="footer.jsp"%>
  </body>
</html>
