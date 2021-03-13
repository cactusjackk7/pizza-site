<?php

include 'index.html';

require( __DIR__ . '/vendor/autoload.php' );

$cookie = new \Overclokk\Cookie\Cookie( $_COOKIE );

$cookie_name = 'cookie_name';

$cookie_value = $cookie->get( $cookie_name );

var_dump( $cookie_value === $_COOKIE[ $cookie_name ] );!

?>
