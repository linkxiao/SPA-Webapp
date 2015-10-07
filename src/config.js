/**
 * @file 路由配置
 * @author linkxiao
 * @e-mail linkxiao@icloud.com
 */

 //path:页面路由，action:对应模块的主js文件(相当于main)，即：当前路由对应的js主文件
define(function (require) {
    return [
      {path: '/home/index', action: require('./home/index')},
      {path: '/item/item', action: require('./item/index')},//二级页面
      {path: '/detail/detail', action: require('./detail/detail')},//三级详情页
      {path: '/other/other', action: require('./other/other')},//其他页面，such as:关于/问题/指南/反馈等
    ];

});
