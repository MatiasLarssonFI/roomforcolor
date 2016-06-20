!function($) {
    var _update_open_by_url = function(images_container) {
        var hash = window.location.hash;
        if (hash.length > 0 && hash !== "#") {
            images_container.find("a[data-img_id='" + hash.replace("#", "") + "']").click();
        }
    };
    
    wp.gallery = {
        update : function() {
            _update_open_by_url($("#wp-gallery-images"));
        }
    };
}(jQuery);
