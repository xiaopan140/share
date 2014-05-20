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
    
    <title>修改文章</title>
    
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
	.error{color:red;font-weight: bold;}
	</style>
  </head>
  
  <body>
             位置：<a href="channel/list.do">栏目列表</a>>><a href="channel/list.do?id=${fatherId }">${fatherName}</a>>><a href="article/list.do?channelId=${channelId}&fatherId=${fatherId}">${channelName}</a>>>修改文章
	<form action="article/update.do?id=${id}&p=1" method="post" enctype="multipart/form-data">
    	
    	   <table>
    	   	  <tr> <th colspan="2" class="midd">修改文章</th> </tr>
    	   	  <tr><td class="r">标题：</td><td><input class="title" type="text" name="title" value="${title}"/></td></tr>
    	   	  <tr><td class="r">所属栏目：</td>
    	   	  <td>
    	   	  <select name="channelId">
    	   	     <s:iterator value="channels">
    	   	        <option value="0" disabled="disabled"><s:property value="fatherName"/></option>
    	   	        <s:iterator value="subChannels">
    	   	          <s:if test="channelId==id">
    	   	          <option value="${id}" selected>————${channelName}</option>
    	   	          </s:if>
    	   	          <s:else>
    	   	          <option value="${id}">————${channelName}</option>
    	   	          </s:else>
    	   	        </s:iterator>
    	   	     </s:iterator>
    	   	  </select></td></tr>
    	   	  <tr><td class="r">文章内容：</td>
    	   	  <td><textarea name="content" clos="150" rows="20" style="width:400px;">${content}</textarea></td></tr>
    	   	  <tr><td class="r">上传附件：</td><td>
    	   	  <s:if test="uploadFileName==null"><input type="file" name="upload"></s:if>
    	   	  <s:else>${attachementName}<a href="article/delAttachement.do?id=${id}">删除</a></s:else>
    	   	  </td></tr>
    	   	  <tr><td></td><td><input type="submit" value="修改" style="width:80px;"/></td> </tr>
    	   </table>
    </form>
  </body>
</html>
