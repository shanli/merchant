<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>{{block name=title}}直达号{{/block}}</title>
    <style>
        .framework-page {
            position: relative;
            width: 1200px;
            margin: 0 auto;
        }
        .framework-page:before,.framework-page:after{display:block;content:"";}
        .framework-page:after{clear:both;}
        /* 左侧导航 */
        .framework-page .framework-left {
            position: fixed;
            display: block;
            top: 45px;
            width: 180px;
            height: auto;
        }
        .framework-page .framework-navbar {
            height: 100%;
        }
        /* 右侧内容 */
        .framework-page .framework-right {
            position: relative;
            display: block;
            float: right;
            width: 1000px;
        }
        /* 页脚 */
        .framework-footer {
            position: relative;
            width: calc(100% - 200px);
            height: 30px;
            margin: 20px 0 20px 200px;
            clear: both;
            color: rgb(139, 139, 139);
            font-size: 14px;
            text-align: center;
            line-height: 30px;
        }
        .framework-footer a {
            color: rgb(139, 139, 139);
            font-size: 14px;
            line-height: 30px;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <script type="text/javascript" src="__TOPBAR__/apis/topbar?version=old"></script>
    <script type="text/javascript">
        baidu.openapi.renderHeader({
            hasZhidaLogo: 1,
            hasAppNav: 0
        });
    </script>
    <div class="framework-page">
        <aside class="framework-left framework-navbar" id="nav-bar"></aside>
        <script type="text/javascript" src="__NAVBAR__/side/bar/menulist?app_id={{$app_id}}"></script>
        <script type="text/javascript">
            var navbar = new Navbar({
                container: document.getElementById('nav-bar')
            });
        </script>
        <div class="framework-right" id="main-content">
            {{block name=mainContent}}{{/block}}
        </div>
    </div>
    <footer class="framework-footer">
        &copy; 2015 Baidu <a href="http://www.baidu.com/duty/" target="_blank">使用百度前必读</a> | <a target="_blank" href="http://www.miibeian.gov.cn">京ICP证030173号</a>
    </footer>
    <script type="text/javascript">
        (function() {
            if (window.jQuery) {
                try {
                    var consoleWindow = $(window),
                        navBar = $("#nav-bar"),
                        navBarLeft = navBar.css("left");
                    $(window).on('resize scroll',function (e) {
                        var win = $(this),
                            scrollLeft = win.scrollLeft(),
                            winWidth = win.width();
                        if (winWidth < 1200 && scrollLeft != 0){
                            navBar.css({"left": -scrollLeft});
                        } else {
                            navBar.css({"left": "auto"});
                        }
                    });
                } catch(e) {}
            }
        })();

    </script>
</body>
</html>