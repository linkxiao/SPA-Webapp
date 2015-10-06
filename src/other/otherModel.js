define(function (require) {

    var Resolver = require('saber-promise');

    var config = {};

    config.fetch = function (query) {
    	var pathValue = require('global/path');
    	var data = {
    		path: pathValue
    	}
        
        return Resolver.resolved(data);
    };

    return config;

});