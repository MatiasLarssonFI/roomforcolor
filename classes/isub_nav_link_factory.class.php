<?php


interface ISubNavLinkFactory {
    
    /**
     * Returns the sub nav links.
     * 
     * @param string $action
     * @param string[] $params
     * 
     * @return NavLink[]
     */
    public function get_sub_nav_links($action, array $params);
}
