!function($) {
    var _update_open_by_url = function(nodes) {
        var hash = window.location.hash;
        var images_container = nodes.container;
        if (hash.length > 0 && hash !== "#") {
            var img_id = hash.replace("#", "");
            if (!isNaN(parseInt(img_id))) { // if img_id is an integer, i. e. an image ID
                var img_a = images_container.find("a[data-img_id='" + img_id + "']");
                img_a.click(); // open image
            }
        }
    };
    
    
    rfc.gallery = {
        nodes : {
            container : null,
            stage_img : null
        },
        update : function() {
            if (this.nodes.container === null) {
                this.nodes.container = $(".r4c-gallery-images-container");
                this.nodes.stage_img = $(".r4c-gallery-stage img");
            }
            
            this.nodes.container.slick({
                infinite: false,
                speed: 300,
                slidesToShow: 1,
                variableWidth: true,
                slidesToScroll: 2
            });
            
            // bind image click
            rfc.gallery.nodes.container.find(".r4c-gallery-image a").click(function(e) {
                e.preventDefault();
                var a_node = $(this);
                rfc.gallery.nodes.stage_img.attr("src", a_node.data("img_url"));
                window.location.hash = "#" + a_node.data("img_id");
            });
            
            _update_open_by_url(this.nodes);
        }
    };
    
    var _gallery_init = function() {
        rfc.gallery.update();
    };
    
    $(window).load(_gallery_init);
}(jQuery);
