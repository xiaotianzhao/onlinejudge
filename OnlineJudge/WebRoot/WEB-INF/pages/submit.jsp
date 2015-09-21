<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>bootstrapLearn</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/hyattoj.css" rel="stylesheet">
<script src="js/jquery-1.11.3.min.js"></script>
<script src="css/hyattoj.js"></script>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<!--[if It IE 9]>
	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<style type="text/css">
	.showProblem{
		width:530px;
		height:80px;
		line-height:80px;
	}
	.linkToProblem{
		width:100px;
		float:right;

	}
	.problem{
		width:425px;
		float:left;
		font-size:18px;
		color:#999;
		font-style:italic;
	}
</style>
</head>

<body>

<!-- 导航栏开始 -->
<div class="navbar navbar-static-top">
  <div class="navbar-inner">
    <div class="container"> <a class="brand" href="#">HITWH-CTF</a>
      <ul class="nav">
        <li><a href="#">首页</a></li>
        <li><a href="#">题目</a></li>
        <li><a href="#">答案公布</a></li>
      </ul>
      <div class="nav pull-right"> <a class="dropdown-toggle navbar-text" data-toggle="dropdown" href="#"><i class="icon-user"></i>Hyatt</a>
        <ul class="dropdown-menu">
          <li><a>我的资料</a></li>
          <li><a>查看排名</a></li>
          <li><a>退出</a></li>
        </ul>
      </div>
      <!--<ul class="nav pull-right">
        <li><a href="#login" data-toggle="modal">登录</a></li>
        <li class="divider-vertical"></li>
        <li><a href="http://localhost:8080/OnlineJudge/registerPage">注册</a></li>
      </ul>--> 
    </div>
  </div>
</div>
<!-- 导航栏结束 -->
<div>
  <div class="container">
    <div class="row">
      <div class="modal" style="margin-top:100px;">
        <div class="modal-header">
          <h3>问题提交</h3>
        </div>
        <div class="modal-body">
          <div class="showProblem">
          	<div class="problem"><span style="margin-left:40px;">1.</span><span>problem1</span></div><div class="linkToProblem"><span><a class="navbar-text" href="#">开始做题</a></span></div>
          </div>
          <div class="control-group" style="float:left; margin-left:50px;">
            <div class="controls">
                <input
											type="text" id="flag" name="flag"
											placeholder="请输入flag">
            </div>
          </div>
          <div class="control-group" style="float:right; margin-right:50px;">
            <div class="controls">
               <input type="submit" class="btn btn-primary" value="提交flag">
            </div>
          </div>
        </div>
        
      </div>
    </div>
  </div>
  
  <!-- 底部开始 -->
  <div class="navbar navbar-fixed-bottom footer">
    <div class="container">
      <p class="muted credit"> Example courtesy <a href="http://martinbean.co.uk">Martin Bean</a> and <a href="http://ryanfait.com/sticky-footer/">Ryan Fait</a>. </p>
    </div>
  </div>
  <!-- 底部结束 --> 
  
</div>
<script src="js/bootstrap.min.js"></script>
</body>
</html>