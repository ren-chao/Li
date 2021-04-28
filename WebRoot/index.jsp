<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.List"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
  <!--网页名称-->
<title>${config.sitename } - ${config.title }</title>
<meta name="baidu-site-verification" content="b9lOcChmbf">
<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
  <!--关键词-->
 <meta name="keywords" content="${config.keywords }">
 <!--描述-->
 <meta name="description" content="${config.description }">
 <!--浏览器小图标，如有，请上传-->
<link rel="shortcut icon" href="favicon.ico">
<link rel="stylesheet" href="navigation/assets/css/main.css">
<link rel="stylesheet" href="navigation/assets/css/noscript.css"/>
</head>
<body style="background:#000 url(images/${config.background})" rel="nofollow">
	<%
		List list = (List) request.getAttribute("Dhlist");
		if (list == null) {
			String conPath = request.getContextPath();
			out.print("<script>location.href = '" + conPath + "/SiteSettings?action=index'</script>");
		}
	%>
	<div id="wrapper">
		<header id="header">
			<div class="logo">
			  <!--头像地址-->
				<img src="http://q1.qlogo.cn/g?b=qq&amp;nk=${config.kfqq }&amp;s=160" class="logo">
			</div>
			<div class="content">
				<div class="inner">
				  <!--菜单-->
					<h1><a href="#">${config.sitename }</a></h1>
					<c:forEach var="i" items="${requestScope.Dhlist }">
						<c:if test="${i.active eq 2 }">
							<h2><a href="${i.url }" target="_blank">${i.name }</a></h2>
						</c:if>
					</c:forEach>
				</div>
			</div>
			<nav>
				<ul>
				  <!--按钮-->
					<li><a href="./" >首页</a>
					<c:forEach var="i" items="${requestScope.Dhlist }">
						<c:if test="${i.active eq 1 }">
							<li><a href="${i.url }"  target="_blank">${i.name }</a></li>
						</c:if>
					</c:forEach>
				</ul>
			</nav>
		</header>
		<footer id="footer">
			<!-- Footer -->
				<p class="copyright">ICP备：<a href="http://www.beian.miit.gov.cn/" target="_blank">${config.icp }</a></p>
		</footer>
	</div>
<div id="bg">
</div>
<script src="https://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="navigation/assets/js/skel.min.js"></script>
<script src="navigation/assets/js/util.js"></script>
<script src="navigation/assets/js/main.js"></script>
	<!-- REQUIRED SCRIPTS FILES -->
	<script src="//lib.baomitu.com/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://yzf.qq.com/xv/web/static/chat_sdk/yzf_chat.min.js"></script>
  <script>
    //参数说明
    //sign：公司渠道唯一标识，复制即可，无需改动
    //uid：用户唯一标识，如果没有则不填写，默认为空
    //data：用于传递用户信息，最多支持5个，参数名分别为c1,c2,c3,c4,c5；默认为空
    //selector：css选择器(document.querySelector, 如#btnid .chat-btn等)，用于替换默认的常驻客服入口
    //callback(type, data): 回调函数,type表示事件类型， data表示事件相关数据
    //type支持的类型：newmsg有新消息，error云智服页面发生错误， close聊天窗口关闭
    window.yzf && window.yzf.init({
      sign: '${config.yzf}',
      uid: '',
      data: {
        c1: '',
        c2: '',
        c3: '',
        c4: '',
        c5: ''
      },
      selector: '',
      callback: function(type, data){}
    })
    //window.yzf.close() 关闭1已打开的回话窗口
</script>
<script id="lfz" src="http://player.liaofuzhan.com/player/player.js" key="${config.music}"></script>
</body>
</html>
<%-- <script id="ilt" src="https://player.ilt.me/player/js/player.js" key="${config.music}"></script> --%>

