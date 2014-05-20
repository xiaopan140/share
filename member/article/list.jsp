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
    
    <title>${fatherName}-${channelName}的文章列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="member/theme/css/style.css">

  </head>
  
  <body>
位置： 
<a href="channel/list.do">栏目列表</a>>><a href="channel/list.do?id=${fatherId }">${fatherName}</a>>>${channelName}
<div class="r"> <a href="article/add.do">增加文章</a></div>
<TABLE class="gridtable" width="100%">
	<TR>
		<TH>序号</TH>
		<TH>标题</TH>
		<TH>创建时间</TH>
		
		<tH>作者</tH>
		<s:if test="#session.role==1">
		<th>操作</th>
		</s:if>
		<s:else><th>操作受限</th></s:else>
	</TR>
	<s:iterator value="#request.page.resultList" status="s">
	<TR>
		<TD align="center"><s:property value="#s.getIndex()+1"/></TD>
		<TD><a href="article/view.do?id=${id}&channelId=${channelId}&fatherId=${fatherId}"><s:property value="title"/></a></TD>
		<TD align="center"><s:property value="createTime"/></TD>
		<TD align="center"><s:property value="author"/></TD>
		<s:if test="#session.role==1 or #session.userName==author">
		<TD align="center"><a href="article/update.do?id=${id}">修改</a>
		<a href="article/delete.do?id=${id}">删除</a></TD>
		</s:if>
	</TR>
	</s:iterator>
</TABLE>
<TABLE border="0" width="100%" class="pager">
	<TR>
	<form action="article/list.do?channelId=${channelId}&fatherId=${fatherId}" method="post" name="form1">
		<TD>
		总共：<s:property value="#request.page.rowCount" />条记录
		
			<a href="javascript:document.all.pageNo.value='<s:property value="#request.page.firstPageNo" />';document.all.form1.submit();">首页</a>
			<a href="javascript:document.all.pageNo.value='<s:property value="#request.page.prePageNo" />';document.all.form1.submit();">上一页</a>
			<a href="javascript:document.all.pageNo.value='<s:property value="#request.page.nextPageNo" />';document.all.form1.submit();">下一页</a>
			<a href="javascript:document.all.pageNo.value='<s:property value="#request.page.lastPageNo" />';document.all.form1.submit();">末页</a>
		跳转至：<s:select name="pageNo" list="#request.page.pageNoIndexs" value="#request.page.pageNo" onchange="document.all.form1.submit();"/>
		</TD>
		</form>
	</TR>
</TABLE>

  </body>
</html>
