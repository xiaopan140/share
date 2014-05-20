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
    
    <title>My JSP 'list.jsp' starting page</title>
    
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
     位置：<a href="channel/list.do">栏目列表</a>>>修改栏目
	<form action="channel/update.do?id=${id}&p=1" method="post">
    	<center>
    	   <table class="user">
    	   	  <tr> <th colspan="2" class="midd">修改栏目</th> </tr>
    	   	  <tr><td class="r">所属栏目：</td>
    	   	  <td>
    	   	  <select name="fatherId">
    	   	     <s:if test="fatherId==0"><option value="0" selected>顶级栏目</option></s:if>
    	   	     <s:else><option value="0">顶级栏目</option></s:else>
    	   	     <s:iterator value="channels">
    	   	        <s:if test="fatherId==channelId"><option value="${channelId}" selected><s:property value="fatherName"/></option></s:if>
    	   	        <s:else><option value="${channelId}"><s:property value="fatherName"/></option></s:else>
    	   	        <s:iterator value="subChannels">
    	   	          <option value="${id}" disabled="disabled" >————${channelName}</option>
    	   	        </s:iterator>
    	   	     </s:iterator>
    	   	  </select></td></tr>
    	   	  <tr><td class="r">栏目名称：</td><td><input type="text" name="channelName" value="${channelName}"/></td></tr>
    	   	  <tr> <td>&nbsp;</td><td><input type="submit" value="修改" style="width:80px;"/></td> </tr>
    	   </table>
    	</center>
    </form>
  </body>
</html>
