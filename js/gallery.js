!function($) {
    var IMG_OVERFLOW_EPSILON = 0.1;
    
    var _move = function(images_container, new_left_px) {
        images_container.animate({
            left : new_left_px
        }, 200);
        return new_left_px;
    };
    
    var _get_right_edge = function(node, include_margin) {
        return node.offset().left + node.outerWidth(include_margin);
    };
    
    
    var _move_right = function(images_container) {
        var img_window_right_edge = _get_right_edge(images_container.parent(), false); // parent() is a .r4c-gallery-images-window
        
        // find how many pixels the first overflowing image is actually overflowing
        var image_overflow_px = (function(){
            var result = null;
            images_container.find(".r4c-gallery-image").each(function() {
                var right_edge = _get_right_edge($(this), true);
                if (right_edge - img_window_right_edge > IMG_OVERFLOW_EPSILON) {
                    result = right_edge - img_window_right_edge;
                    return false; // exit each()-loop
                }
            });
            return result;
        }());
        
        if (image_overflow_px !== null) {
            var old_left_px = parseFloat(images_container.css("left"));
            return _move(images_container, old_left_px - image_overflow_px);
        }
        
        return null;
    };
    
    var _move_left = function(images_container) {
        var _get_left_edge = function(node, include_margin) {
            return node.offset().left - (include_margin ? parseFloat(node.css("margin-left")) : 0);
        };

        var img_window_left_edge = _get_left_edge(images_container.parent(), false); // parent() is a .r4c-gallery-images-window
        
        // find how many pixels the first overflowing image is actually overflowing
        var image_overflow_px = (function(){
            var result = null;
            $(images_container.find(".r4c-gallery-image").get().reverse()).each(function() {
                var left_edge = _get_left_edge($(this), true);
                if (img_window_left_edge - left_edge > IMG_OVERFLOW_EPSILON) {
                    result = img_window_left_edge - left_edge;
                    return false; // exit each()-loop
                }
            });
            return result;
        }());
        
        if (image_overflow_px !== null) {
            var old_left_px = parseFloat(images_container.css("left"));
            return _move(images_container, old_left_px + image_overflow_px);
        }
        
        return null;
    };
    
    var _update_open_by_url = function(images_container) {
        var hash = window.location.hash;
        if (hash.length > 0 && hash !== "#") {
            var img_id = hash.replace("#", "");
            if (!isNaN(parseInt(img_id))) { // if img_id is an integer
                var img_a = images_container.find("a[data-img_id='" + img_id + "']");
                img_a.click(); // open image
                
                // move to image
                var img_window_right_edge = _get_right_edge(images_container.parent(), false); // parent() is a .r4c-gallery-images-window
                var slide_right_edge = _get_right_edge(img_a.parent(), true); // parent() is a .r4c-gallery-image
                
                var image_overflow_px = slide_right_edge - img_window_right_edge;
                if (image_overflow_px > IMG_OVERFLOW_EPSILON) {
                    var old_left_px = parseFloat(images_container.css("left"));
                    _move(images_container, old_left_px - image_overflow_px);
                }
            } else if (hash.startsWith("#gallery_move_")) { // if hash is a move command
                var new_left_px = hash.split("_")[2];
                var new_left_px_float = parseFloat(new_left_px);
                if (!isNaN(new_left_px_float)) {
                    _move(images_container, new_left_px_float);
                }
            }
        }
    };
    
    var _update_container_width = function(images_container) {
        var slides = images_container.find(".r4c-gallery-image");
        images_container.width (
			(function() {
                var font_size = parseFloat(images_container.css("font-size")); // margin
                var width = 0;
                slides.each(function() {
                    width += $(this).outerWidth(true) + font_size;
                });
                return width;
            }())
		);
    };
    
    
    rfc.gallery = {
        container : null,
        update : function() {
            if (this.container === null) {
                this.container = $(".r4c-gallery-images-container");
            }
            _update_container_width(this.container);
            _update_open_by_url(this.container);
        }
    };
    
    var _gallery_init = function() {
        rfc.gallery.update();
        
        var _enable_btns = function(btns) {
            btns.removeClass("disabled");
            btns.removeAttr("title");
        };
        
        var _disable_btn = function(btn) {
            btn.addClass("disabled");
            btn.attr("title", rfc.txt.no_more_images);
        };
        
        var nav_btns = $("[data-gallery_nav]");
        
        nav_btns.click(function(e) { // move left or right
            var btn = $(this);
            var new_left_px = (btn.data("gallery_nav") == "right" ? _move_right : _move_left)(rfc.gallery.container);
            e.preventDefault();
            if (new_left_px !== null) {
                window.location.hash = "#gallery_move_" + new_left_px.toPrecision(2);
                _enable_btns(nav_btns);
            } else {
                _disable_btn(btn);
            }
        });
    };
    
    $(window).load(_gallery_init);
}(jQuery);
