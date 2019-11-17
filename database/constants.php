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
/*
FILE ACCESS
*/
define('FILE_READ_MODE', 0644);
define('FILE_WRITE_MODE', 0666);
define('DIR_READ_MODE', 0755);
define('DIR_WRITE_MODE', 0777);

define('IS_ONLINE', 1);
/*
WEBSITE PROPERTY
*/
define('APPNAME', 'Waste4Change');
define('APP_SLOGAN', 'Responsible Waste Management');
define('APP_DESCRIPTION', 'Waste4Change is a social enterprise that provide waste management services from upstream to downstream.');
define('APP_DESCRIPTION_ABOUT', 'Waste4Change is a social enterprise that provide waste management services from upstream to downstream. We give consultation and educate company/community about the importance of responsible waste management. We collect your waste with our responsible system and collaborate with our trusted partners to transform it into recycled materials');
define('APP_SESSION', 'w4c_poin_admin_');
define('APP_COOKIE', 'w4c_poin_admin_');
define('APP_VERSION', 'v3.1');
define('MODE', 'Dev');
define('VERSION', '1.0');
define('DEV_YEAR', '2019');
define('DUMMY_CUSTOMER_ID', 1);
define('DUMMY_IMAGE', 'dummy.png');
define('EMPTY_RECORD_TEXT', 'no active record');
define('BLANK_DATA', 'not available');
/*
WEBSITE URL
*/
define('HOST', 'https://localhost/w4c/');
define('W4C_URL', HOST.'official/');
define('SEND_YOUR_WASTE_URL', HOST.'sendyourwaste/');
define('DROPBOX_URL', HOST.'dropbox/');
define('POIN_URL', HOST.'poin/');
define('POIN_HOME_URL', POIN_URL.'home/');
define('POIN_ADES_URL', POIN_HOME_URL.'ades-plastic-currency/');
define('POIN_ADMIN_URL', POIN_URL.'admin/');
define('POIN_AGENT_URL', POIN_URL.'agent/');

define('SITE_URL', W4C_URL);
/*
DATABASE
*/
define('PREFIX_TABLE', '');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'w4c_official');
define('QUERY_RESULT', 'result');
define('QUERY_ROW', 'row');
define('QUERY_SHOW', 'query');
define('QUERY_COUNT', 'count');
define('TYPE_ADD', 'add');
define('TYPE_EDIT', 'edit');
define('TYPE_DELETE', 'delete');

/*
COMPANY PROPERTY
*/
define('OFFICIAL_ADDRESS', 'Vida Bumipala, Jl. Alun-alun Utara, Padurenan, Mustika Jaya, Kota Bekasi, Jawa Barat 17156');
define('OFFICIAL_TELEPHONE', '(021) 29372308');
define('OFFICIAL_MOBILE', '+6282330934564');
define('OFFICIAL_MAIL', 'contact@waste4change.com');
define('OFFICIAL_TECH_MAIL', 'tech.w4c@gmail.com');
define('OFFICIAL_NOREPLY_MAIL', 'noreply@waste4change.com');
define('OFFICIAL_NAME', APPNAME.' Support');
define('OFFICIAL_SLOGAN', 'Responsible Waste Management');
define('TRASHPAY_ID', 'Tp');
define('TRASHPOIN_ID', ' Poin');
define('APP_CURRENCY', 'Rp');
define('TRASH_PAY_DENOM', 10);
define('PHONE_AREA_ID', '+62');
define('PREFIX_ID', 'SM-');

define('FEMALE', 'Perempuan');
define('MALE', 'Laki-laki');
define('TRANSFER', 'Transfer');
define('CASH', 'Cash');
define('INDEX_TEMPLATE', 'index');
define('GENERAL_TEMPLATE', 'general');
define('BRAND_TEMPLATE', 'brand');
/*
TRANSACTION PROPERTY
*/
define('ACTIVITY_TOPUP', 'topup');
define('ACTIVITY_COLLECT', 'collect');
define('ACTIVITY_COLLECT_CASH', 'collect_cash');
define('ACTIVITY_COLLECT_DEPOSIT', 'collect_deposit');
define('ACTIVITY_WITHDRAW', 'withdraw');
define('ACTIVITY_SELL', 'sell');
define('ACTIVITY_SELL_CASH', 'sell_cash');
define('ACTIVITY_SELL_DEPOSIT', 'sell_deposit');
define('ACTIVITY_SELL_FEE', 'sell_fee');
define('ACTIVITY_ADES_BONUS', 'ades_bonus');
/*
ITEM
*/
define('TRANSACTION_TYPE_SELL', 'sell');
define('TRANSACTION_TYPE_COLLECT', 'collect');
/*
WALLET HISTORY
*/
define('FLOW_INCOMING', 'incoming');
define('FLOW_OUTGOING', 'outgoing');
/*
DIRECTORY
*/
define('DIR_IMG', 'assets/dist/img/');
define('DIR_SERVICE', 'assets/dist/img/service/');
define('DIR_ICON', 'assets/dist/img/icon/');
define('DIR_ILLU', 'assets/dist/img/illustrator/');
define('DIR_LOGO', 'assets/dist/img/logo/');
define('DIR_BG', 'assets/img/bg/');
define('DIR_UPLOAD_REKOMENDASI', './assets/dist/img/trash/recomendation');
define('DIR_UPLOAD_SELL', './assets/dist/img/trash/sell');
define('DIR_TRASH', 'assets/dist/img/trash/');
define('DIR_TRASH_PARENT', 'assets/dist/img/trash/parent/');
define('DIR_TRASH_CATEGORY', 'assets/dist/img/trash/category/');
define('DIR_VIDEO_SCENARIO', 'assets/dist/video/scenario/');
/*
NOMINAL LIMIT
*/
define('MIN_WITHDRAW', 50000);
define('MIN_TOPUP', 50000);
define('ADMIN_FEE', 2500);
/*
PROGRAM
*/
define('PROGRAM_ADES', 'ades-plastic-currency');
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
