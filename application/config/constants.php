<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
|--------------------------------------------------------------------------
| File and Directory Modes
|--------------------------------------------------------------------------
|
| These prefs are used when checking and setting modes when working
| with the file system.  The defaults are fine on servers with proper
| security, but you may wish (or even need) to change the values in
| certain environments (Apache running a separate process for each
| user, PHP under CGI with Apache suEXEC, etc.).  Octal values should
| always be used to set the mode correctly.
|
*/
define('FILE_READ_MODE', 0644);
define('FILE_WRITE_MODE', 0666);
define('DIR_READ_MODE', 0755);
define('DIR_WRITE_MODE', 0777);

define('TRASHPAY_ID', 'Tp');
define('TRASH_PAY_DENOM', 10);

define('IS_ONLINE', 1);

define('OFFICIAL_ADDRESS', 'Vida Bumipala, Jl. Alun-alun Utara, Padurenan, Mustika Jaya, Kota Bekasi, Jawa Barat 17156');
define('OFFICIAL_TELEPHONE', '(021) 29372308');
define('OFFICIAL_MOBILE', '+6285655652970');

define('APP_CURRENCY', 'Rp');

define('APP_NAME', 'Waste4Change');
define('PHONE_AREA_ID', '+62');
define('PREFIX_ID', 'SM-');
define('APP_SLOGAN', 'Responsible Waste Management');
define('APP_DESCRIPTION', 'Waste4Change is a social enterprise that provide waste management services from upstream to downstream.');
define('APP_DESCRIPTION_ABOUT', 'Waste4Change is a social enterprise that provide waste management services from upstream to downstream. We give consultation and educate company/community about the importance of responsible waste management. We collect your waste with our responsible system and collaborate with our trusted partners to transform it into recycled materials');
define('OFFICIAL_MAIL', 'contact@waste4change.com');
define('OFFICIAL_NOREPLY_MAIL', 'noreply@sampahmuda.com');
define('OFFICIAL_NAME', APP_NAME.' Support');
define('MODE', 'Dev');
define('VERSION', '1.0');
define('DEV_YEAR', '2020');

define('DUMMY_CUSTOMER_ID', 1);
define('DUMMY_IMAGE', 'dummy.png');
define('EMPTY_RECORD_TEXT', 'no active record');
define('BLANK_DATA', 'not available');
//Template Code
define('INDEX_TEMPLATE', 'index');
define('GENERAL_TEMPLATE', 'general');
define('BRAND_TEMPLATE', 'brand');
/*
WEBSITE URL
*/

define('W4C_URL', HOST.'official/');
define('SEND_YOUR_WASTE_URL', HOST.'sendyourwaste/');
define('DROPBOX_URL', HOST.'dropbox/');
define('POIN_URL', HOST.'poin/');
define('POIN_HOME_URL', POIN_URL.'home/');
define('POIN_ADES_URL', POIN_HOME_URL.'sinergi-ades-niat-murni-dan-gojek');
define('POIN_ADMIN_URL', POIN_URL.'home/');
define('POIN_AGENT_URL', POIN_URL.'agent/');

define('SITE_URL', W4C_URL);
/*
DATABASE
*/
define('QUERY_RESULT', 'result');
define('QUERY_ROW', 'row');
define('QUERY_SHOW', 'query');
define('QUERY_COUNT', 'count');
define('TYPE_ADD', 'add');
define('TYPE_EDIT', 'edit');
define('TYPE_DELETE', 'delete');
/*
DIRECTORY
*/
define('DIR_IMG', 'assets/img/');
define('DIR_PROJECT', DIR_IMG.'project/');
define('DIR_ICON', DIR_IMG.'icons/');
define('DIR_ILLU', DIR_IMG.'illustrator/');
define('DIR_SERVICE', DIR_IMG.'service/');
define('DIR_LOGO', DIR_IMG.'logo/');
define('DIR_BG', DIR_IMG.'bg/');
/*
|--------------------------------------------------------------------------
| File Stream Modes
|--------------------------------------------------------------------------
|
| These modes are used when working with fopen()/popen()
|
*/

define('FOPEN_READ',							'rb');
define('FOPEN_READ_WRITE',						'r+b');
define('FOPEN_WRITE_CREATE_DESTRUCTIVE',		'wb'); // truncates existing file data, use with care
define('FOPEN_READ_WRITE_CREATE_DESTRUCTIVE',	'w+b'); // truncates existing file data, use with care
define('FOPEN_WRITE_CREATE',					'ab');
define('FOPEN_READ_WRITE_CREATE',				'a+b');
define('FOPEN_WRITE_CREATE_STRICT',				'xb');
define('FOPEN_READ_WRITE_CREATE_STRICT',		'x+b');


/* End of file constants.php */
/* Location: ./application/config/constants.php */
