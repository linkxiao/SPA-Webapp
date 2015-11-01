/**
 * @file
 * @author zww
 * @e-mail zerone_zww@163.com
 */
define(function (require) {
    var dom = require('saber-dom');
    var path=require("global/path");
    var ajax = require('saber-ajax');

    var config = {};

    config.template = require('./other.tpl');
    config.events = {
        ready: function () {
            document.documentElement.scrollTop = 0;
            document.body.scrollTop = 0;

            var rederNav = function() {
                //控制导航的间距
                var winWidth = window.innerWidth;
                //var blank    = Math.round((winWidth - 18 * 2 - 50 * 4) / 3 / 2) - 1;
                var blank    = (winWidth - 12 * 2 - 70 * 4) / 3 / 2;

                var oLis = dom.queryAll('.item-con a');
                var len  = oLis.length;

                for (var i = 0; i < len; i++) {
                    dom.setStyle(oLis[i], 'padding', '0px ' + blank + 'px');
                }
            };

            rederNav();
            
            window.onorientationchange = rederNav;

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

    //用于校验手机号的正则
    var regPhoneNumber = /^\+?(0|86|17951)?(13[0-9]|15[012356789]|17[0-9]|18[0-9]|14[57])[0-9]{8}$/;

    var isSubmitting = false;

    config.domEvents = {
        'click: #feedback-btn': function() {
            var flag = true;

            var nameInput = dom.query('#name-input');
            if (nameInput.value == "") {
                nameInput.style.borderColor = "red";
                flag = false;
            } else {
                nameInput.style.borderColor = "#e1e1e1";
            }

            var phoneNumberInput = dom.query('#phone-number');
            if (phoneNumberInput.value == "" || !regPhoneNumber.test(phoneNumberInput.value)) {
                phoneNumberInput.style.borderColor = "red";
                //flag = false;
            } else {
                phoneNumberInput.style.borderColor = "#e1e1e1";
            }

            var opinionTxt = dom.query('#opinion-txt');
            if (opinionTxt.value == "") {
                opinionTxt.style.borderColor = "red";
                flag = false;
            } else {
                opinionTxt.style.borderColor = "#e1e1e1";
            }

            if (flag && !isSubmitting) {
                isSubmitting = true;

                var url = "http://api.falanmed.com/api/feedback.php";
                //url = "../../mock/feedback.json";
                var params = {
                    name: nameInput.value,
                    mobile: phoneNumberInput.value,
                    content: opinionTxt.value
                };

                ajax.post(url, params).then(function (res) {
                    if (typeof res == "string") {
                        res = eval("("+res+")");
                    }

                    if (res.code == 200) {
                        
                        nameInput.value = "";
                        phoneNumberInput.value = "";
                        opinionTxt.value = "";
                    }

                    alert(res.message);
                    isSubmitting = false;
                }, function(res) {
                    if (res == 'error') {
                        alert('未知错误');
                    } else if (res == 'timeout') {
                        alert('请求超时');
                    } else if (res == 'abort') {
                        alert('请求终止');
                    } else {
                        alert('请求失败');
                    }

                    isSubmitting = false;
                });
            }
        }
    }

    return config;

});
