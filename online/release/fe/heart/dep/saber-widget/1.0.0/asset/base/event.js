define("saber-widget/base/event",["require","saber-emitter"],function(require){var e=require("saber-emitter"),exports={};return e.mixin(exports),exports.emit=function(t){var n={type:t,target:this},i=[n].concat(Array.prototype.slice.call(arguments,1)),r=this["on"+t];if("function"==typeof r)r.apply(this,i);e.prototype.emit.apply(this,[t].concat(i))},exports});