/*
 *  Description: For testing of auth module.
 *  
 *  \pre Should only be loaded with RequireJS.
 */
'use strict';
 
define(["auth_module", "language_module"], function(auth, lang)
{
    describe("Auth module", function()
    {
        // Helper functions
        function encode(str)
        {
            var enc1 = window.btoa(unescape(encodeURIComponent(str)));
			var enc2 = window.btoa(unescape(encodeURIComponent(enc1)));
            return(enc2);
        }
        
        function decode(str)
        {
            var dec1 = decodeURIComponent(escape(window.atob(str)));
			var dec2 = decodeURIComponent(escape(window.atob(dec1)));
			return dec2;
        }
        
        // Tests
        // :Functions
        it("'loadCredentials' should load username from 'username' in localstorage", function()
        {
            localStorage.setItem("username", encode("hola"));
            localStorage.setItem("password", encode("hola"));
            
            var authObject1 = auth.loadCredentials();
            localStorage.setItem("username", encode("cousin"))
            var authObject2 = auth.loadCredentials();
            expect(authObject1.username).not.toBe(authObject2.username);
        });
        
        it("'loadCredentials' should load password from 'password' in localstorage", function()
        {
            localStorage.setItem("username", encode("hola"));
            localStorage.setItem("password", encode("hola"));
            
            var authObject1 = auth.loadCredentials();
            localStorage.setItem("password", encode("cousin"))
            var authObject2 = auth.loadCredentials();
            expect(authObject1.password).not.toBe(authObject2.password);
        });
        
        it("'loadCredentials' should load username from 'username' in localstorage decoded", function()
        {
            localStorage.setItem("username", encode("hola"));
            localStorage.setItem("password", encode("cousin"));
            var authObject = auth.loadCredentials();
            expect(authObject.username).toBe("hola");
        });
        
        it("'loadCredentials' should load password from 'password' in localstorage decoded", function()
        {
            localStorage.setItem("username", encode("hola"));
            localStorage.setItem("password", encode("cousin"));
            var authObject = auth.loadCredentials();
            expect(authObject.password).toBe("cousin");
        });
    });
});