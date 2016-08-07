// these scripts are executed on all pages

var rfc = {};

$(window).load(function() {
    // sub nav alignment with main nav
    !function () {
        var main_active = $("ul.r4c-nav > li.active"); // active main nav link
        if (main_active.length > 0) {
            var sub_nav = $("ul.r4c-sub-nav");
            var sub_nav_links = sub_nav.children("li");
            var sub_navs_w = (function() {
                var ret = 0;
                sub_nav_links.each(function() {
                    ret += $(this).outerWidth(true);
                });
                return ret;
            }());
            var sub_nav_padding_left = parseFloat(sub_nav.css("padding-left")); // we change this to implement the alignment
            var sub_nav_link_padding_left = parseFloat(sub_nav_links.first().find("a").css("padding-left")); // we use this to fine-tune the alignment
            var active_left = main_active.position().left;
            if (sub_navs_w + active_left < sub_nav.innerWidth()) { // can we align the sub nav left with the main active left?
                sub_nav_padding_left = active_left - sub_nav_link_padding_left;
            } else { // else align the sub nav right with the main active left
                var last_sub_link_left = sub_nav_links.last().position().left;
                sub_nav_padding_left = active_left - last_sub_link_left;
            }
            
            sub_nav.css("padding-left", sub_nav_padding_left + "px");
        }
    }();
    
    
    // top-link
    !function () {
        var top_link = $(".top-link");
        if (top_link.length) {
            var node = $(window);
            node.scroll(function() {
                if (node.scrollTop() > 300) {
                    top_link.removeClass("hidden");
                } else if (node.scrollTop() < 200) {
                    top_link.addClass("hidden");
                }
            });
        }
    }();
});
