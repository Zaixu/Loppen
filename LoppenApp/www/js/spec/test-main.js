var tests = [];
for (var file in window.__karma__.files) {
  if (window.__karma__.files.hasOwnProperty(file)) {
    if (/Spec\.js$/.test(file)) {
      tests.push(file);
    }
  }
}

requirejs.config({
    // Karma serves files from '/base'
    baseUrl: '/base/src',

    paths:
    {
        async: '../lib/requirejs-plugins/async',
        font: '../lib/requirejs-plugins/font',
        goog: '../lib/requirejs-plugins/goog',
        image: '../lib/requirejs-plugins/image',
        json: '../lib/requirejs-plugins/json',
        noext: '../lib/requirejs-plugins/noext',
        mdown: '../lib/requirejs-plugins/mdown',
        propertyParser: '../lib/requirejs-plugins/propertyParser',
        markdownConverter: '../lib/requirejs-plugins/markdownConverter',
        geocoder_module : './CrynacJavaScript/geocoder_module',
        language_module : './CrynacJavaScript/language_module',
        rest_module : './CrynacJavaScript/rest_module',
        validator_module : './CrynacJavaScript/validator_module',
        mapwrapper_module : './CrynacJavaScript/mapwrapper_module',
        auth_module : './CrynacJavaScript/auth_module',
        jquery : '../lib/jquery',
        'jquery-mobile' : '../lib/jquery-mobile',
        'jquery-mobile-simpledialog2' : '../lib/jquery-mobile-simpledialog2',
        angular : '../lib/angular/angular',
        'angular-mocks' : '../lib/angular/angular-mocks',
        'angular-resource' : '../lib/angular/angular-resource'
    },

    shim:
    {
        "angular": 
        {
            exports: "angular", // So can use as RequireJS module
        },
        "angular-resource":
        {
            deps: ["angular"]
        },
        "angular-mocks":
        {
            deps: ["angular"]
        },
        "jquery-mobile":
        {
            deps: ["jquery", "init"]
        },
        "jquery-mobile-simpledialog2":
        {
            deps: ["jquery", "jquery-mobile"]
        }
    },

    // ask Require.js to load these files (all our tests)
    deps: tests,

    // start test run, once Require.js is done
    callback: window.__karma__.start
});