//window.location.href="/views/qrcode.html"

define(function (require) {
  var dom = require('saber-dom');
  var env = require('global/env');
  var path=require("global/path");
  var sliderImg=require("../plugin/slide/1.0/slide-img");
  var config = {};

   config.template = require('./home.tpl');
   config.className = 'home';
   //config.constructor = require('../common/biz/View');
   config.events = {
           'ready': function () {
             //alert("299383");
             //alert($(".title1").text());
             sliderImg({
              wrap: document.getElementById('photo'),
              loop: true,
              autoPlay:true,
              autoTime:6000,
              pagination:true
           });
          (function(){
              var auto = window.innerWidth/640;
              console.log(window.innerWidth);
              console.log(auto);
              var h = auto*400;
              h = h>400?400:h
              dom.query('#photo').style.height = h+'px';
            })();
         }
       }



  return config;
});
