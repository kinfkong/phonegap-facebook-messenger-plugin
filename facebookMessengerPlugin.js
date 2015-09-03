cordova.define("com.phonegap.plugins.facebookmessenger.FacebookMessengerPlugin", function(require, exports, module) { "use strict";

/*
 * @author Ally Ogilvie
 * @copyright Wizcorp Inc. [ Incorporated Wizards ] 2014
 * @file - facebookConnectPlugin.js
 * @about - JavaScript interface for PhoneGap bridge to Facebook Connect SDK
 *
 *
 */

var exec = require("cordova/exec");

var facebookMessengerPlugin = {

    shareImage: function(imageUrl, s, f) {
        exec(s, f, "FacebookMessengerPlugin", "shareImage", [imageUrl]);
    }
    
};

module.exports = facebookMessengerPlugin;

});
