//window.location.href="/views/qrcode.html"

define(function (require) {
  var dom = require('saber-dom');
  var path=require("global/path");
  var sliderImg=require("../plugin/slide/1.0/slide-img");
  var autoNav=require('../common/base/base');

  var config = {};

   config.template = require('./home.tpl');
   config.className = 'home';
   //config.constructor = require('../common/biz/View');
   config.events = {
           'ready': function () {
             //autoNav.rederNav();
             //autoNav.onresize();
             //window.onresize = autoNav.rederNav();
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

            // var rederNav = function() {
            //     //控制导航的间距
            //     var winWidth = window.innerWidth;
            //     //var blank    = Math.round((winWidth - 18 * 2 - 50 * 4) / 3 / 2) - 1;
            //     var blank    = (winWidth - 12 * 2 - 70 * 4) / 3 / 2;
            //
            //     var oLis = dom.queryAll('.item-con a');
            //     var len  = oLis.length;
            //
            //     for (var i = 0; i < len; i++) {
            //         dom.setStyle(oLis[i], 'padding', '0px ' + blank + 'px');
            //     }
            // };
            //
            // rederNav();
            //
            // window.onorientationchange = rederNav;
         }
       }



  return config;
});
