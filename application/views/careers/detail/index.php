<style>
  ul.list-blue {
    list-style: none;
  }

  ul.list-blue li::before {
    content: "";
    font-weight: 900;
    display: inline-block;
    width: 0.7em;
    height: 0.7em;
    margin-right: 2.2em;
    margin-left: -2.9em;
    background: #17A2B8;
    border-radius: 10px;
  }
</style>
<?php
$this->load->view('careers/detail/search_bar');
$this->load->view('careers/detail/description');
$this->load->view('careers/detail/related_job');
$this->load->view('careers/detail/js');

?>
<!-- <script type="text/javascript">
  (function() {
    var jQuery;
    if (window.jQuery === undefined || window.jQuery.fn.jquery !== "1.4.2") {
      var script_tag = document.createElement("script");
      script_tag.setAttribute("type", "text/javascript");
      script_tag.setAttribute("src", "https://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js");
      if (script_tag.readyState) {
        script_tag.onreadystatechange = function() {
          if (this.readyState == "complete" || this.readyState == "loaded") {
            scriptLoadHandler();
          }
        };
      } else {
        script_tag.onload = scriptLoadHandler;
      }(document.getElementsByTagName("head")[0] || document.documentElement).appendChild(script_tag);
    } else {
      jQuery = window.jQuery;
      main();
    }

    function scriptLoadHandler() {
      jQuery = window.jQuery.noConflict(true);
      main();
    }

    function main() {
      jQuery(document).ready(function($) {
        var jsonp_url = "https://rapi.talenta.co/v1/recruitment/companies/waste4change";
        $.getJSON(jsonp_url, function(data) {
          var row = "";
          for (i = 0; i < data.job.length; i++) {
            console.log(data.job[i]);
            row += "<p style=padding:15px;text-decoration:underline;><a href=https://recruitment.talenta.co/waste4change/" + data.job[i].job_id + " target=_blank>" + data.job[i].position_name + "</a></p>";
          }
          $("#jobs").append(row);
        });
      });
    }
  })();
</script>  -->
<!--place this div to place you want -->
<!-- <div id="jobs" style="border:2px solid #e1e1e1;position:relative;">
  <p style="text-align:center;text-align: center;bottom: 0;position: absolute;right: 0;left: 0;">Powered by : Talenta</p>
</div>

<iframe src="<?=$job->talentaUrl?>" frameborder="0"></iframe> -->