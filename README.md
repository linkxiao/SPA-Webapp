;# The SPA Webapp

##项目简介
这是一款基于saber(性能与体验俱佳的SPA轻应用快速解决方案)和edp(前端构建利器:gulp,grunt比它弱爆了)的webapp。
- 基于SPA的webapp:体验好，性能佳;
- 基于Module的经典MVC:回归经典的开发模式;
- common和biz层充分解偶:common层作为公共组件和resoures的集合不处理具体的业务逻辑，biz层作为专门处理业务逻辑的模块也能高度解偶,
高度模块化、颗粒化，让工程师专注于biz层业务逻辑的实现；
- 良好的容错性:一个模块出现问题，其他模块不受影响，正常run;

## 环境搭建
- 安装:[nodejs](https://nodejs.org/en/)
- 安装[git](http://git-scm.com/)
- 安装[edp](https://github.com/ecomfe/edp) :npm install -g edp
- 安装[php-cgi](http://stackoverflow.com/questions/27232483/how-to-install-php-cgi-as-a-plugin-in-mac-os-os-x-10-10) :brew install php54(并将php-cgi可执行程序添加到环境变量中);

## 项目代码
```javascript
git clone https://github.com/linkxiao/heart.git
```

## 项目依赖
安装依赖

```bash
cd /path/to/m-patient
npm install
```

`npm install`时，如果不指定packageName，则会读取项目根目录下的`package.json`文件，取出其中的`dependencies`、`devDependencies`，然后安装所有依赖到`node_modules`目录下。

## 运行项目

启动服务器

```bash
edp webserver start
```

访问[http://localhost:8846/index.php](http://localhost:8846/index.php)即可进入系统。

**具体文档请参考[edp](https://github.com/ecomfe/edp)**

## 项目架构

整个项目是基于百度efe前端团队出品的[saber](https://github.com/ecomfe/saber)进行开发的。

在进行具体的开发前，请先了解一下saber框架。

## 项目部署

这个仓库存放的是fe源代码，部署时，需要将代码发布到rd的svn仓库上。

具体逻辑请参考一下项目根目录下的`build.sh`。

`build.sh`中调用了`edp build`命令，这个是edp提供的命令，具体文档可以参考[edp-build](https://github.com/ecomfe/edp-build)。

具体部署时，通常只需要干一下这些事：

- checkout rd的svn仓库到本地
- 修改`build.sh`中的`targetPrefix`相对目录地址
- 执行`build.sh`
- 到rd的svn仓库目录中commit上去

Ok,That's all.
