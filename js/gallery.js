!function($) {
    var IMG_OVERFLOW_EPSILON = 0.5;
    
    var _move = function(images_container, new_left_px) {
        images_container.animate({
            left : new_left_px
        }, 200);
        return new_left_px;
    };
    
    var _get_right_edge = function(node, include_margin) {
        return node.offset().left + node.outerWidth(include_margin);
    };
    
    
    var _move_right = function(nodes) {
        var images_container = nodes.container;
        var img_window_right_edge = _get_right_edge(nodes.images_window, false); // parent() is a .r4c-gallery-images-window
        
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
    
    var _move_left = function(nodes) {
        var _get_left_edge = function(node, include_margin) {
            return node.offset().left - (include_margin ? parseFloat(node.css("margin-left")) : 0);
        };
        
        var images_container = nodes.container;

        var img_window_left_edge = _get_left_edge(nodes.images_window, false); // parent() is a .r4c-gallery-images-window
        
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
    
    var _update_open_by_url = function(nodes) {
        var hash = window.location.hash;
        var images_container = nodes.container;
        if (hash.length > 0 && hash !== "#") {
            var img_id = hash.replace("#", "");
            if (!isNaN(parseInt(img_id))) { // if img_id is an integer, i. e. an image ID
                var img_a = images_container.find("a[data-img_id='" + img_id + "']");
                img_a.click(); // open image
                
                // move to image
                var img_window_right_edge = _get_right_edge(images_container.parent(), false); // parent() is a .r4c-gallery-images-window
                var slide_right_edge = _get_right_edge(img_a.parent(), true); // parent() is a .r4c-gallery-image
                
                var image_overflow_px = slide_right_edge - img_window_right_edge;
                if (image_overflow_px > IMG_OVERFLOW_EPSILON) {
                    _move(images_container, parseFloat(images_container.css("left")) - image_overflow_px);
                }
            }
        }
    };
    
    // updates the container and containment width and positions
    var _update_container_width = function(nodes) {
        var images_container = nodes.container;
        var slides = images_container.find(".r4c-gallery-image");
        var slide_margin_l = parseFloat(images_container.css("font-size")); // 1em
        images_container.width (
			(function() {
                var font_size = slide_margin_l; // margin
                var width = 0;
                slides.each(function() {
                    width += $(this).outerWidth(true) + font_size;
                });
                return width;
            }())
		);
        
        var container_w = images_container.width();
        var containment = nodes.move_containment;
        
        // containment shall cover the area where the container may be dragged in around
        containment.width((container_w * 2) - nodes.images_window.width());
        
        // this makes the container to be centered within the containment,
        // which allows movement for the container to both left and right
        containment.css("left", (((container_w * -1) / 2) + slide_margin_l) + "px");
        
        images_container.offset(function(i, coords) {
            return {
                top: coords.top,
                left: nodes.images_window.offset().left
            };
        });
    };
    
    
    rfc.gallery = {
        nodes : {
            container : null,
            images_window : null,
            move_containment : null,
            stage_img : null
        },
        update : function() {
            if (this.nodes.container === null) {
                this.nodes.container = $(".r4c-gallery-images-container");
                this.nodes.images_window = this.nodes.container.parents(".r4c-gallery-images-window");
                this.nodes.move_containment = this.nodes.container.parents(".r4c-gallery-images-container-containment");
                this.nodes.stage_img = $(".r4c-gallery-stage img");
            }
            // bind image click
            rfc.gallery.nodes.container.find(".r4c-gallery-image a").click(function(e) {
                e.preventDefault();
                var a_node = $(this);
                rfc.gallery.nodes.stage_img.attr("src", a_node.data("img_url"));
                window.location.hash = "#" + a_node.data("img_id");
            });
            
            _update_container_width(this.nodes);
            _update_open_by_url(this.nodes);
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
            var new_left_px = (btn.data("gallery_nav") == "right" ? _move_right : _move_left)(rfc.gallery.nodes);
            e.preventDefault();
            if (new_left_px !== null) {
                _enable_btns(nav_btns);
            } else {
                _disable_btn(btn);
            }
        });
        
        rfc.gallery.nodes.container.draggable({axis : "x", cursor: "move", containment: rfc.gallery.nodes.move_containment});
    };
    
    $(window).load(_gallery_init);
}(jQuery);
