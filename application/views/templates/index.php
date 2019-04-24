<?php
if($this->uri->segment(1)=='email'){
    echo $content;
}else{
    echo $asset_head;
    echo $header;
    echo $breadcrumb;
    echo $content;
    echo $footer;
    echo $asset_footer;
}
?>