<%--
  Created by IntelliJ IDEA.
  User: 李长虹
  Date: 2017/6/17
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>HelloShu</title>
    <link rel="stylesheet" type="text/css" href="/statics/css/bootstrap.css"/>
    <link rel="stylesheet" href="/statics/css/index.css" />
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/statics/js/index.js"></script>

</head>
<body>
<div class="navbar navbar-default" role="navigation" id="navbar">
    <div class="navbar-header">
        <!-- .navbar-toggle样式用于toggle收缩的内容，即nav-collapse collapse样式所在元素 -->
        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-responsive-collapse">
            <span class="sr-only">答疑</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <!-- 确保无论是宽屏还是窄屏，navbar-brand都显示 -->
        <a href="##" class="navbar-brand" id="logo">新生答疑</a>
    </div>
    <!-- 屏幕宽度小于768px时，div.navbar-responsive-collapse容器里的内容都会隐藏，显示icon-bar图标，当点击icon-bar图标时，再展开。屏幕大于768px时，默认显示。 -->
    <div class="collapse navbar-collapse navbar-responsive-collapse">
        <ul class="nav navbar-nav" >
            <li><a href="##">网站首页</a></li>
            <li><a href="##">系列教程</a></li>
            <li><a href="##">名师介绍</a></li>
            <li><a href="##">成功案例</a></li>
            <li><a href="##">关于我们</a></li>
        </ul>
    </div>
    <div class="input-group col-md-3" id="search" style="margin-left:30px;padding-top:8px">
        <input type="text" class="form-control" / >
        <span class="input-group-btn">
		            <button class="btn btn-info btn-search">查找</button>
		        </span>
    </div>
    <div class="login">
        <button class="btn btn-warning" type="button"style="margin-right:20px"><a href="##">注册</a></button>
        <button class="btn btn-warning" type="button"><a href="##">登录</a></button>
    </div>
</div>
<div >
    <!--<img src="img/1.jpg" alt="" />-->
</div>
</body>
</html>
