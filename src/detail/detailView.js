/**
 * @file
 * @author zww
 * @e-mail zerone_zww@163.com
 */
define(function (require) {
    var dom = require('saber-dom');
    var path=require("global/path");

    var config = {};

    config.template = require('./detail.tpl');
    config.events = {
        ready: function () {
            document.documentElement.scrollTop = 0;
            document.body.scrollTop = 0;
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
            //
            //     if (dom.getData(dom.query('header'), 'type') == '7') {
            //         var oTrs = dom.queryAll('#hospital-table td');
            //         var colWidth = Math.round((winWidth - 16 - 12) / 2);
            //         dom.setStyle(oTrs[0], 'width', colWidth + 'px');
            //         dom.setStyle(oTrs[2], 'width', colWidth + 'px');
            //     }
            // };
            //
            // rederNav();
            //
            // window.onorientationchange = rederNav;
        }
    };


    config.domEvents = {
        'click: .arrow-up, .arrow-down': function(target){
            if (target.className == "arrow-down") {
                target.className = "arrow-up";
                target.innerHTML = "收起详情<i></i>";
                target.parentNode.getElementsByClassName('time-info')[0].style.display = "block";
            } else {
                target.className = "arrow-down";
                target.innerHTML = "展开详情<i></i>";
                target.parentNode.getElementsByClassName('time-info')[0].style.display = "none";
            }
        }
    };
    return config;
});
