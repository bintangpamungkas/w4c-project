<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

$route['default_controller'] = "Site/index";
$route['join'] = "Site/join";
$route['join_as_brand'] = "Site/join_as_brand";
$route['service'] = "Service/index";
$route['contact'] = "Site/contact";
$route['about'] = "Site/about";
$route['id'] = "Site/id";
$route['en'] = "Site/en";
$route['research'] = "Research/index";
$route['research/data'] = "Research/getData";
$route['research/(:any)'] = "Research/detail/$1";
$route['service/(:any)'] = "Service/detail/$1";
$route['service/(:any)/join'] = "Service/join/$1";
$route['project/(:any)'] = "Service/detail/$1";
$route['(:any)'] = "Brand/index/$1";

$route['trial_form/(:any)'] = "Site/trial_form/$1";
$route['(:any)'] = "Brand/index/$1";

//error_page
$route['404_override'] = '';
//$route['404_override'] = 'My404';
//$route['errorasasd'] = 'Site/page_404';