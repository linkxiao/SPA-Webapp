/**
 * @file
 * @author zww
 * @e-mail zerone_zww@163.com
 */
define(function (require) {
    var dom = require('saber-dom');
    var path=require("global/path");
    
    var config = {};
    
    config.template = require('./other.tpl');
    config.events = {
        ready: function () {

            (rederNav = function() {
                //控制导航的间距
                var winWidth = window.innerWidth;
                //var blank    = Math.round((winWidth - 18 * 2 - 50 * 4) / 3 / 2) - 1;
                var blank    = (winWidth - 18 * 2 - 50 * 4) / 3 / 2;

                var oLis = dom.queryAll('.item a');
                var len  = oLis.length;

                for (var i = 0; i < len; i++) {
                    dom.setStyle(oLis[i], 'padding', '0px ' + blank + 'px');
                }
            })();

            window.onresize = rederNav;

            // (function() {
            //     var oLis = dom.queryAll('.resource-list li');
            //     var len = oLis.length;
            //     var liWidth = Math.round((window.innerWidth - 40) / 2);

            //     for (var i = 0; i < len; i++) {
            //         dom.setStyle(oLis[i], 'width', liWidth);

            //         if (i % 2 == 0) {
            //             dom.setStyle(oLis[i], 'margin-right', '5px');
            //         } else {
            //             dom.setStyle(oLis[i], 'margin-left', '5px');
            //         }
            //     }
            // })();
        }
    };

    return config;

});