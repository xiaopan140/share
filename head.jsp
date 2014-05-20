<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
  <script type="text/javascript" src="theme/js/jquery.min.js"></script>
  <script>
    function marquee(time,id){      
        $(function(){
        var _wrap=$(id);
        var _interval=time;
        var _moving;
        _wrap.hover(function(){
        clearInterval(_moving);
        },function(){
        _moving=setInterval(function(){
        var _field=_wrap.find('li:first');
        var _h=_field.height();
        _field.animate({marginTop:-_h+'px'},800,function(){
        _field.css('marginTop',0).appendTo(_wrap);
        })
        },_interval)
        }).trigger('mouseleave');
        });
     }
	</script>
<div class="top">
<div class="head">
<a href="index.do" target="_top">首页</a>
<s:if test="#session.userName!=null">
  欢迎回来！<s:property value="#session.userName"></s:property>
  &nbsp;<a href="user/main.do" target="_top">个人中心</a>
  &nbsp;<a href="user/loginout.do" target="_top">注销</a>
</s:if>
<s:else>
  <a href="member/login.jsp" target="_top">登录</a> | <a href="register.do" target="_top">注册</a>
</s:else>
</div>
</div>
<div class="bar">
       <div class="toolbar">
       <s:iterator value="channel">
       <b><a href="channel.do?id=${channelId}">${fatherName}</a></b>&nbsp;| 
       <s:iterator value="subChannels">
       <a href="article_list.do?fatherId=${channelId}&channelId=${id}">${channelName}</a>&nbsp;
       </s:iterator>
        
       </s:iterator>
       </div>
       <div><img src="theme/images/1.jpg" height="200" width="1000"/></div>
     <a href="notice_list.do"> 公告：</a><div class="notice">
            <ul class="gonggao">
              <s:iterator value="notice">
              <li><a href="notice_view.do?id=${id}" target="_blank">${title}</a></li>
		      </s:iterator>
            </ul>
          </div>
	  <script>marquee("2000",".notice ul");</script>
</div>