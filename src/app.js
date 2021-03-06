/**
 * @file app
 * @author ()
 */

define(function (require) {

    var Resolver = require('saber-promise');
    var firework = require('saber-firework');
    // FIXME
    // Only For Debug
    // 关闭Promise的异常捕获，方便调试
    Resolver.disableExceptionCapture();

    // saber-firework全局配置信息
    var config = {
            //配置入口页(home)路径
            path:'/home/',
            // 配置index(controler层，便于初始化时load入口文件)文件名称
            index: 'index'
        };

    // 加载路由配置
    firework.load(require('./config'));

    return {
        init: function () {
            // 启动应用
            firework.start('viewport', config);
        }
    };

});
