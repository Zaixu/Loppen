/* Should only be loaded with RequireJS. */
/**
 *   Authentication handling for app
 *   @class Auth
 *   @module Services
 */
define(["jquery", "jquery-mobile", "jquery-mobile-simpledialog2", "language_module", "rest_module"], function(jeq, mobile, prompt, lang, rest)
{
    function Auth()
    {
        // Dialog prompt to appear at login
        var dialogLogin =
        {
            mode: 'blank',
            headerText: lang.getString("auth_login_dialog_title"),
            headerClose: true,
            animate: false,
            callbackOpen: function()
            {
                $("#loginButtonAction").on("click", function()
                {
                    // Check for empty input
                    if(!verifyInput($("#loginUsername").val(), $("#loginPassword").val()))
                    {
                            alert(lang.getString("empty_field"));
                            return;
                    }
                    
                    overlayOn();
                    rest.getData("/Auth/Login/" + $("#loginUsername").val() + "/" + $("#loginPassword").val(), "POST", login, restError);
                });
                
                $("#loginButtonChange").on("click", function()
                {
                    $.mobile.sdCurrentDialog.close();
                    $('<div>').simpledialog2(dialogRegister);
                });
            },
            callbackClose: function()
            {
                $("#loginButtonAction").unbind();
                $("#loginButtonChange").unbind();
            },
            blankContent: '<table border="0"><tr><td><label>'+lang.getString('auth_login_dialog_text_username')+':</label></td><td><input id="loginUsername" type="text"></td></tr><tr><td><label>'+lang.getString('auth_login_dialog_text_password')+':</label></td><td><input id="loginPassword" type="password"></td></tr></table>'+
            '<a id="loginButtonAction" data-role="button" href="#">'+lang.getString('auth_login_dialog_button_login')+'</a>'+
            '<a id="loginButtonChange" data-role="button" href="#">'+lang.getString('auth_login_dialog_button_change')+'</a>'
        };
        
        // Dialog prompt to appear at register
        var dialogRegister =
        {
            mode: 'blank',
            headerText: lang.getString("auth_register_dialog_title"),
            headerClose: true,
            animate: false,
            callbackOpen: function()
            {
                $("#registerButtonAction").on("click", function()
                {
                    // Check for empty input
                    if(!verifyInput($("#registerUsername").val(), $("#registerPassword").val()))
                    {
                        alert(lang.getString("empty_field"));
                        return;
                    }
                    
                    overlayOn();
                    rest.getData("/Auth/Register/" + $("#registerUsername").val() + "/" + $("#registerPassword").val(), "POST", register, restError);
                });
                
                $("#registerButtonChange").on("click", function()
                {
                    $.mobile.sdCurrentDialog.close();
                    $('<div>').simpledialog2(dialogLogin);
                });
            },
            callbackClose: function()
            {
                $("#registerButtonAction").unbind();
                $("#registerButtonChange").unbind();
            },
            blankContent: '<table border="0"><tr><td><label>'+lang.getString("auth_register_dialog_text_username")+':</label></td><td><input id="registerUsername" type="text"></td></tr><tr><td><label>'+lang.getString("auth_register_dialog_text_password")+':</label></td><td><input id="registerPassword" type="password"></td></tr></table>'+
            '<a id="registerButtonAction" data-role="button" href="#">'+lang.getString('auth_register_dialog_button_register')+'</a>'+
            '<a id="registerButtonChange" data-role="button" href="#">'+lang.getString('auth_register_dialog_button_change')+'</a>'
        };
        /**
         *  Logins with the data supplied.
         *  @method login
         *  @param {ServerResponse} data Server response indicating if user data was valid or not.
         */
        function login(data)
        {
            // If the rest call is successfull save credentials entered and close dialog, else show alert with error
            if(data.status)
            {
                saveCredentials($("#loginUsername").val(), $("#loginPassword").val());
                $.mobile.sdCurrentDialog.close();
            }
            else
            {
                alert(lang.getErrorString(data.error));
            }
            overlayOff();
        }
        /**
         *  Register and user with the data supplied.
         *  @method register
         *  @param {ServerResponse} data Server response indicating if user got registered or not.
         */
        function register(data)
        {
            // If the rest call is successfull save credentials and close dialog, else show alert with error.
            if(data.status)
            {
                saveCredentials($("#registerUsername").val(), $("#registerPassword").val());
                $.mobile.sdCurrentDialog.close();
            }
            else
            {
                alert(lang.getErrorString(data.error));
            }
            overlayOff();
        }
        /**
         *  Verifies the input supplied about the user.
         *  @method verifyInput
         *  @param {String} username Username of user
         *  @param {String} password Password of user
         */
        function verifyInput(username, password)
        {
            // If either username or password is empty return false
            if(username.length == 0 || password.length == 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        /** 
         *   Saves the user credentials if theres any saved.
		 *   @method saveCredentials
		 *   @param {String} username Username of the user.
		 *   @param {String} password Password of the user.
		 *   @return {Boolean} If any existing user is available it will be returned with bool status.
         */
        function saveCredentials(username, password)
        {
            // check for empty fields
            if(!verifyInput(username, password))
            {
                return false;
            }

            // Save user to localstorage but also encode it, just in case something else wants to access it.
            localStorage.setItem("username", encode(username));
            localStorage.setItem("password", encode(password));
            
            return true;
        };
        
        /** 
         *  Loads the user credentials if theres any saved
         *
		 *  post: If any existing user is available it will be returned with bool status.
		 *  @method loadCredentials
		 *  @return {Object} returns object of type {sucess, username, password}
         */
        this.loadCredentials = function()
        {
            // Pull username and password data from localstorage
            var username = localStorage.getItem("username");
            var password = localStorage.getItem("password");
            
            // If either is null, they are not defined, then return not logged in
            if(username == null || password == null)
            {
                return {
                    success: false,
                    username: username,
                    password: password
                };
            }
            
            // Decode the user info from storage
            var decodedUsername = decode(username);
            var decodedPassword = decode(password);
            
            // Return that function was successfull and with the correct data
            return {
                success: true,
                username: decodedUsername,
                password: decodedPassword
            };
        };
        /**
         *  Remove all user info from localStorage(HTML5).
         *  @method removeCredentials
         */
        function removeCredentials()
        {
            localStorage.removeItem("username");
            localStorage.removeItem("password");
        }
        
        /**
         *  Encode the string to be sent to the server.
         *  @method encode
         *  @param str The string to encode.
         */
        function encode( str )
        {
            // Encode with base-64
            var enc1 = window.btoa(unescape(encodeURIComponent( str )));
            var enc2 = window.btoa(unescape(encodeURIComponent( enc1 )));
            return enc2;
        }

        /**
         *  Decode the string received from the server.
         *  @method encode
         *  @param str The string to decode.
         */
        function decode( str )
        {
            // Decode with base-64
            var dec1 = decodeURIComponent(escape(window.atob( str )));
            var dec2 = decodeURIComponent(escape(window.atob( dec1 )));
            return dec2;
        }
        
        function overlayOn()
        {
            // Insert html to show loading icon and make ui untouchable
            $('html').append('<div class="overlay" style="z-index:1000;position:absolute;top:0;left:0;right:0;bottom:0;"><img src="css/images/ajax-loader.gif" style="z-index:2000;position:absolute;top:50%;left:50%;"/></div>');
        }
        
        function overlayOff()
        {
            // Remove loading and let users click
            $(".overlay").remove();
        }
        
        function restError(jqxhr, textStatus, error)
        {
            // Swithc off overlay and alert user with error
            overlayOff();
            alert(lang.getString("rest_error"));
        }
        
        /** 
         *	Shows the appropriate prompt for Authentication.
         *	post: Either logout will show if user is already logged in, or login/register dialog will show.
		 *	@method prompt 
         */
        this.prompt = function()
        {
            // If user is existing, hes logged in so show logout, else show login menu
            var creds = this.loadCredentials();
            if(creds.success)
            {
                var res = confirm(lang.getString("auth_logout_dialog_text"));
                if(res == true)
                {
                    removeCredentials();
                }
            }
            else
            {
                $('<div>').simpledialog2(dialogLogin);
            }
        };
    }
        
    return new Auth();
});
