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
    
    <title>栏目列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="member/theme/css/style.css">

  </head>
  <body>
  位置：栏目管理
  <s:if test="#session.role==1"><div class="r"><a href="channel/add.do">新增栏目</a></div></s:if>
       

<TABLE class="gridtable" width="100%">
	<TR>
		<TH>序号</TH>
		<TH>栏目名称</TH>
		<TH>子栏目</TH>
		<s:if test="#session.role==1">
		<tH>操作</tH>
		</s:if>
	</TR>
	<s:iterator value="#request.page.resultList" status="s">
	<TR>
		<TD align="center"><s:property value="#s.getIndex()+1"/></TD>
		<TD><s:property value="fatherName"/></TD>
		<TD>
		 <table width="80%" style="font-size:12px;">
		 <s:iterator value="subChannels" status="t">
		   <tr>
		   <td style="border:none;" width="30"><s:property value="#t.getIndex()+1"/></td>
		   <td style="border:none;"><s:property value="channelName"/></td>
		   <td style="border:none;" width="80"><a href="article/list.do?channelId=${id}&fatherId=${fatherId}">查看文章</a></td>
		   <s:if test="#session.role==1">
		   <td style="border:none;" width="50"><a href="channel/update.do?id=${id}">修改</a> </td>
		   <td style="border:none;" width="50"><a href="channel/delete.do?id=${id}">删除</a></td>
		   </s:if></tr>
		   </s:iterator>
		 </table>
		</TD>
		<s:if test="#session.role==1">
		<TD align="center"><a href="channel/update.do?id=${channelId}">修改</a>
		<a href="channel/delete.do?id=${channelId}">删除</a></TD>
		</s:if>
	</TR>
	</s:iterator>
</TABLE>
<TABLE border="0" width="100%" class="pager">
	<TR>
	<form action="channel/list.do" method="post" name="form1">
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
