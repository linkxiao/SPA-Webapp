//window.location.href="/views/qrcode.html"

define(function (require) {
  var dom = require('saber-dom');
  var path=require("global/path");
  var sliderImg=require("../plugin/slide/1.0/slide-img");
  //var autoNav=require('../common/base/base');
  var top=require("../common/base/readyDom");

  var config = {};

   config.template = require('./home.tpl');
   config.className = 'home';
   //config.constructor = require('../common/biz/View');
   config.events = {
           'ready': function () {
             top.domTop();//页面跳转时自动回到顶部
             sliderImg({
              wrap: document.getElementById('photo'),
              loop: true,
              autoPlay:true,
              autoTime:6000,
              pagination:true
           });
          (function(){
              var auto = window.innerWidth/640;
              // console.log(window.innerWidth);
              // console.log(auto);
              var h = auto*400;
              h = h>400?400:h
              dom.query('#photo').style.height = h+'px';
            })();
         }
       };



  return config;
});
