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
    <link rel="stylesheet" type="text/css" href="/statics/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/statics/css/index.css"/>
    <%--<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>--%>
    <%--<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>--%>
    <script type="text/javascript" src="/statics/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="/statics/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/statics/js/index.js"></script>
    <link rel="stylesheet" href="/statics/css/style.css"/>
    <script type="text/javascript" src="/statics/js/lrtk.js"></script>

</head>
<body background="/statics/img/HelloShu.png">
<div class="navbar navbar-default" role="navigation" id="navbar">
    <div class="navbar-header" id="icon_bar">
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
        <ul class="nav navbar-nav">
            <li><a href="##">网站首页</a></li>
            <li><a href="##">系列教程</a></li>
            <li><a href="##">名师介绍</a></li>
            <li><a href="##">成功案例</a></li>
        </ul>
    </div>
    <div class="input-group col-md-3 col-sm-5 col-xs-5" id="search" style="margin-left:30px;padding-top:8px">
        <input type="text" class="form-control">
        <span class="input-group-btn">
		            <button class="btn btn-info btn-search"><span class="glyphicon glyphicon-search"></span></button>
		        </span>
    </div>
    <div class="login visible-lg visible-md visible-sm pull-right">
        <button class="btn btn-warning" type="button" style="margin-right:20px"><a data-toggle="modal"
                                                                                   data-target="#registerWin">注册</a>
        </button>
        <button class="btn btn-warning" type="button"><a data-toggle="modal" data-target="#loginWin">登录</a></button>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div id="div1">
                <!--这些url需要用js自动生成-->
                <a href="http://www.lanrentuku.com" target="_blank">上海大学</a>
                <a href="http://www.lanrentuku.com" target="_blank">北京大学</a>
                <a href="http://www.lanrentuku.com" target="_blank">go go go</a>
                <a href="http://www.lanrentuku.com" target="_blank">清华大学</a>
                <a href="http://www.lanrentuku.com" target="_blank">c++</a>
                <a href="http://www.lanrentuku.com" target="_blank">python</a>
                <a href="http://www.lanrentuku.com" target="_blank">java</a>
                <a href="http://www.lanrentuku.com" target="_blank">php</a>
                <a href="http://www.lanrentuku.com" target="_blank">ruby</a>
                <a href="http://www.lanrentuku.com" target="_blank">spring</a>
                <a href="http://www.lanrentuku.com" target="_blank">hibernate</a>
                <a href="http://www.lanrentuku.com" target="_blank">spring mvc</a>
                <a href="http://www.lanrentuku.com" target="_blank">hugo</a>
                <a href="http://www.lanrentuku.com" target="_blank">mongodb</a>
                <a href="http://www.lanrentuku.com" target="_blank">readis</a>
                <a href="http://www.lanrentuku.com" target="_blank">math</a>
                <a href="http://www.lanrentuku.com" target="_blank">algorithm</a>
                <a href="http://www.lanrentuku.com" target="_blank">aphgo</a>
                <a href="http://www.lanrentuku.com" target="_blank">天空</a>
                <a href="http://www.lanrentuku.com" target="_blank">scala</a>
                <a href="http://www.lanrentuku.com" target="_blank">bootstrap</a>
                <a href="http://www.lanrentuku.com" target="_blank">jquery</a>
                <a href="http://www.lanrentuku.com" target="_blank">vue.js</a>
                <a href="http://www.lanrentuku.com" target="_blank">react</a>
                <a href="http://www.lanrentuku.com" target="_blank">spring boot</a>
                <a href="http://www.lanrentuku.com" target="_blank">spring mvc</a>
                <a href="http://www.lanrentuku.com" target="_blank">scrapy</a>
                <a href="http://www.lanrentuku.com" target="_blank">scapy</a>
                <a href="http://www.lanrentuku.com" target="_blank">requests</a>
                <a href="http://www.lanrentuku.com" target="_blank">mysql</a>
                <a href="http://www.lanrentuku.com" target="_blank">linux</a>
                <a href="http://www.lanrentuku.com" target="_blank">gggggg</a>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div id="mainbar">
                <div class="subheader">
                    <h1 id="h-top-questions">
                        Top Questions
                    </h1>
                    <div id="tabs">
                        <a class="youarehere" href="?tab=interesting" data-nav-xhref=""
                           title="Questions that may be of interest to you based on your history and tag preference"
                           data-value="interesting" data-shortcut="">
                            interesting</a>
                        <a href="?tab=featured" data-nav-xhref="" title="Questions with an active bounty"
                           data-value="featured"
                           data-shortcut="B">
                            <span class="bounty-indicator-tab">426</span> featured</a>
                        <a href="?tab=hot" data-nav-xhref=""
                           title="Questions with the most views, answers, and votes over the last few days"
                           data-value="hot"
                           data-shortcut="H">
                            hot</a>
                        <a href="?tab=week" data-nav-xhref=""
                           title="Questions with the most views, answers, and votes this week"
                           data-value="week" data-shortcut="W">
                            week</a>
                        <a href="?tab=month" data-nav-xhref=""
                           title="Questions with the most views, answers, and votes this month"
                           data-value="month" data-shortcut="M">
                            month</a>
                    </div>
                </div>
                <div id="qlist-wrapper">
                    <div id="question-mini-list">
                        <div class="question-summary narrow" id="question-summary-44672432">
                            <div onclick="window.location.href='/questions/44672432/how-to-convert-xml-to-bean-with-spring'"
                                 class="cp">
                                <div class="votes">
                                    <div class="mini-counts"><span title="0 votes">0</span></div>
                                    <div>votes</div>
                                </div>
                                <div class="status unanswered">
                                    <div class="mini-counts"><span title="0 answers">0</span></div>
                                    <div>answers</div>
                                </div>
                                <div class="views">
                                    <div class="mini-counts"><span title="1 view">1</span></div>
                                    <div>view</div>
                                </div>
                            </div>
                            <div class="summary">

                                <h3><a href="/questions/44672432/how-to-convert-xml-to-bean-with-spring"
                                       class="question-hyperlink">How
                                    to convert xml to bean with Spring?</a></h3>
                                <div class="tags t-java t-xml t-spring t-spring-mvc">
                                    <a href="/questions/tagged/java" class="post-tag"
                                       title="show questions tagged 'java'"
                                       rel="tag">java</a> <a href="/questions/tagged/xml" class="post-tag"
                                                             title="show questions tagged 'xml'" rel="tag">xml</a> <a
                                        href="/questions/tagged/spring" class="post-tag" title="" rel="tag">spring</a>
                                    <a
                                            href="/questions/tagged/spring-mvc" class="post-tag" title="" rel="tag">spring-mvc</a>
                                </div>
                                <div class="started">
                                    <a href="/questions/44672432/how-to-convert-xml-to-bean-with-spring"
                                       class="started-link">asked
                                        <span title="2017-06-21 09:41:24Z" class="relativetime">55 secs ago</span></a>
                                    <a href="/users/1194415/membersound">membersound</a> <span class="reputation-score"
                                                                                               title="reputation score 16,356"
                                                                                               dir="ltr">16.4k</span>
                                </div>
                            </div>
                        </div>


                        <div class="question-summary narrow" id="question-summary-44672430">
                            <div onclick="window.location.href='/questions/44672430/in-app-purchase-sandbox-invalid-address'"
                                 class="cp">
                                <div class="votes">
                                    <div class="mini-counts"><span title="0 votes">0</span></div>
                                    <div>votes</div>
                                </div>
                                <div class="status unanswered">
                                    <div class="mini-counts"><span title="0 answers">0</span></div>
                                    <div>answers</div>
                                </div>
                                <div class="views">
                                    <div class="mini-counts"><span title="2 views">2</span></div>
                                    <div>views</div>
                                </div>
                            </div>
                            <div class="summary">

                                <h3><a href="/questions/44672430/in-app-purchase-sandbox-invalid-address"
                                       class="question-hyperlink">In App Purchase sandbox - Invalid address</a></h3>
                                <div class="tags t-ios t-objective-c t-iphone t-swift t-in-app-purchase">
                                    <a href="/questions/tagged/ios" class="post-tag" title="show questions tagged 'ios'"
                                       rel="tag">ios</a>
                                    <a href="/questions/tagged/objective-c" class="post-tag" title="" rel="tag">objective-c</a>
                                    <a
                                            href="/questions/tagged/iphone" class="post-tag"
                                            title="show questions tagged 'iphone'"
                                            rel="tag">iphone</a> <a href="/questions/tagged/swift" class="post-tag"
                                                                    title="show questions tagged 'swift'" rel="tag">swift</a>
                                    <a
                                            href="/questions/tagged/in-app-purchase" class="post-tag" title=""
                                            rel="tag">in-app-purchase</a>
                                </div>
                                <div class="started">
                                    <a href="/questions/44672430/in-app-purchase-sandbox-invalid-address"
                                       class="started-link">asked
                                        <span title="2017-06-21 09:41:19Z" class="relativetime">59 secs ago</span></a>
                                    <a href="/users/3045336/technerd">technerd</a> <span class="reputation-score"
                                                                                         title="reputation score "
                                                                                         dir="ltr">6,048</span>
                                </div>
                            </div>
                        </div>


                        <div class="question-summary narrow" id="question-summary-44672428">
                            <div onclick="window.location.href='/questions/44672428/client-server-communication-and-sql-in-python'"
                                 class="cp">
                                <div class="votes">
                                    <div class="mini-counts"><span title="0 votes">0</span></div>
                                    <div>votes</div>
                                </div>
                                <div class="status unanswered">
                                    <div class="mini-counts"><span title="0 answers">0</span></div>
                                    <div>answers</div>
                                </div>
                                <div class="views">
                                    <div class="mini-counts"><span title="2 views">2</span></div>
                                    <div>views</div>
                                </div>
                            </div>
                            <div class="summary">

                                <h3><a href="/questions/44672428/client-server-communication-and-sql-in-python"
                                       class="question-hyperlink">client-server communication and SQL in python</a></h3>
                                <div class="tags t-python t-sql-server t-client-server">
                                    <a href="/questions/tagged/python" class="post-tag" title="" rel="tag">python</a> <a
                                        href="/questions/tagged/sql-server" class="post-tag" title="" rel="tag">sql-server</a>
                                    <a
                                            href="/questions/tagged/client-server" class="post-tag" title="" rel="tag">client-server</a>
                                </div>
                                <div class="started">
                                    <a href="/questions/44672428/client-server-communication-and-sql-in-python"
                                       class="started-link">asked <span title="2017-06-21 09:41:17Z"
                                                                        class="relativetime">1 min ago</span></a>
                                    <a href="/users/8115345/hila">hila</a> <span class="reputation-score"
                                                                                 title="reputation score "
                                                                                 dir="ltr">13</span>
                                </div>
                            </div>
                        </div>


                        <div class="question-summary narrow" id="question-summary-44672427">
                            <div onclick="window.location.href='/questions/44672427/can-i-programmatically-ask-user-for-method-of-contacting-phone-number'"
                                 class="cp">
                                <div class="votes">
                                    <div class="mini-counts"><span title="0 votes">0</span></div>
                                    <div>votes</div>
                                </div>
                                <div class="status unanswered">
                                    <div class="mini-counts"><span title="0 answers">0</span></div>
                                    <div>answers</div>
                                </div>
                                <div class="views">
                                    <div class="mini-counts"><span title="2 views">2</span></div>
                                    <div>views</div>
                                </div>
                            </div>
                            <div class="summary">

                                <h3>
                                    <a href="/questions/44672427/can-i-programmatically-ask-user-for-method-of-contacting-phone-number"
                                       class="question-hyperlink">Can I programmatically ask user for method of
                                        contacting phone
                                        number?</a></h3>
                                <div class="tags t-ios t-objective-c t-iphone t-swift">
                                    <a href="/questions/tagged/ios" class="post-tag" title="" rel="tag">ios</a> <a
                                        href="/questions/tagged/objective-c" class="post-tag" title="" rel="tag">objective-c</a>
                                    <a
                                            href="/questions/tagged/iphone" class="post-tag" title=""
                                            rel="tag">iphone</a> <a
                                        href="/questions/tagged/swift" class="post-tag" title="" rel="tag">swift</a>
                                </div>
                                <div class="started">
                                    <a href="/questions/44672427/can-i-programmatically-ask-user-for-method-of-contacting-phone-number"
                                       class="started-link">asked <span title="2017-06-21 09:41:16Z"
                                                                        class="relativetime">1 min ago</span></a>
                                    <a href="/users/1314910/nerman">NermaN</a> <span class="reputation-score"
                                                                                     title="reputation score "
                                                                                     dir="ltr">65</span>
                                </div>
                            </div>
                        </div>


                        <br class="cbt">
                        <h2 class="bottom-notice" data-loc="2">Looking for more? Browse the <a href="/questions">complete
                            list of
                            questions</a>, or <a href="/tags">popular tags</a>. Help us answer <a href="/unanswered">unanswered
                            questions</a>.</h2>
                        <script>
                            StackExchange.ready(function () {
                                StackExchange.question.initShareLinks();
                            });
                        </script>
                    </div>
                </div>
            </div>

        </div>

        <%--注册弹出框--%>
        <div class="modal" id="registerWin" tabindex="-1" role="dialog" aria-labelledby="new_email">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="register">注册用户</h4>
                    </div>
                    <div class="modal-body " id="pop1">
                        <form class=" col-md-offset-2 col-sm-offset-2 col-xs-offset-2" id="iform">
                            <div class="form-group ">
                                <label for="userName">用 户 名&nbsp：</label>
                                <input type="text" class="form-control" id="userName"
                                       placeholder="用户名至少4个字符">
                            </div>
                            <div class="form-group">
                                <label for="userEmail">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱&nbsp：</label>
                                <input type="email" class="form-control" id="userEmail"
                                       placeholder="请输入已验证的邮箱地址">
                            </div>

                            <div class="form-group">
                                <label for="password1">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码&nbsp：</label>
                                <input type="password" class="form-control" id="password1"
                                       placeholder="请输入密码，6-16位字母/数字组合">
                            </div>

                            <div class="form-group ">
                                <label for="password2">确认密码：</label>
                                <input type="password" class="form-control" id="password2" placeholder="请输入与上面相同的密码">
                            </div>

                            <div class="pull-right">
                                <lable style="font-family: 微软雅黑">第三方登录：&nbsp;&nbsp;</lable>
                                <span><a href="##"><img src="/statics/img/Weibo1.jpg" alt=""></a></span>
                                <span><a href="##"><img src="/statics/img/Weixin1.jpg" alt=""></a></span>
                                <span><a href="##"><img src="/statics/img/qq1.jpg" alt=""></a></span>
                            </div>
                            <div class="clear"></div>
                            <div>
                                <button type="button" class="btn btn-warning form-group col-md-9 col-sm-9 col-xs-9"
                                        data-dismiss="modal" id="be_sure" disabled="disabled">立 即 注 册
                                </button>
                            </div>
                        </form>
                    </div>
                    <div><br/><br/></div>
                </div>
            </div>
        </div>

        <%--登录弹出框--%>
        <div class="modal" id="loginWin" tabindex="-1" role="dialog" aria-labelledby="new_email"
             style="background:rgba(195,195,195,0.8);">
            <div class="modal-dialog" role="document">
                <div class="modal-content  col-md-7 col-sm-7 col-xs-7 col-md-offset-3 col-sm-offset-3 col-xs-offset-3">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="login0">用户登录</h4>
                    </div>
                    <div class="modal-body">
                        <form class="col-md-offset-1 col-sm-offset-1 col-xs-offset-1" id="lform">
                            <div class="form-group">
                                <label for="userName0">用户名</label>
                                <input type="text" class="form-control" id="userName0"
                                       placeholder="请输入用户名/邮箱">
                            </div>

                            <div class="form-group">
                                <label for="password0">密&nbsp;&nbsp;&nbsp;码</label>
                                <input type="password" class="form-control" id="password0" placeholder="请输入密码">
                                <br/>
                            </div>

                            <div>
                                <button type="button" class="btn btn-warning form-group "
                                        data-dismiss="modal" id="be_sure" disabled="disabled" style="width:250px">登录
                                </button>
                            </div>
                        </form>
                    </div>
                    <div>
                        <br/>
                        <br/>
                        <%--<button type="button" class="btn btn-primary"--%>
                        <%--data-dismiss="modal" id="be_sure0" disabled="disabled">确定--%>
                        <%--</button>--%>
                        <%--<button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>--%>
                    </div>
                </div>
            </div>
        </div>

</body>
</html>

