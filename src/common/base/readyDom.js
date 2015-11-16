define(function (require) {
return {
   domTop:function() {
       document.documentElement.scrollTop = 0;//页面跳转是
       document.body.scrollTop = 0;
   }
 };
});
