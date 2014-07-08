cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
    {
        "file": "plugins\\com.borismus.webintent\\www\\webintent.js",
        "id": "com.borismus.webintent.WebIntent",
        "clobbers": [
            "CDV.WebIntent"
        ]
    },
    {
        "file": "plugins\\org.apache.cordova.device\\www\\device.js",
        "id": "org.apache.cordova.device.device",
        "clobbers": [
            "device"
        ]
    },
    {
        "file": "plugins\\com.phonegap.plugins.pgmaplauncher\\www\\PGMapLauncher.js",
        "id": "com.phonegap.plugins.pgmaplauncher.PGMapLauncher",
        "clobbers": [
            "CDV.PGMapLauncher"
        ]
    }
]
});