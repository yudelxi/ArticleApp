<?php

use Phalcon\Mvc\Controller;

/**
 * Class ControllerBase
 *
 * Base class for all controllers
 */
class ControllerBase extends Controller
{
    /**
     * Adds company name before any other title and render main template after layout
     */
    protected function initialize()
    {
        $this->tag->prependTitle('DTT | ');
        $this->view->setTemplateAfter('main');
    }

    /**
     * Puts every new line of a string in a HTML paragraph tag
     *
     * @param string $string
     * @return mixed
     */
    protected function nl2p($string)
    {
        $stringParts = explode("\n", $string);
        $string = '<p>' . implode('</p><p>', $stringParts) . '</p>';
        return str_replace("<p></p>", '', $string);
    }
}