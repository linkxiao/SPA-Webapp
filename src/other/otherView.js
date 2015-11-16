/**
 * @file
 * @author zww
 * @e-mail zerone_zww@163.com
 */
define(function (require) {
    var dom = require('saber-dom');
    var path=require("global/path");
    var ajax = require('saber-ajax');
    var top=require("../common/base/readyDom");

    var config = {};

    config.template = require('./other.tpl');
    config.events = {
        ready: function () {
          top.domTop();//页面跳转时自动回到顶部
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
