define("saber-widget/ImageView",["require","saber-lang","saber-dom","hammer","./Widget","./main"],function(require){function e(){this.attrs={animate:{value:!0},speed:{value:200},zoomScale:{value:.88},switchAt:{value:.5},datasource:{value:[],repaint:!0},index:{value:0},toolbar:{value:!0,repaint:!0},flex:{value:!1,repaint:!0},full:{value:!1,setter:function(e){this.toggleState("full",e),i.toggleClass(this.main,"full",e)}},length:{readOnly:!0,getter:function(){return this.get("datasource").length}}},s.apply(this,arguments)}function t(e,t,r){var i=e.naturalWidth||e.width,o=e.naturalHeight||e.height,s=t.width,a=t.height;if(i>s)o*=s/i,i=s;if(o>a)i*=a/o,o=a;if(i*=r,o*=r,n(e,"width",i),n(e,"height",o),a>o)n(e,"margin-top",Math.round(Math.max((a-o)/2,0)))}function n(e,t,n){if(t=t||"width",arguments.length>2)return i.setStyle(e,t,(parseInt(n,10)||0)+"px");else return parseInt(i.getStyle(e,t),10)||0}var r=require("saber-lang"),i=require("saber-dom"),o=require("hammer"),s=require("./Widget");return e.prototype={type:"ImageView",initDom:function(){var e=this.runtime;if(e.viewport={width:window.innerWidth,height:window.innerHeight},this.main)e.setup=this.main,this.set("datasource",i.queryAll("[data-role=image]",this.main).map(function(e,t){return i.setData(e,"imageview",t),i.getData(e,"src")||e.getAttribute("src")}));var t=this.main=document.createElement("div");if(t.className="ui-imageview",i.hide(t),this.is("full"))i.addClass(t,"full");var n=e.toolbar=document.createElement("div");i.setData(n,"role","toolbar"),n.innerHTML=this.makeToolbar(),t.appendChild(n);var r=e.wrapper=document.createElement("div");i.setData(r,"role","wrapper"),t.appendChild(r),this.get("datasource").forEach(this._append,this),document.body.appendChild(t)},initEvent:function(){var e=this.runtime;e.scale=1;var t="release pinchin pinchout drag swipeleft swiperight tap doubletap";if(e.hammer=new o(e.wrapper,{dragLockToAxis:!0}).on(t,e.handler=r.bind(this._handleHammer,this)),this.on("beforedispose",function(){e.hammer.off(t,e.handler)}),e.setup)this.addEvent(e.setup,"click",function(e){if(i.matches(e.target,"[data-imageview]")){var t=i.getData(e.target,"imageview");if(t)this.enable().to(0|t)}});if(this.get("toolbar"))this.addEvent(e.toolbar,"touchstart",function(e){if(e.preventDefault(),i.matches(e.target,"[data-role=close]"))this.disable()}),this.on("change",function(){this.runtime.toolbar.innerHTML=this.makeToolbar()})},repaint:function(e){if(s.prototype.repaint.call(this,e),!e)return void this._resize(!0).to(this.get("index"),!0);if(e.hasOwnProperty("datasource")){var t=!this.is("disable");if(t)this.disable();if(this.runtime.wrapper.innerHTML="",e.datasource[1].forEach(this._append,this),t)this.enable().to(0)}if(e.hasOwnProperty("flex"))this[e.flex[1]?"enablePlugin":"disablePlugin"]("ImageViewFlex","flex")},enable:function(){if(this.is("render")){if(this.enablePlugin("Masker").enablePlugin("Zoom"),this.get("flex"))this.enablePlugin("ImageViewFlex","flex");i.show(this.main)}return s.prototype.enable.call(this),this},disable:function(){if(this.is("render")){if(this.disablePlugin("Masker").disablePlugin("Zoom"),this.get("flex"))this.disablePlugin("ImageViewFlex");i.hide(this.main)}return s.prototype.disable.call(this),this},_handleHammer:function(e){var t=e.gesture;t.preventDefault();var n=this.is("zoom"),r=this.runtime,i=r.viewport.width,o=this.get("index");switch(e.type){case"drag":var s=t.direction;if(n)this._drag(t.deltaX,t.deltaY);else if("left"===s||"right"===s){var a=this.get("length"),u=100/i*t.deltaX/a;if(0===o&&"right"===s||o===a-1&&"left"===s)u*=.4;this._move(this._percent(o)+u)}break;case"swipeleft":if(t.stopDetect(),!n)this.next();break;case"swiperight":if(t.stopDetect(),!n)this.prev();break;case"tap":this.set("full",!this.is("full"));break;case"doubletap":t.preventDefault(),this[n?"reset":"zoom"]();break;case"pinchin":this.zoom(r.scale-.2*t.scale),t.stopPropagation();break;case"pinchout":this.zoom(r.scale+.2*t.scale),t.stopPropagation();break;case"release":if(n)if(t.touches.length>1)t.stopDetect();else r.dragX+=t.deltaX,r.dragY+=t.deltaY;else if(Math.abs(t.deltaX)>i*this.get("switchAt"))this["right"===t.direction?"prev":"next"]();else this.to(o)}},_percent:function(e){var t=this.get("length");return e=Math.max(0,Math.min(t-1,e)),-(100/t)*e},_resize:function(e){var r=this.runtime,o=r.viewport,s={width:window.innerWidth,height:window.innerHeight};if(!e&&s.width===o.width&&s.height===o.height)return this;r.viewport=s;var a=this.get("zoomScale");return i.children(r.wrapper).forEach(function(e){n(e,"width",s.width);var r=i.query("img",e);if(r)t(r,s,a)}),n(r.wrapper,"width",s.width*this.get("length")),this.emit("resize",o,s),this},_append:function(){var e=document.createElement("div");i.setData(e,"role","item"),this.runtime.wrapper.appendChild(e)},_load:function(e){var n=i.queryAll("[data-role=item]",this.runtime.wrapper)[e];if(!n||!i.query("img",n)){var r=this;r.emit("beforeload",e);var o=document.createElement("img");i.hide(o),o.src=r.get("datasource")[e],o.onload=function(){this.onload=null,t(this,r.runtime.viewport,r.get("zoomScale")),i.show(this),r.emit("afterload",e)},n.appendChild(o)}},_move:function(e,t){var n=this.runtime.wrapper;if(this.get("animate"))i.setStyle(n,"transition","all "+(t||0)+"ms");return i.setStyle(n,"transform","translate3d("+e+"%, 0, 0) scale3d(1, 1, 1)"),this},_drag:function(e,t,n){var r=this.runtime,o=r.scale,s=this._image(this.get("index"));if(n=n||0,e=r.dragX+e,t=r.dragY+t,this.get("animate"))i.setStyle(s,"transition","all "+n+"ms");i.setStyle(s,"transform","translate3d("+e+"px, "+t+"px, 0) scale3d("+o+", "+o+", 1)")},_image:function(e){return i.query("[data-role=item]:nth-child("+(e+1)+") img",this.runtime.wrapper)},setup:function(e){if(e&&e!==this.runtime.setup)this.runtime.setup=e,this.set("datasource",i.queryAll("[data-role=image]",e).map(function(e,t){return i.setData(e,"imageview",t),i.getData(e,"src")||e.getAttribute("src")})),this._resize(!0)},makeToolbar:function(){return['<span data-role="close">关闭</span>',"<h1>"+(this.get("index")+1)+" of "+this.get("length")+"</h1>"].join("")},to:function(e,t){if(!t&&this.is("disable"))return this;if("number"!=typeof e){if(e=i.getData(e,"imageview"),!e)return this;e=0|e}if(this.is("zoom"))this.reset();var n=this.get("index");if(e=Math.max(0,Math.min(e,this.get("length")-1)),this._move(this._percent(e),this.get("speed")),n!==e)this.set("index",e),this.emit("change",n,e);return this._load(e),this},prev:function(){return this.to(this.get("index")-1)},next:function(){return this.to(this.get("index")+1)},zoom:function(e){if(!e&&this.is("zoom"))return this;if(e&&(.7>e||e>3))return this;this.addState("zoom");var t=this.runtime;t.scale=e||2,t.dragX=t.dragX||0,t.dragY=t.dragY||0,this._drag(0,0,this.get("speed")),this.emit("zoom",t.scale)},reset:function(){if(!this.is("zoom"))return this;this.removeState("zoom");var e=this.runtime;e.scale=1,e.dragX=0,e.dragY=0,this._drag(0,0,this.get("speed")),this.emit("reset")}},r.inherits(e,s),require("./main").register(e),e});