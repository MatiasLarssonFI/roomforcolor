!function($) {
    var _update_open_by_url = function(images_container) {
        var hash = window.location.hash;
        if (hash.length > 0 && hash !== "#") {
            images_container.find("a[data-img_id='" + hash.replace("#", "") + "']").click();
        }
    };
    
    var _update_container_width = function(images_container) {
        var slides = images_container.find(".r4c-gallery-image");
        images_container.width (
			(function() {
                var font_size = parseInt(images_container.css("font-size"));
                var extra = 20; // don't know why we need this, or how we could otherwise get the required width
                var width = 0;
                slides.each(function() {
                    width += $(this).outerWidth() + font_size + extra;
                });
                return width;
            }())
		);
    }; 
    
    rfc.gallery = {
        update : function() {
            var cont = $(".r4c-gallery-images-container");
            _update_container_width(cont);
            _update_open_by_url(cont);
        }
    };
}(jQuery);
