<?php

// This is the database connection configuration.
return array(
	/*'connectionString' => 'sqlite:'.dirname(__FILE__).'/../data/testdrive.db',*/
	// uncomment the following lines to use a MySQL database
	
	'connectionString' => 'pgsql:host=192.168.1.1;dbname=twitter-clone',
	'emulatePrepare' => true,
	'username' => 'postgres',
	'password' => '123456',
	'charset' => 'utf8',
	
);
