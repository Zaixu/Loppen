/* Should only be loaded with RequireJS. */
/**
 *  Module for getting language specific strings for use in UI.
 *	@class LanguageModule
 *  @module Services
 */
define([], function()
{
    return {
        languageInUse: "dk",
        languages: ["en", "dk"],

        /// Used for containing language strings.
        library: {
            "en":
            {
                "home_title": "Start",
                "navigation_menu_item_home_title": "Home",
                "navigation_menu_item_map_title": "Map",
                "navigation_menu_item_about_title": "About",
                "navigation_menu_item_marketlist_title": "Market list",
                "marketlist_title": "Markets",
                "marketlist_search_text": "Find",
                "marketlist_category_header": "Categories",
                "marketlist_category_all": "All",
                "marketlist_category_flea": "Fleamarket",
                "marketlist_category_charity": "Charity Shop",
                "marketlist_category_trunk": "Trunk Sale",
                "marketlist_category_other": "Other",
                "marketlist_table_header_name": "Name",
                "marketlist_table_header_city": "City",
                "marketlist_loading_title": "Loading",
                "marketlist_loading_message": "Please wait...",
                "marketlist_item_clothes": "Clothes",
                "marketlist_item_furniture": "Furniture",
                "marketlist_item_antic": "Antic",
                "marketlist_item_other": "Other",
                "marketlist_server_error_defaultmsg": "Could not connect to server.",
                "marketmap_title" : "Flea Map",
                "marketmap_spinnertext": "Loading markets",
				"marketinfo_title": "Market Info",
				"marketinfo_info_title": "Info",
				"marketinfo_info_name": "Name",
				"marketinfo_info_created": "Created:",
				"marketinfo_info_modified": "Modified:",
				"marketinfo_description_title": "Description",
				"marketinfo_address_title": "Address",
				"marketinfo_openings_title": "Openings",
                "marketinfo_address_navigate": "Navigate",
                "marketinfo_review_title": "Rate market",
                "marketinfo_textreview_label": "Your review",
                "marketinfo_userreviews_header": "Reviews",
                "marketinfo_review_button": "Review",
                "marketinfo_post_review_inputerror": "Please rate the market and fill out the review box",
                "marketinfo_post_review_success" : "Your review is accepted",
                "landingpage_header": "Flea",
                "landingpage_subheader": "The one app for fleamarket-lovers",
                "landingpage_infotext": "<p>With Flea you can:"+
                        "<ul>"+
                        "<li> Find markets close to you</li>"+
                        "<li> Find markets by category, type, and hours</li>"+
                        "<li> Keep yourself updated with new markets</li>"+
                        "<li> Rate and comments markets you like</li>"+
                    "</ul>"+
                    "</p>",
                "landingpage_platformstext": "Flea is available for several platforms:",
                "landingpage_settingsbutton": "Settings",
                "landingpage_loginbutton": "Login",
                "landingpage_loginbutton_logout": "Logout",
                "landingpage_navigationtext": "Swipe the menu out from the left to navigate.",
                "marketmap_currentlocationtext": "Your position",
                "marketmap_getmarkets_error": "Could not retrieve markets",
                "about_title": "About",
                "about_header_about": "About us",
                "about_header_vision": "Our vision",
                "about_header_contact": "Contact",
                "about_text_about": "Three engineering students from University of Aarhus and a journalist from Stickelbergs Bureau",
                "about_text_vision": "Creating a crossplatform app for finding all sorts of markets.",
                "about_text_contact": "We'd love to receive feedback at development@crynac.com",
				"auth_login_dialog_title": "Login",
				"auth_login_dialog_text_username": "Username",
				"auth_login_dialog_text_password": "Password",
				"auth_login_dialog_button_login": "Login",
				"auth_login_dialog_button_change": "Go to register",
				"auth_register_dialog_title": "Register",
				"auth_register_dialog_text_username": "Username",
				"auth_register_dialog_text_password": "Password",
				"auth_register_dialog_button_register": "Register",
				"auth_register_dialog_button_change": "Go to login",
				"auth_logout_dialog_text": "Would you like to log out?",
				"rest_error": "Error: communicating with rest framework",
				"empty_field": "One or more fields are empty"
            },
            "dk":
            {
                "home_title": "Start",
                "navigation_menu_item_home_title": "Hjem",
                "navigation_menu_item_map_title": "Kort",
                "navigation_menu_item_about_title": "Om os",
                "navigation_menu_item_marketlist_title": "Markedsliste",
                "marketlist_title": "Markeder",
                "marketlist_search_text": "Find",
                "marketlist_category_header": "Kategorier",
                "marketlist_category_all": "Alle",
                "marketlist_category_flea": "Loppemarked",
                "marketlist_category_charity": "Genbrugsbutik",
                "marketlist_category_trunk": "Bagagerumssalg",
                "marketlist_category_other": "Andet",
                "marketlist_table_header_name": "Navn",
                "marketlist_table_header_city": "By",
                "marketlist_loading_title": "Loader",
                "marketlist_loading_message": "Vent venligst...",
                "marketlist_item_clothes": "Tøj",
                "marketlist_item_furniture": "Møbler",
                "marketlist_item_antic": "Antik",
                "marketlist_item_other": "Andet",
                "marketlist_server_error_defaultmsg": "Kunne ikke forbinde til serveren.",
                "marketmap_title" : "Loppe Kort",
                "marketmap_spinnertext": "Indlæser markeder",
				"marketinfo_title": "Marked Info",
				"marketinfo_info_title": "Info",
				"marketinfo_info_name": "Navn",
				"marketinfo_info_created": "Lavet:",
				"marketinfo_info_modified": "Ændret:",
				"marketinfo_description_title": "Beskrivelse",
				"marketinfo_address_title": "Addresse",
				"marketinfo_openings_title": "Åbningstider",
                "marketinfo_address_navigate": "Naviger",
                "marketinfo_review_title": "Bedøm marked",
                "marketinfo_textreview_label": "Din anmeldelse",
                "marketinfo_userreviews_header": "Bedømmelser",
                "marketinfo_review_button": "Bedøm",
                "marketinfo_post_review_inputerror": "Check venligst du har bedømt markedet og udfyldt anmeldelse",
                "marketinfo_post_review_success" : "Din anmeldelse er accepteret",
                "landingpage_header": "Loppen",
                "landingpage_subheader": "Appen til loppemarkeds-elskere",
                "landingpage_infotext": "<p>Med Loppen kan du:"+
                        "<ul>"+
                        "<li> Finde markeder tæt på dig</li>"+
                        "<li> Finde markeder ud fra kategori, type og tidspunkter</li>"+
                        "<li> Holde dig opdateret med nye markeder</li>"+
                        "<li> Rate og kommentere markeder du synes godt om</li>"+
                    "</ul>"+
                    "</p>",
                "landingpage_platformstext": "Loppen fås til flere platforme:",
                "landingpage_settingsbutton": "Indstillinger",
                "landingpage_loginbutton": "Login",
                "landingpage_loginbutton_logout": "Logout",
                "landingpage_navigationtext": "Swipe menuen ud fra venstre for at navigere.",
                "marketmap_currentlocationtext" : "Din position",
                "marketmap_getmarkets_error": "Kunne ikke hente markeder",
                "about_title": "Om os",
                "about_header_about": "Lidt om os",
                "about_header_vision": "Vores vision",
                "about_header_contact": "Kontakt",
                "about_text_about": "Tre ingeniørstuderende fra Aarhus Universitet og en journalist fra Stickelbergs bureau.",
                "about_text_vision": "At skabe en app man kan bruge til at finde markeder af alle slags der fungerer på flere platforme.",
                "about_text_contact": "Vi modtager gerne ris og ros på development@crynac.com",
				"auth_login_dialog_title": "Login",
				"auth_login_dialog_text_username": "Brugernavn",
				"auth_login_dialog_text_password": "Kodeord",
				"auth_login_dialog_button_login": "Login",
				"auth_login_dialog_button_change": "Gå til registrering",
				"auth_register_dialog_title": "Registrer",
				"auth_register_dialog_text_username": "Brugernavn",
				"auth_register_dialog_text_password": "Kodeord",
				"auth_register_dialog_button_register": "Registrer",
				"auth_register_dialog_button_change": "Gå til login",
				"auth_logout_dialog_text": "Vil du gerne logge ud?",
				"rest_error": "Fejl: kommunikation med rest framework",
				"empty_field": "Et eller flere felter er tomme"
            }
        },
        errorlibrary: {
            "en":
            {
                0: "No error",
                1: "No valid id",
                2: "Username length invalid",
                3: "Password length invalid",
                4: "Invalid email",
                5: "User already exists",
                6: "Invalid Credentials",
                7: "Invalid Credentials",
                8: "Unable to parse fleamarket id",
                9: "Unable to parse stars",
                10: "Invalid stars range",
                11: "Review exists",
                12: "Review does not exist",
                13: "Invalid id",
                14: "Review does not exist",
                15: "Invalid category",
                16: "Invalid latitude",
                17: "Invalid longitude",
                18: "Invalid fleamarket id",
                19: "Unknown fleamarket",
                20: "Invalid fleamarket i",
                21: "Unknown fleamarke",
                22: "Invalid from tim",
                23: "Invalid to tim",
                24: "Invalid fleamarket i",
                25: "Unknown fleamarket or no acces",
                26: "Invalid opening id",
                27: "Unknown opening or no access",
                28: "Invalid opening id",
                29: "Unknown opening or no access"

            },
            "dk":
            {
                0: "Ingen fejl",
                1: "Ikke gyldigt id",
                2: "Brugernavn længde ugyldig",
                3: "Adgangskode længde ugyldig",
                4: "Ugyldig mail",
                5: "Bruger eksisterer allerede",
                6: "Ugyldig legitimation",
                7: "Ugyldig legitimation",
                8: "Kan ikke parse loppemarked id",
                9: "Kan ikke parse ratings stjerner",
                10: "Ugyldig stjerne interval",
                11: "Anmeldelse eksisterer",
                12: "Anmeldelse eksisterer ikke",
                13: "Ugyldigt id",
                14: "Anmeldelse eksisterer ikke",
                15: "Ugyldig kategori",
                16: "Ugyldig breddegrad",
                17: "Ugyldig længdegrad",
                18: "Ugyldigt loppemarkeds id",
                19: "Ukendt loppemarked",
                20: "Ugyldigt loppemarkeds id",
                21: "Ugyldigt loppemarked",
                22: "Ugyldigt starttidspunkt",
                23: "Ugyldigt sluttidspunkt",
                24: "Ugyldigt loppemarkeds id",
                25: "Ukendt loppemarked eller ingen adgang",
                26: "Ugyldigt åbningstidsobjekt id",
                27: "Ukendt åbningstidsobjekt eller ingen adgang",
                28: "Ugyldigt åbningstidsobjekt id",
                29: "Ukendt åbningstidsobjekt eller ingen adgang"

            }
        },

        /** 
         *   Change language used in the module.
         *
         *   pre:'language' should be one of the values from 'languages'.
         *   @method changeLanguage
         *   @param {String} language Set language to be used .
         */
        changeLanguage: function (language)
        {
            if (this.languages.indexOf(language) > -1)
                this.languageInUse = language;
        },

        /** 
         *	 Gets a string from the key specified.
         *   
         *   pre: The key is specified in the 'library'.
         *   
         *   post: The string for the 'key' and 'languageInUse' is returned.(If not found the key is returned.)
         *   @method getString
         *   @param {String} key Get UI string from specified key.
         *   @return {String} returns UI string.
         */
        getString: function (key)
        {
            // Get string
            if (!(key in this.library[this.languageInUse]))
                return (key);
            else
                return (this.library[this.languageInUse][key]);
        },
        /** 
         * Gets an error string from the key specified.
         *
         *  pre: code is specified as key in the errorlibrary
         *
         *  post: The string for the 'code' and 'languageInUse' is returned, else the code is returned.
         *  @method getErrorString
         *  @param {String} key Get error string from specified key.
         *  @return {String} Returns error string.
         */
        getErrorString: function(code)
        {
             // Get string
            if (!(code in this.errorlibrary[this.languageInUse]))
                return code;
            else
                return this.errorlibrary[this.languageInUse][code];
        }
    };
});
