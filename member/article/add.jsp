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
    
    <title>新增文章</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="member/theme/css/style.css">
  <style type="text/css">
    table{line-height: 30px;}
    .title{width:400px;}
	.r{text-align:right;}
	</style>
  </head>
  
  <body>
  位置：新增文章
	<form action="article/add.do" method="post" enctype="multipart/form-data">
	       
    	   <table>
    	   	  <tr> <th colspan="2" class="midd">发布文章</th> </tr>
    	   	  <tr><td class="r">标题：</td><td><input class="title" type="text" name="title"/></td></tr>
    	   	  <tr><td class="r">所属栏目：</td>
    	   	  <td>
    	   	  <select name="channelId">
    	   	     <s:iterator value="channels">
    	   	        <option value="${channelId}" disabled="disabled"><s:property value="fatherName"/></option>
    	   	        <s:iterator value="subChannels">
    	   	          <option value="${id}">————${channelName}</option>
    	   	        </s:iterator>
    	   	     </s:iterator>
    	   	  </select></td></tr>
    	   	  <tr><td class="r">文章内容：</td>
    	   	  <td><textarea name="content" clos="150" rows="20" style="width:400px;"></textarea></td></tr>
    	   	  <tr><td class="r">上传附件：</td><td><input type="file" name="upload"></td></tr>
    	   	  <tr> <td></td><td><input type="submit" value="添加" style="width:80px;"/></td> </tr>
    	   </table>
    </form>
  </body>
</html>
