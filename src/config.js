/**
 * @file 路由配置
 * @author linkxiao
 * @e-mail linkxiao@icloud.com
 */

 //path:页面路由，action:对应模块的主js文件(相当于main)，即：当前路由对应的js主文件
define(function (require) {
    return [
      {path: '/home/index', action: require('./home/index')},
      //{path: '/design/index', action: require('./design/index')},
    ];

});
