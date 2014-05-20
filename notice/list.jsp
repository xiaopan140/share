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
    
    <title>公告列表</title>
    
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
位置：公告列表
<TABLE class="gridtable" width="100%">
	
	<s:iterator value="#request.page.resultList" status="s">
	<TR>
		<TD><a href="notice_view.do?id=${id}"><s:property value="title"/></a></TD>
		<TD><s:property value="createTime"/></TD>
		
		
	</TR>
	</s:iterator>
</TABLE>
<TABLE border="0" width="100%" class="pager">
	<TR>
	<form action="notice_list.do" method="post" name="form1">
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

</div>
  <%@ include file="/footer.jsp"%>
  </body>
</html>
