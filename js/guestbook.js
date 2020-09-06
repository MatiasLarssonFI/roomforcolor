!function($) {
    rfc.guestbook = {
        _msg_load_offset : 0,
        _nodes : {
            msg_cont : null,
            trigger : null,
            msgs_end : null,
            collapse : null,
            form : null
        },
        _cfg : null,
        
        /**
         * cfg is an object containing the following properties:
         *  - base_url
         */
        init : function(cfg) {            
            var self = this;
            self._nodes.msg_cont = $("#submissions");
            self._nodes.trigger = $("#loadTrigger");
            self._nodes.msgs_end = $("#guestbookMessagesEnd");
            self._nodes.collapse = $("#collapseForm");
            self._nodes.form = $("#guestbook-form");
            self._cfg = cfg;
            
            self._nodes.trigger.click(function() {self._load_messages();});
            self._load_messages();
            self._bindCollapse();
        },
        
        _load_messages : function() {
            var self = this;
            var old_offset = self._msg_load_offset;
            // create a new div to which insert loaded html,
            // append that div to the messages container
            self._nodes.msg_cont.append("<div class=\"guestbook-message-set\" data-loaded_set=\"" + old_offset + "\"></div>");
            var dest_node = self._nodes.msg_cont.children("[data-loaded_set=\"" + old_offset + "\"]").first();
            self._load_messages_data(old_offset, dest_node, function() {
                self._msg_load_offset = self._nodes.msg_cont.find("[data-guestbook_message]").length; // update offset
                if (old_offset === self._msg_load_offset) { // if no messages were received
                    self._nodes.trigger.hide();
                    self._nodes.msgs_end.removeClass("hidden");
                }
            });
        },
        
        
        _load_messages_data : function(offset, dest_node, cb) {
            dest_node.load(this._cfg.base_url + "/guestbook_messages/" + offset, "", cb);
        },
        
        
        _bindCollapse : function() {
            var self = this;
            self._nodes.collapse.on("show.bs.collapse", function() {
                self._nodes.form.find(".contact-url").attr("tabindex", "-1");
                self._nodes.form.append("<input type='hidden' name='egz83SiQXYDz7yrrQcX7fg' value=''>");
            });
        },
        
        
        reset_messages : function() {
            var self = this;
            self._msg_load_offset = 0;
            self._nodes.msg_cont.html("");
            self._load_messages();
        }
    };
}(jQuery);
