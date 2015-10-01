//window.location.href="/views/qrcode.html"

define(function (require) {
  var Resolver = require('saber-promise');

  var config = {};

  config.fetch = function (query) {
      // model 是 saber 中最先加载的，在这里初始化`选择医生`按钮跳转的参数
      var pathValue = require('global/path');
      var homeData = require('global/homedata');
      //alert(path+"codepath")
      var data = {
          path: pathValue,
          homeData: homeData
      };
      return Resolver.resolved(data);
  };


  return config;
});
