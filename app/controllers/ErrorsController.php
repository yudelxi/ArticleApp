<?php

/**
 * Class ErrorsController
 *
 * Manages errors
 */
class ErrorsController extends ControllerBase
{
    /**
     * Executes initialize method from ControllerBase
     */
    public function initialize()
    {
        parent::initialize();
    }

    /**
     * Shows 401 error page
     */
    public function show401Action()
    {
        $this->tag->setTitle('Error: 401');
    }

    /**
     * Shows 404 error page
     */
    public function show404Action()
    {
        $this->tag->setTitle('Error: 404');
    }

    /**
     * Shows 500 error page
     */
    public function show500Action()
    {
        $this->tag->setTitle('Error: 500');
    }
}
