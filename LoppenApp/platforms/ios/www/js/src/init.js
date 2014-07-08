/**
    \brief Initialization of libraries.

    \pre Should only be loaded with RequireJS.
*/
define(["./navigationmenu", "./jquery"], function (nav, jeq)
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
