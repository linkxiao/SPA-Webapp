define("saber-viewport/transition/fadeInOut",["require","../util","../config","saber-run","../transition"],function(require){function e(e,i){var o=i.duration||n.duration,s=i.timing||n.timing,a=i.backPage,u=i.frontPage,c=a.main,f=u.main;n.viewport.insertBefore(c,f);var l=t.getSize(f);t.setStyles(c,{opacity:0}),t.setStyles(f,{position:"absolute",top:0,left:0,opacity:1,width:l.width+"px"},!0),r.transition(f,{opacity:0},{duration:o,timing:s});var p=r.transition(c,{opacity:1},{duration:o,timing:s});p.then(function(){e.fulfill()})}var t=require("../util"),n=require("../config"),r=require("saber-run");return require("../transition").register("fadeInOut",e),e});