/**
 * @file
 * @author zww
 * @e-mail zerone_zww@163.com
 */
define(function (require) {
    var dom = require('saber-dom');
    var path=require("global/path");
    var top=require("../common/base/readyDom");

    var config = {};

    config.template = require('./detail.tpl');
    config.events = {
        ready: function () {
          top.domTop();//页面跳转时自动回到顶部
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
