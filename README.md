简介
=======
+ 用户商户后台通用的基础模板，各模块页面还请extends该模板
+ 安装方法
  + npm install merchant
  + 安装成功之后在当目录的node_modules/merchant目录下会拉取到最新的layout.tpl
+ 变量说明
  + "__TOPBAR__": 通过打包工具替换为zhida.baidu.com或者指定的域名下，rd联调环境或者qa环境需要加8080端口号
  + "__NAVBAR__": 通过打包工具替换为zhida.baidu.com或者指定的域名下，rd联调环境是替换为每个人的eva环境的域名加8080端口
