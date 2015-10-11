define("saber-widget/main",["require","saber-lang","saber-lang/type"],function(require){var e={},t={configAttr:"s-ui",instanceAttr:"s-id"};e.config=function(e){require("saber-lang").extend(t,e)},e.getConfig=function(e){return t[e]};var n=8652548;e.getGUID=function(e){return e=e||"s",e+n++},e.dispose=function(e){if(!e)for(var t in i)i[t].dispose();else if("string"==typeof e){if(e=this.get(e))e.dispose()}else if("function"==typeof e.dispose)e.dispose();else if(/^\[object\sHTML/.test(Object.prototype.toString.call(e)))this.find(e).forEach(function(e){e.dispose()})},e.find=function(t){var n=this.getConfig("instanceAttr");return[].map.call(t.querySelectorAll("["+n+"]"),function(t){return e.get(t.getAttribute(n))})};var i={};e.add=function(e){var t=i[e.id];if(!t||t!==e)i[e.id]=e},e.remove=function(e){delete i[e.id]},e.get=function(e){return i[e]};var r={};e.register=function(t){if("function"==typeof t){var n=t.prototype.type;if(n in r)throw new Error(n+" is exists!");r[n]=t,e[n.charAt(0).toLowerCase()+n.slice(1)]=function(e,t){if(require("saber-lang/type").isPlainObject(e))t=e||{};else t=t||{},t.main=e;return new r[n](t).render()}}};var o={};return e.registerPlugin=function(e){if("function"==typeof e){var t=e.prototype.type;if(t in o)throw new Error("plugin "+t+" is exists!");o[t]=e}},e.enablePlugin=function(e,t,n){var i=e.plugins||(e.plugins={}),r=i[t];if(!r&&(r=o[t]))r=e.plugins[t]=new r(e,n);if(r)r.enable()},e.disablePlugin=function(e,t){var n=e.plugins;if(n){var i;if(Array.isArray(t))i=t;else if(!t)i=Object.keys(n);else if("string"==typeof t)i=[t];i.forEach(function(e){if(e&&n[e])n[e].disable()})}},e.disposePlugin=function(e,t){var n=e.plugins;if(n){var i;if(Array.isArray(t))i=t;else if(!t)i=Object.keys(n);else if("string"==typeof t)i=[t];i.forEach(function(e){if(e&&n[e])n[e].dispose(),delete n[e]})}},e}),define("saber-widget",["saber-widget/main"],function(e){return e});