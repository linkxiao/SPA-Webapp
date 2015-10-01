//window.location.href="/views/qrcode.html"

define(function (require) {
var lang = require('saber-lang/type');

//var pool = require('../common/biz/pool');
var dom = require('saber-dom');
var config = {};

config.logData = {
  cat: 'home'
};

config.view = require('./indexView');
config.model = require('./indexModel');

//onfig.model = require('./indexModel');
  return config;
});
