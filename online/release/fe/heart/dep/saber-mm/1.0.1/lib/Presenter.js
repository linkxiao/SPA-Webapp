function Presenter(e){Abstract.call(this,e),this.init()}var inherits=require("saber-lang").inherits,extend=require("saber-lang").extend,Abstract=require("./Abstract"),Resolver=require("saber-promise"),View=require("./View"),Model=require("./Model");inherits(Presenter,Abstract),Presenter.prototype.init=function(){var e;if(this.view&&this.view.constructor!==Object)e=this.view.constructor;else e=View;if(this.view=new e(this.view),this.model&&this.model.constructor!==Object)e=this.model.constructor;else e=Model;this.model=new e(this.model),Abstract.prototype.init.call(this)},Presenter.prototype.set=function(e){this.path=e},Presenter.prototype.redirect=function(e,t,r){this.router.redirect(e,t,r)},Presenter.prototype.enter=function(e,t,r,n){this.path=t,this.options=extend({},n),this.view.set(e),this.emit("enter");var i=this;return this.model.fetch(r).then(function(e){i.view.render(e)})},Presenter.prototype.wakeup=function(e,t,r){return this.path=e,this.options=extend({},r),this.emit("wakeup"),Resolver.resolved()},Presenter.prototype.ready=function(){this.emit("ready"),this.view.ready()},Presenter.prototype.revived=function(){this.emit("revived"),this.view.revived()},Presenter.prototype.complete=function(){this.emit("complete")},Presenter.prototype.leave=function(){this.emit("leave"),this.view.leave(),this.dispose()},Presenter.prototype.sleep=function(){this.emit("sleep"),this.view.sleep()},Presenter.prototype.dispose=function(){this.view.dispose(),this.model.dispose(),Abstract.prototype.dispose.call(this)},module.exports=Presenter;