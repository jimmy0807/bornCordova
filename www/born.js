var exec = require('cordova/exec');
var platformId = require('cordova/platform').id;

module.exports = {

    pushToView: function() {
        if (platformId == 'ios') {
            exec(null, function(err) { 
                error(err);
            }, "BornCordova", "pushToNavigationController", []);
        } else {
            
        }
    },
};