define("saber-string/encodeHTML",[],function(){function e(e){if(!e)return"";else return String(e).replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/"/g,"&quot;").replace(/'/g,"&#39;")}return e});