define("saber-dom/main",["require","./selector","./css","./traversal","./data"],function(require){function e(e,t){for(var n in t)if(t.hasOwnProperty(n))e[n]=t[n];return e}var exports={};return e(exports,require("./selector")),e(exports,require("./css")),e(exports,require("./traversal")),e(exports,require("./data")),exports}),define("saber-dom",["saber-dom/main"],function(e){return e});