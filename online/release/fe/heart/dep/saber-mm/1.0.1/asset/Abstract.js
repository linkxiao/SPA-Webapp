define("saber-mm/Abstract",["require","exports","module","saber-emitter","saber-lang"],function(require,exports,module){function e(e){var t,r=e.events||{};Object.keys(r).forEach(function(n){if(t=r[n],n.indexOf(":")<0)e.on(n,t);else{var o=n.split(":"),s=o[0].trim();if(n=o[1]&&o[1].trim(),s&&e[s]&&n)e[s].on(n,i(t,e))}})}function t(e){e=e||{},n(this,e)}var r=require("saber-emitter"),n=require("saber-lang").extend,i=require("saber-lang").bind,o=require("saber-lang").inherits;o(t,r),t.prototype.init=function(){e(this),this.emit("init")},t.prototype.dispose=function(){this.off()},module.exports=t});