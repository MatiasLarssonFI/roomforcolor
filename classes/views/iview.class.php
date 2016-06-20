<?php

namespace Views;


interface IView {
    /**
     * Writes the view to STDOUT.
     */
    public function render();
}
