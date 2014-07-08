/* Should only be loaded with RequireJS. */
/**
 *  Bootstrappers.
 *  @module Bootstrappers
 *  @main Bootstrappers
 */
/**
 *   Initialization of navigation menu.
 *   @class Navigationmenu
 *   @module Bootstrappers
 */
define(["navigationmenu", "jquery"], function (nav, jeq)
{
    $(document).on("pageinit", function (event)
    {
        nav.init();
    });

    $(document).on("pageshow", function (event)
    {
        nav.show();
    });
});
