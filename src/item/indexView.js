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
            document.documentElement.scrollTop = 0;
            document.body.scrollTop = 0;

            document.addEventListener('touchstart',touchStart, false);
            //document.addEventListener('touchmove',touch, false);
            document.addEventListener('touchend',touchEnd, false);

            var clientX = -1;
            var clientY = -1;

            function touchStart(event) {
                clientX = event.touches[0].clientX;
                clientY = event.touches[0].clientY;
            }

            function touchEnd(event) {
                if (event.changedTouches[0].clientX - clientX > 10) {
                    var navIndex =  Number(dom.query('.selected').getAttribute('data-value'))-1;
                    navIndex >= 0 ? dom.queryAll('.nav .item-con a')[navIndex].click() : "";
                }

                if (event.changedTouches[0].clientX - clientX < -10) {
                    var navIndex =  Number(dom.query('.selected').getAttribute('data-value'))+1;
                    navIndex <= 3 ? dom.queryAll('.nav .item-con a')[navIndex].click() : "";
                }

                clientX = -1;
                clientY = -1;
            }

            (rederNav = function() {
                //控制导航的间距
                var winWidth = window.innerWidth;
                //var blank    = Math.round((winWidth - 18 * 2 - 50 * 4) / 3 / 2) - 1;
                var blank    = (winWidth - 12 * 2 - 70 * 4) / 3 / 2;

                var oLis = dom.queryAll('.item-con a');
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
