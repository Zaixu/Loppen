/* Should only be loaded with RequireJS. */
/**
 *  Class containing our navigation menu.
 *  @class NavigationMenu
 *  @module ViewModels
 */
define(["jquery", "language_module"], function (jeq, lang)
{
    return {
        menu:
            {
                home: {
                    title: lang.getString("navigation_menu_item_home_title"),
                    url: "index.html"
                },
                map: {
                    title: lang.getString("navigation_menu_item_map_title"),
                    url: "marketmap.html"
                },
                marketlist: {
                    title: lang.getString("navigation_menu_item_marketlist_title"),
                    url: "fleamarket_list.html"
                },
                about: {
                    title: lang.getString("navigation_menu_item_about_title"),
                    url: "about.html"
                }
            },
        /**
         *  Function for initializing the navigationmenu.
         *
         *  Overrides the mobile swipe event and triggers navigation menu open on swipe right.
         *  @method init
         */
        init: function ()
        {
            // override for jquery mobile swipe event
            // applied everywhere, but made for market map, so we can navigate the map more freely without pulling out menu
            //we only need to trigger a swiperight event if it starts at the outer left part of the screen
            var _old = $.event.special.swipe.handleSwipe;
            
            $.event.special.swipe.handleSwipe = function (start, stop)
            {
                if (stop.time - start.time < $.event.special.swipe.durationThreshold &&
                Math.abs(start.coords[0] - stop.coords[0]) > $.event.special.swipe.horizontalDistanceThreshold &&
                Math.abs(start.coords[1] - stop.coords[1]) < $.event.special.swipe.verticalDistanceThreshold)
                {
                    var swipetype = "";
                    acceptable_region = $(window).width() / 6;
                    if (start.coords[0] < stop.coords[0] && start.coords[0] < acceptable_region)
                    {
                        swipetype = "swiperight";
                    }
                    else if (start.coords[0] > stop.coords[0])
                    {
                        swipetype = "swipeleft";
                    }
                    start.origin.trigger("swipe").trigger(swipetype);
                }
            };


            $(document).on("swiperight", ".page", function (e)
            {
                var $page = $(this);
                $page.on("swiperight", function (e)
                {
                    // open the panel if it isnt open
                    if ($.mobile.activePage.jqmData("panel") !== "open")
                    {
                        if (e.type === "swiperight")
                        {
                            $("#left-panel").panel("open");
                        }
                    }
                });
            });
        },
        /**
         *  Initializes the menu inside the navigation menu.
         *  @method show
         */
        show: function ()
        {
            var items = '', // menu items list
            ul = $(".navigationMenu:empty");  // get "every" navigationMenu that has not yet been processed

            for (key in this.menu)
            {
                items += '<li><a href="' + this.menu[key].url + '" rel="external" data-rel="close">' + this.menu[key].title + '</a></li>';
            }

            ul.append(items);
            ul.listview('refresh');
        }
    }
});
