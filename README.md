# Waste4Change Official

/* INSTALLATIONS INSTRUCTION */

This system use CodeIgniter Framework version 3.1.2.

Change these constants parameter from index.php file

define('IS_ONLINE',0); // 0 for your local 1 for server 
define('HOST', 'https://localhost:8080'); //main server url change this to your localhost name and directory (ex: https://localhost:8080)  
define('DB_HOSTNAME', 'localhost'); //change this to your sql hostname  
define('DB_USERNAME', 'root'); //change this to your sql username  
define('DB_PASSWORD', ''); //change this to your sql password  
define('DB_DATABASE', 'w4c_dropbox_beta'); //change this to your sql database  

If session is not working and you use php version 7.1 or earlier change this parameter in system/libraries/session/session.php

preg_match('/^[0-9a-f]/{40&}/', $_COOKIE[$this->_config['cookie_name']]) into preg_match('/^[0-9a-f]/', $_COOKIE[$this->_config['cookie_name']])

If still not working call other developer: 081314444386 (Rangga)

