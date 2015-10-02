define(function (require) {

    var Resolver = require('saber-promise');

    var config = {};

    config.fetch = function (query) {
    	var pathValue = require('global/path');
        var regionValue = require('global/region');
    	var data = {
    		path: pathValue,
            region: regionValue
    	}
        
        return Resolver.resolved(data);
    };

    return config;

});