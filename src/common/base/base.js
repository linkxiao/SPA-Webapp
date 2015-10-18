define(function (require) {
  var dom = require('saber-dom');
  // var config = {};
  //  //config.constructor = require('../common/biz/View');
  //  config.events = {
  //          'ready': function () {

return {
 rederNav:function() {
       //控制导航的间距
       var winWidth = window.innerWidth;
       //var blank    = Math.round((winWidth - 18 * 2 - 50 * 4) / 3 / 2) - 1;
       var blank    = (winWidth - 12 * 2 - 70 * 4) / 3 / 2;

       var oLis = dom.queryAll('.item-con a');
       var len  = oLis.length;

       for (var i = 0; i < len; i++) {
           dom.setStyle(oLis[i], 'padding', '0px ' + blank + 'px');
       }

   },
   onresize:function(){
     window.onresize=this.rederNav();
   }
    

 }





  //
  //        }
  //      }
  //
  //
  // return config;
});
