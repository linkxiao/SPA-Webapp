define("saber-viewport/adapter/er",["require","saber-lang/curry","er/events","../main"],function(require){function e(e){var t=e.view.enterDocument;return e.view.enterDocument=a,function(){t.call(e.view)}}function t(t){var n=t.main;n.id="_ER_MAIN_"+(new Date).getTime()+"_",n.style.display="none",document.body.appendChild(n),this.view.container=n.id,t.on("afterenter",e(this))}function n(){o.on("enteraction",function(e){var n=s.load(e.url.getPath()),o=e.action.leave;e.action.leave=a,n.on("afterleave",function(){o.call(e.action)}),e.action.on("beforerender",i(t,n)),r=n}),o.on("enteractioncomplete",function(){if(r)r.main.style.display="",r.enter()})}var r,i=require("saber-lang/curry"),o=require("er/events"),s=require("../main"),a=function(){};return function(e,t){s.init(e,t),n()}});