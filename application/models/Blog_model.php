<?php

	/**
	 * Created by PhpStorm.
	 * User: Dellicious
	 * Date: 11/10/2016
	 * Time: 3:12 PM
	 */
	class Blog_model extends CI_Model
	{
		function __construct()
		{
			// Call the Model constructor
			parent::__construct();
		}

		function get_blog()
		{
			$blogdb = $this->load->database('blogdb', TRUE);

			$query = $blogdb->query('SELECT post_name as blog_url,post_title as blog_title,post_excerpt,post_content, display_name as blog_author,post_date as blog_date,
(SELECT guid from w4c_posts as posts WHERE post_type="attachment" AND ID=(
SELECT meta_value from w4c_postmeta as meta WHERE post_id=w4c_posts.ID AND meta_key="_thumbnail_id" limit 1
) limit 1) as blog_image
from w4c_posts
LEFT JOIN w4c_users ON w4c_posts.post_author=w4c_users.ID
WHERE post_type="post" AND post_parent=0 AND post_status="publish"
ORDER BY post_date DESC limit 3');
			return $query->result();
		}
	}


?>
