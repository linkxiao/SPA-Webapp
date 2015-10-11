define("saber-widget/Widget",["require","saber-lang/extend","./main","saber-dom","./base/event","./base/state","./base/attribute","./base/dom"],function(require){function e(e){var n,i;for(n in e)if(e.hasOwnProperty(n)){if(i=e[n],/^on[A-Z]/.test(n)&&t(i))this.on(n.charAt(2).toLowerCase()+n.slice(3),i),delete e[n];else if(t(this[n])&&t(i))this[n]=i,delete e[n]}else;return e}function t(e){return"function"==typeof e}var n=require("saber-lang/extend"),i=require("./main"),r=function(e){e=e||{},this.attrs=n({},this.attrs||{},{type:{readOnly:!0,value:this.type},id:{readOnly:!0,getter:function(){return this.id}},main:{readOnly:!0,getter:function(){return this.main}}}),this.states=n({disable:!0},this.states),this.runtime={},this.id=e.id||i.getGUID(),this.main=require("saber-dom").query(e.main),delete e.id,delete e.main,this.initOptions(e),i.add(this),this.addState("init"),this.emit("init")};return r.prototype={constructor:r,type:"Widget",initOptions:function(t){t=e.call(this,t),this.options=n({},t),this.set(this.options)},initDom:function(){},initEvent:function(){},render:function(){var e=this.is("render");if(!e)this.emit("beforerender"),this.initDom(),this.initEvent(),this.get("main").setAttribute(i.getConfig("instanceAttr"),this.get("id")),this.addState("render");if(this.repaint(),!e)this.emit("afterrender");return this},repaint:function(){},dispose:function(){if(!this.is("dispose"))this.emit("beforedispose"),this.disable(),this.runtime=null,this.clearEvents(),i.remove(this),i.disposePlugin(this),this.emit("afterdispose"),this.off(),this.addState("dispose"),this.main.removeAttribute(i.getConfig("instanceAttr")),this.main=null},enable:function(){if(this.is("disable"))this.removeState("disable"),this.emit("enable");return this},disable:function(){if(!this.is("disable"))this.addState("disable"),this.emit("disable");return this},plugin:function(e){return(this.plugins||{})[e]},enablePlugin:function(e,t){return i.enablePlugin(this,e,(this.options.plugin||{})[t||e.toLowerCase()]),this},disablePlugin:function(e){return i.disablePlugin(this,e),this}},n(r.prototype,require("./base/event"),require("./base/state"),require("./base/attribute"),require("./base/dom")),r});