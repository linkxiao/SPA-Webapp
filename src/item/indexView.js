/**
 * @file
 * @author zww
 * @e-mail zerone_zww@163.com
 */
define(function (require) {
    var dom = require('saber-dom');
    var path=require("global/path");

    var config = {};

    config.template = require('./item.tpl');
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
                    // if (i == 0 || i == len - 1) {
                    //     dom.setStyle(oLis[i], 'padding', '0px ' + (blank - 1) + 'px');
                    // } else {
                        dom.setStyle(oLis[i], 'padding', '0px ' + blank + 'px');
                    //}
                }

                if (dom.getData(dom.query('header'), 'type') == '2') {
                    var winWidth = window.innerWidth;
                    var width = 750;
                    var btnWidth = 225;
                    var btnHeight = 45;
                    var percentage = winWidth / width;
                    var left = 274 * percentage;
                    var aBtnTop = [256, 218, 216, 256, 258, 280];
                    var oAs = dom.queryAll('.type2 a');

                    for (var i = 0; i < aBtnTop.length; i++) {
                        dom.setStyle(oAs[i], 'left', left + 'px');
                        dom.setStyle(oAs[i], 'top', aBtnTop[i] * percentage + 'px');
                        dom.setStyle(oAs[i], 'width', btnWidth * percentage + 'px');
                        dom.setStyle(oAs[i], 'height', btnHeight * percentage + 'px');
                    }
                }
            })();

            window.onresize = rederNav;
        }
    };

    return config;

});
