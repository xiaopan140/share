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
    
    <title>${channelName}的所有子栏目列表</title>
    
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
  位置：${channelName}

<s:iterator value="subChannelArticles" status="s">
<TABLE width="80%" cellspacing="0" >
	<TR>
		<td class="title">
		  ${channelName} 
		</td>
		<td class="title" width="80"><a href="article_list.do?fatherId=${param.id}&channelId=${channelId}">>>更多</a></td>
	</TR>
	<s:iterator value="articles">
	<tr>
	<td style="line-height:26px;"><a href="article_view.do?id=${id}&fatherId=${param.id}&channelId=${channelId}">${title}</a></td>
	<td>${createTime}</td>
	</tr>
	</s:iterator>
</TABLE>
</s:iterator>
</div>
<%@ include file="/footer.jsp"%>
  </body>
</html>
