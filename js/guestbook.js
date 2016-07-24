!function($) {
    rfc.guestbook = {
        _msg_load_offset : 0,
        _nodes : {
            msg_cont : null,
            trigger : null,
            msgs_end : null
        },
        
        /**
         * cfg is an object containing the following properties:
         *  - base_url
         */
        init : function(cfg) {
            var load_messages_data = function(offset, dest_node, cb) {
                dest_node.load(cfg.base_url + "/guestbook_messages/" + offset, "", cb);
            };
            
            var self = this;
            self._nodes.msg_cont = $("#submissions");
            self._nodes.trigger = $("#loadTrigger");
            self._nodes.msgs_end = $("#guestbookMessagesEnd");
            
            var load_messages = function() {
                var old_offset = self._msg_load_offset;
                // create a new div to which insert loaded html,
                // append that div to the messages container
                self._nodes.msg_cont.append("<div data-loaded_set=\"" + old_offset + "\"></div>");
                var dest_node = self._nodes.msg_cont.children("[data-loaded_set=\"" + old_offset + "\"]").first();
                load_messages_data(old_offset, dest_node, function() {
                    self._msg_load_offset = self._nodes.msg_cont.find("[data-guestbook_message]").length; // update offset
                    if (old_offset === self._msg_load_offset) { // if no messages were received
                        self._nodes.trigger.hide();
                        self._nodes.msgs_end.removeClass("hidden");
                    }
                });
            };
            
            self._nodes.trigger.click(load_messages);
            load_messages();
        }
    };
}(jQuery);
