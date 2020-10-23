<?php

use Phalcon\Mvc\Model;

/**
 * Class Users
 */
class Users extends Model
{
    /**
     * @var integer
     */
    public $id;

    /**
     * @var string
     */
    public $username;

    /**
     * @var string
     */
    public $password;
}
