<?php
$loader = new \Phalcon\Loader();

/**
 * Register a set of directories taken from the configuration file
 */
$loader->registerDirs([
    APP_PATH . $config->application->controllersDir,
    APP_PATH . $config->application->pluginsDir,
    APP_PATH . $config->application->libraryDir,
    APP_PATH . $config->application->modelsDir,
    APP_PATH . $config->application->formsDir
]);

/**
 * Register Services class
 */
$loader->registerClasses([
    'Services' => APP_PATH . 'app/Services.php'
]);

/**
 * Register autoloader
 */
$loader->register();
