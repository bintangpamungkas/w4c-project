<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Example use of the CodeIgniter Sitemap Generator Model
 * 
 * @author Gerard Nijboer <me@gerardnijboer.com>
 * @version 1.0
 * @access public
 *
 */
class Sitemap extends CI_Controller {

	public function makeSitemap() {

       // APPPATH will automatically figure out the correct path
       include APPPATH.'libraries/SitemapPHP/Sitemap.php';

       // your website url
       $sitemap = new Sitemap('https://waste4change.com/official/');

       // This will also need to be set by you. 
       // the full server path to the sitemap folder 
       $sitemap->setPath('/home/username/public_html/sitemap/');

       // the name of the file that is being written to
       $sitemap->setFilename('mysitemap');

       // etc etc etc 

	} 
}